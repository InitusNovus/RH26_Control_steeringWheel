/*====================================================================
* Project:  examples
* Function: AppKit-TC2xx low level Graphic LCD (320x240 pixels) functions
*
* Copyright HighTec EDV-Systeme GmbH 1982-2015
*====================================================================*/

#include <stdlib.h>
#include <string.h>
#include <machine/wdtcon.h>

/*
#include "tc_inc_path.h"

#include TC_INCLUDE(TCPATH/IfxPort_reg.h)
#include TC_INCLUDE(TCPATH/IfxQspi_reg.h)
#include TC_INCLUDE(TCPATH/IfxQspi_bf.h)
*/

#include "IfxPort_reg.h"
#include "IfxQspi_reg.h"
#include "IfxQspi_bf.h"

#include "system_tc2x.h"
#include "glcd.h"
#include "font.h"

#include "bsp.h"

/* delay in ms units */
//extern void Delay(unsigned int time);
#define Delay(msTime)	waitTime(msTime*TimeConst_1ms)

/*********************** Hardware specific configuration **********************/


/*---------------------- Graphic LCD size definitions ------------------------*/

#define WIDTH		LCD_WIDTH			/* Screen Width (in pixels)           */
#define HEIGHT		LCD_HEIGHT			/* Screen Height (in pixels)          */
#define BPP			16					/* Bits per pixel                     */
#define BYPP		((BPP+7)/8)			/* Bytes per pixel                    */

/*--------------- Graphic LCD interface hardware definitions -----------------*/

/*
	LCD is connected to QSPI0 interface

	Port	Function	Type	Note
	P20.3	SLSO09		O	Touch Chip Select
	P20.6	SLSO08		O	CPLD Chip Select
	P20.11	SCLK0		O	Serial Clock
	P20.12	MRST0A		I	Master Receive Slave Transmit
	P20.14	MTSR0		O	Master Transmit Slave Receive
	P20.13	BGL			O	background light

	remarks: accessing LCD controller through serial interface
	command byte: bit7=R/W,bit6=RS,bits5:0=cmd reg
	RS	R/W	function
	0	0	set an index register
	0	1	read a status
	1	0	write a register or GRAM data
	1	1	read a register or GRAM data

	remarks: using a CPLD for serial (SPI) to parallel (LCD) conversion
	bit9=R/W,bit8=E/S (endless | single transfer)
 */

/* definition of used chip selects */
#define CS_CPLD				8
#define CS_TOUCH			9
#define CS_NONE				15

/* error flag bits in STATUS and FLAGSCLEAR */
#define QSPI_ERROR_PE		(1 << 0)	/* Parity Error */
#define QSPI_ERROR_UCE		(1 << 1)	/* unexpected Configuration Error */
#define QSPI_ERROR_BRE		(1 << 2)	/* Baud Rate Error */
#define QSPI_ERROR_TXOVF	(1 << 3)	/* TXFIFO Overflow */
#define QSPI_ERROR_TXUNF	(1 << 4)	/* TXFIFO Underflow */
#define QSPI_ERROR_RXOVF	(1 << 5)	/* RXFIFO Overflow */
#define QSPI_ERROR_RXUNF	(1 << 6)	/* RXFIFO Underflow */
#define QSPI_ERROR_EXPECT	(1 << 7)	/* Expect Timeout error */
#define QSPI_ERROR_SE		(1 << 8)	/* SLSI misplaced inactivation */


/* LCD controller IDs */
#define ID_SPFD5408B		0x5408
#define ID_ILI9320			0x9320
#define ID_ILI9325			0x9325
#define ID_ILI9341			0x9341

/*---------------------------- Global variables ------------------------------*/

/******************************************************************************/
static unsigned short TextColor = COLOR_BLACK;
static unsigned short BackColor = COLOR_WHITE;
static unsigned short DriverCode;


/************************ Local auxiliary functions ***************************/

/* initialisation of QSPI0 interface */
static void init_qspi0(void)
{
	unlock_wdtcon();				/* remove ENDINIT protection */
	QSPI0_CLC.U = 0x0;				/* activate module */
	(void)QSPI0_CLC.U;				/* read back to get effective */
	P20_PDR0.U = 0x00000000;		/* fast speed (all pins) */
	P20_PDR1.U = 0x00080000;		/* MRST0 at TTL level */
	lock_wdtcon();					/* re-enable ENDINIT protection */

	/* configure port pins */
	P20_IOCR0.B.PC3 = 0x13;			/* SLSO09 (touch) */
	P20_IOCR4.B.PC6 = 0x13;			/* SLSO08 (LCD) */
	P20_IOCR8.B.PC11 = 0x13;		/* SCLK0 */
	P20_IOCR12.B.PC14 = 0x13;		/* MTSR0 */

	/* program QSPI0 parameters */
	QSPI0_GLOBALCON.U	= (15 << IFX_QSPI_GLOBALCON_EXPECT_OFF)
						| (1 << IFX_QSPI_GLOBALCON_SI_OFF);
	QSPI0_GLOBALCON1.U	= (4 << IFX_QSPI_GLOBALCON1_PT1_OFF)
						| (1 << IFX_QSPI_GLOBALCON1_USREN_OFF)
						| (1 << IFX_QSPI_GLOBALCON1_PT2EN_OFF)
						| (1 << IFX_QSPI_GLOBALCON1_PT1EN_OFF)
						| (1 << IFX_QSPI_GLOBALCON1_RXEN_OFF)
						| (1 << IFX_QSPI_GLOBALCON1_TXEN_OFF)
						| (0x7F << IFX_QSPI_GLOBALCON1_ERRORENS_OFF);
	/* enable SLSO08+SLSO09, low active */
	QSPI0_SSOC.U = ((3 << 8) << IFX_QSPI_SSOC_OEN_OFF);
	/* configure individual chip select timings */
	/* LCD: 50 MHz ==> 20ns SCLK: Q=1,A=2,B=2,C=0 */
#if 0
	QSPI0_ECON0.U = (0 << IFX_QSPI_ECON_C_OFF)
#else
	/* without this polarity selected reading from TFT does not work correctly */
	QSPI0_ECON0.U = (1 << IFX_QSPI_ECON_CPOL_OFF)
				  | (0 << IFX_QSPI_ECON_C_OFF)
#endif
				  | (2 << IFX_QSPI_ECON_B_OFF)
				  | ((2 - 1) << IFX_QSPI_ECON_A_OFF)
				  | ((1 - 1) << IFX_QSPI_ECON_Q_OFF);
	/* Touch: 2 MHz ==> 500ns SCLK: Q=25,A=2,B=1,C=1 */
	QSPI0_ECON1.U = (1 << IFX_QSPI_ECON_C_OFF)
				  | (1 << IFX_QSPI_ECON_B_OFF)
				  | ((2 - 1) << IFX_QSPI_ECON_A_OFF)
				  | ((25 - 1) << IFX_QSPI_ECON_Q_OFF);
	/* used to release endless mode of LCD */
	/* 50 MHz ==> 20ns SCLK: Q=1,A=2,B=1,C=1 */
	QSPI0_ECON7.U = (1 << IFX_QSPI_ECON_C_OFF)
				  | (1 << IFX_QSPI_ECON_B_OFF)
				  | ((2 - 1) << IFX_QSPI_ECON_A_OFF)
				  | ((1 - 1) << IFX_QSPI_ECON_Q_OFF);
	QSPI0_GLOBALCON.B.EN = 1;		/* ... and enable the module */
}


/* write command to LCD and start an endless transfer */
static void wr_cmd_endless(unsigned int cmd)
{
	/* we need 3 free entries */
	while (QSPI0_STATUS.B.TXFIFOLEVEL > (4 - 3))
		;
	QSPI0_BACONENTRY.U	= (CS_CPLD << IFX_QSPI_BACON_CS_OFF)
						| (IFX_QSPI_BACON_MSB_MSK << IFX_QSPI_BACON_MSB_OFF)
						| ((10-1) << IFX_QSPI_BACON_DL_OFF)
						| (1 << IFX_QSPI_BACON_LEAD_OFF);
	/* start an endless transfer */
	QSPI0_DATAENTRY0.U	= (1 << 8) | cmd;
	/* configure size for endless data transfer */
	QSPI0_MIXENTRY.U	= (CS_CPLD << IFX_QSPI_BACON_CS_OFF)
						| (IFX_QSPI_BACON_MSB_MSK << IFX_QSPI_BACON_MSB_OFF)
						| ((16-1) << IFX_QSPI_BACON_DL_OFF)
						| (1 << IFX_QSPI_BACON_LEAD_OFF);
}

/* write data to LCD in endless transfer mode */
static void wr_dat_endless(unsigned int c)
{
	/* we need 1 free entry */
	while (QSPI0_STATUS.B.TXFIFOLEVEL > (4 - 1))
		;
	QSPI0_MIXENTRY.U = c;
}


/* terminate an endless data transfer to|from LCD */
static void wr_end_transfer(void)
{
	/* we need 4 free entries */
	while (QSPI0_STATUS.B.TXFIFOLEVEL > (4 - 4))
		;
	QSPI0_BACONENTRY.U	= (CS_CPLD << IFX_QSPI_BACON_CS_OFF)
						| (IFX_QSPI_BACON_MSB_MSK << IFX_QSPI_BACON_MSB_OFF)
						| ((16-1) << IFX_QSPI_BACON_DL_OFF)
						| (1 << IFX_QSPI_BACON_LEAD_OFF)
						| (IFX_QSPI_BACON_LAST_MSK << IFX_QSPI_BACON_LAST_OFF);
	QSPI0_DATAENTRY0.U	= 0;
	/* switch to dummy chip select */
	QSPI0_BACONENTRY.U	= (CS_NONE << IFX_QSPI_BACON_CS_OFF)
						| (IFX_QSPI_BACON_MSB_MSK << IFX_QSPI_BACON_MSB_OFF)
						| ((9-1) << IFX_QSPI_BACON_DL_OFF)
						| (1 << IFX_QSPI_BACON_LEAD_OFF)
						| (IFX_QSPI_BACON_LAST_MSK << IFX_QSPI_BACON_LAST_OFF);
	QSPI0_DATAENTRY0.U	= 0;

	/* wait until all data received */
	while (QSPI0_STATUS.B.RXFIFOLEVEL != 4)
		;

	/* ... and read and discard the data */
	(void)QSPI0_RXEXIT.U;
	(void)QSPI0_RXEXIT.U;
	(void)QSPI0_RXEXIT.U;
	(void)QSPI0_RXEXIT.U;
}

/* write LCD register <reg> with <value> */
static void wr_reg(unsigned int reg, unsigned int val)
{
	/* we need 2 free entries */
	while (QSPI0_STATUS.B.TXFIFOLEVEL > (4 - 2))
		;
	QSPI0_BACONENTRY.U	= (CS_CPLD << IFX_QSPI_BACON_CS_OFF)
						| (IFX_QSPI_BACON_MSB_MSK << IFX_QSPI_BACON_MSB_OFF)
						| ((32-1) << IFX_QSPI_BACON_DL_OFF)
						| (1 << IFX_QSPI_BACON_LEAD_OFF)
						| (IFX_QSPI_BACON_LAST_MSK << IFX_QSPI_BACON_LAST_OFF);
	QSPI0_DATAENTRY0.U	= (reg << 22) | (val << 6);
}


/* read from LCD register <reg> */
static unsigned short rd_reg(unsigned int reg)
{
	unsigned int data;

	/* remove any old stuff from RXFIFO */
	/* read RXFIFO until empty */
	while (QSPI0_STATUS.B.RXFIFOLEVEL != 0)
	{
		(void)QSPI0_RXEXIT.U;
	}
	/* check for RXFIFO overflow and clear this error */
	data = QSPI0_STATUS.B.ERRORFLAGS & QSPI_ERROR_RXOVF;
	if (data)
	{
		QSPI0_FLAGSCLEAR.U = data;
	}

	/* we need 4 free entries */
	while (QSPI0_STATUS.B.TXFIFOLEVEL > (4 - 4))
		;
	/* we need 16 bit for setting the register */
	QSPI0_BACONENTRY.U	= (CS_CPLD << IFX_QSPI_BACON_CS_OFF)
						| (IFX_QSPI_BACON_MSB_MSK << IFX_QSPI_BACON_MSB_OFF)
						| ((16-1) << IFX_QSPI_BACON_DL_OFF)
						| (1 << IFX_QSPI_BACON_LEAD_OFF);
	/* mark as read register */
	QSPI0_DATAENTRY0.U	= ((1 << 9) | reg) << 6;
	/* we need 26 clocks for reading the data */
	QSPI0_BACONENTRY.U	= (CS_CPLD << IFX_QSPI_BACON_CS_OFF)
						| (IFX_QSPI_BACON_MSB_MSK << IFX_QSPI_BACON_MSB_OFF)
						| ((26-1) << IFX_QSPI_BACON_DL_OFF)
						| (1 << IFX_QSPI_BACON_LEAD_OFF)
						| (IFX_QSPI_BACON_LAST_MSK << IFX_QSPI_BACON_LAST_OFF);
	QSPI0_DATAENTRY0.U	= 0;

	/* wait until all data received */
	while (QSPI0_STATUS.B.RXFIFOLEVEL != 4)
		;

	/* ... and read the data */
	(void)QSPI0_RXEXIT.U;
	(void)QSPI0_RXEXIT.U;
	data = QSPI0_RXEXIT.U;
	(void)QSPI0_RXEXIT.U;

	return (unsigned short)data;
}

/* read from LCD register <reg> in endless transfer mode */
static unsigned short rd_reg_endless(unsigned int reg)
{
	unsigned int data;

	/* we need 4 free entries */
	while (QSPI0_STATUS.B.TXFIFOLEVEL > (4 - 4))
		;
	/* we need 16 bit for setting the register */
	QSPI0_BACONENTRY.U	= (CS_CPLD << IFX_QSPI_BACON_CS_OFF)
						| (IFX_QSPI_BACON_MSB_MSK << IFX_QSPI_BACON_MSB_OFF)
						| ((16-1) << IFX_QSPI_BACON_DL_OFF)
						| (1 << IFX_QSPI_BACON_LEAD_OFF);
	/* mark as read register in endless mode */
	QSPI0_DATAENTRY0.U	= ((1 << 9) | (1 << 8) | reg) << 6;
	/* we need 10 clocks for reading the data + 16 for skipping first dummy */
	QSPI0_BACONENTRY.U	= (CS_CPLD << IFX_QSPI_BACON_CS_OFF)
						| (IFX_QSPI_BACON_MSB_MSK << IFX_QSPI_BACON_MSB_OFF)
						| ((26-1) << IFX_QSPI_BACON_DL_OFF)
						| (1 << IFX_QSPI_BACON_LEAD_OFF);
	QSPI0_DATAENTRY0.U	= 0;

	/* wait until all data received */
	while (QSPI0_STATUS.B.RXFIFOLEVEL != 4)
		;

	/* ... and read the data */
	(void)QSPI0_RXEXIT.U;
	(void)QSPI0_RXEXIT.U;
	data = QSPI0_RXEXIT.U;
	(void)QSPI0_RXEXIT.U;

	return (unsigned short)data;
}


/* read data from LCD in endless transfer mode */
static unsigned short rd_dat_endless(void)
{
	unsigned int data;

	/* we need 2 free entries */
	while (QSPI0_STATUS.B.TXFIFOLEVEL > (4 - 2))
		;
	/* we need 16 bit for setting the register */
	QSPI0_BACONENTRY.U	= (CS_CPLD << IFX_QSPI_BACON_CS_OFF)
						| (IFX_QSPI_BACON_MSB_MSK << IFX_QSPI_BACON_MSB_OFF)
						| ((16-1) << IFX_QSPI_BACON_DL_OFF)
						| (1 << IFX_QSPI_BACON_LEAD_OFF);
	/* no data */
	QSPI0_DATAENTRY0.U	= 0;

	/* wait until all data received */
	while (QSPI0_STATUS.B.RXFIFOLEVEL != (4 - 2))
		;

	/* ... and read the data */
	data = QSPI0_RXEXIT.U;
	(void)QSPI0_RXEXIT.U;

	return (unsigned short)data;
}

/* read ID code of LCD controller */
static unsigned short get_id_code(void)
{
	/* start with reg 0 (returns ID for ILI932x) */
	unsigned short id = rd_reg(0x00);

	if (0 == id)
	{
		/* try special test for ILI9341 */
		unsigned short temp;
		/* Read ID4 register: first byte returned is ignored */
		(void)rd_reg_endless(0xD3);
		temp = rd_dat_endless();
		if (0 == temp)
		{
			temp = rd_dat_endless();
			id = (temp & 0xFF) << 8;
			temp = rd_dat_endless();
			id |= (temp & 0xFF);
		}
		/* finish endless transfer mode */
		wr_end_transfer();
	}

	return id;
}


/************************** Local functions ***********************************/

static void glcd_set_position(unsigned int x, unsigned int y)
{
	if (ID_ILI9341 == DriverCode)
	{
		wr_cmd_endless(0x2B);	/* Page Address Set: only start is set */
		wr_dat_endless(x >> 8);
		wr_dat_endless(x);
		wr_end_transfer();
		wr_cmd_endless(0x2A);	/* Column Address Set: only start is set */
		wr_dat_endless(y >> 8);
		wr_dat_endless(y);
		wr_end_transfer();
	}
	else
	{
		wr_reg(0x20, x);
		wr_reg(0x21, y);
	}
}

static void glcd_start_GRAM_write(void)
{
	if (ID_ILI9341 == DriverCode)
	{
		wr_cmd_endless(0x2C);	/* Memory Write */
	}
	else
	{
		wr_cmd_endless(0x22);
	}
}

static void glcd_set_graph_window(unsigned int x0, unsigned int x1, unsigned int y0, unsigned int y1)
{
	if (ID_ILI9341 == DriverCode)
	{
		wr_cmd_endless(0x2B);	/* Page Address Set */
		wr_dat_endless(x0 >> 8);
		wr_dat_endless(x0);
		wr_dat_endless(x1 >> 8);
		wr_dat_endless(x1);
		wr_end_transfer();
		wr_cmd_endless(0x2A);	/* Column Address Set */
		wr_dat_endless(y0 >> 8);
		wr_dat_endless(y0);
		wr_dat_endless(y1 >> 8);
		wr_dat_endless(y1);
		wr_end_transfer();
	}
	else
	{
		wr_reg(0x50, x0);		/* Horizontal GRAM Start Address */
		wr_reg(0x51, x1);		/* Horizontal GRAM End   Address */
		wr_reg(0x52, y0);		/* Vertical   GRAM Start Address */
		wr_reg(0x53, y1);		/* Vertical   GRAM End   Address */
	}
}

/************************ Exported functions **********************************/

/*******************************************************************************
* Initialise the Graphic LCD controller                                        *
*   Parameter:                                                                 *
*   Return:                                                                    *
*******************************************************************************/
void GLCD_init(void)
{
	/* prepare LCD background light pin */
	P20_OUT.B.P13 = 0;			/* OFF */
	P20_IOCR12.B.PC13 = 0x10;	/* set as GPIO output */

	/* initialise QSPI0 interface */
	init_qspi0();

	Delay(50);				/* Delay 50 ms */

	/* read driver code */
	DriverCode = get_id_code();

	if (ID_ILI9341 == DriverCode)
	{
		/************* Start Initial Sequence **********/
		wr_cmd_endless(0xCF);
		wr_dat_endless(0x00);
		wr_dat_endless(0x83);
		wr_dat_endless(0x30);
		wr_end_transfer();

		wr_cmd_endless(0xED);
		wr_dat_endless(0x64);
		wr_dat_endless(0x03);
		wr_dat_endless(0x12);
		wr_dat_endless(0x81);
		wr_end_transfer();

		wr_cmd_endless(0xE8);
		wr_dat_endless(0x85);
		wr_dat_endless(0x00);
		wr_dat_endless(0x78);
		wr_end_transfer();

		wr_cmd_endless(0xCB);
		wr_dat_endless(0x39);
		wr_dat_endless(0x2C);
		wr_dat_endless(0x00);
		wr_dat_endless(0x34);
		wr_dat_endless(0x02);
		wr_end_transfer();

		wr_cmd_endless(0xF7);
		wr_dat_endless(0x20);
		wr_end_transfer();

		wr_cmd_endless(0xEA);
		wr_dat_endless(0x00);
		wr_dat_endless(0x00);
		wr_end_transfer();

		wr_cmd_endless(0xC0);	/* Power Control 1 */
		wr_dat_endless(0x19);	/* VRH[5:0] */
		wr_end_transfer();

		wr_cmd_endless(0xC1);	/* Power Control 2 */
		wr_dat_endless(0x11);	/* BT[2:0] */
		wr_end_transfer();

		wr_cmd_endless(0xC5);	/* VCOM Control 1 */
		wr_dat_endless(0x3C);	/* VMH[6:0] */
		wr_dat_endless(0x3F);	/* VML[6:0] */
		wr_end_transfer();

		wr_cmd_endless(0xC7);	/* VCOM Control 2 */
		wr_dat_endless(0x90);	/* VMF[6:0] */
		wr_end_transfer();

		wr_cmd_endless(0x36);	/* Memory Access Control */
		wr_dat_endless(0x28);	/* MV=1; BGR=1 */
		wr_end_transfer();

		wr_cmd_endless(0x3A);	/* Pixel Format Set */
		wr_dat_endless(0x55);	/* DPI[2:0]=5; DBI[2:0]=5 (16 bit) */
		wr_end_transfer();

		wr_cmd_endless(0xB1);	/* Frame Control (normal mode) */
		wr_dat_endless(0x00);	/* DIVA[1:0] */
		wr_dat_endless(0x17);	/* RTNA[4:0] */
		wr_end_transfer();

		wr_cmd_endless(0xB6);	/* Display Function Control */
		wr_dat_endless(0x0A);	/* PTG[1:0]=2;PT[1:0]=2 */
		wr_dat_endless(0xA2);	/* REV=1,GS=0,SS=1,SM=0,ISC[3:0]=2 */
		wr_end_transfer();

		wr_cmd_endless(0xF6);	/* Interface Control */
		wr_dat_endless(0x01);	/* WEMODE=1 */
		wr_dat_endless(0x30);	/* EPF[1:0]=3; MDT[1:0]=0 */
		wr_end_transfer();

		wr_cmd_endless(0xF2);	/* Gamma Function Disable (??) */
		wr_dat_endless(0x00);
		wr_end_transfer();

		wr_cmd_endless(0x26);	/* Gamma Set */
		wr_dat_endless(0x01);	/* GC[7:0] */
		wr_end_transfer();

		wr_cmd_endless(0xE0);	/* Positive Gamma Correction */
		wr_dat_endless(0x0F);
		wr_dat_endless(0x26);
		wr_dat_endless(0x22);
		wr_dat_endless(0x0A);
		wr_dat_endless(0x10);
		wr_dat_endless(0x0A);
		wr_dat_endless(0x4C);
		wr_dat_endless(0xCA);
		wr_dat_endless(0x36);
		wr_dat_endless(0x00);
		wr_dat_endless(0x15);
		wr_dat_endless(0x00);
		wr_dat_endless(0x10);
		wr_dat_endless(0x10);
		wr_dat_endless(0x00);
		wr_end_transfer();

		wr_cmd_endless(0xE1);	/* Negative Gamma Correction */
		wr_dat_endless(0x00);
		wr_dat_endless(0x19);
		wr_dat_endless(0x1B);
		wr_dat_endless(0x05);
		wr_dat_endless(0x0F);
		wr_dat_endless(0x05);
		wr_dat_endless(0x33);
		wr_dat_endless(0x35);
		wr_dat_endless(0x49);
		wr_dat_endless(0x0F);
		wr_dat_endless(0x1F);
		wr_dat_endless(0x0F);
		wr_dat_endless(0x3F);
		wr_dat_endless(0x3F);
		wr_dat_endless(0x0F);
		wr_end_transfer();

		/* set graphic window dimensions */
		glcd_set_graph_window(0, (HEIGHT-1), 0, (WIDTH-1));

		wr_cmd_endless(0x11);	/* Exit Sleep */
		wr_end_transfer();

		Delay(120);				/* Delay 120 ms */

		wr_cmd_endless(0x29);	/* Displa ON */
		wr_end_transfer();
	}
	else if ((ID_ILI9320 == DriverCode) || (ID_ILI9325 == DriverCode))
	{
		/* Start Initial Sequence ------------------------------------------------*/
		wr_reg(0x00, 0x0001);				/* Start internal OSC                 */
		wr_reg(0x01, 0x0100);				/* Set SS bit                         */
		wr_reg(0x02, 0x0700);				/* Set 1 line inversion               */
		wr_reg(0x03, 0x1028);				/* Set GRAM write direction and BGR=1 */
		wr_reg(0x04, 0x0000);				/* Resize register                    */
		wr_reg(0x08, 0x0202);				/* 2 lines each, back and front porch */
		wr_reg(0x09, 0x0000);				/* Set non-disp area refresh cyc ISC  */
		wr_reg(0x0A, 0x0000);				/* FMARK function                     */
		wr_reg(0x0C, 0x0000);				/* RGB interface setting              */
		wr_reg(0x0D, 0x0000);				/* Frame marker Position              */
		wr_reg(0x0F, 0x0000);				/* RGB interface polarity             */

		/* Power On sequence -----------------------------------------------------*/
		wr_reg(0x10, 0x0000);				/* Reset Power Control 1              */
		wr_reg(0x11, 0x0000);				/* Reset Power Control 2              */
		wr_reg(0x12, 0x0000);				/* Reset Power Control 3              */
		wr_reg(0x13, 0x0000);				/* Reset Power Control 4              */
		Delay(200);							/* Discharge cap power voltage (200ms)*/
		wr_reg(0x10, 0x0080);				/* SAP, BT[3:0], AP, DSTB, SLP, STB   */
		wr_reg(0x11, 0x0007);				/* DC1[2:0], DC0[2:0], VC[2:0]        */
		Delay(50);							/* Delay 50 ms                        */
		wr_reg(0x10, 0x1290);				/* SAP, BT[3:0], AP, DSTB, SLP, STB   */
		wr_reg(0x11, 0x0227);				/* DC1[2:0], DC0[2:0], VC[2:0]        */
		wr_reg(0x12, 0x001C);				/* VREG1OUT voltage                   */
		Delay(50);							/* Delay 50 ms                        */
		wr_reg(0x13, 0x1600);				/* VDV[4:0] for VCOM amplitude        */
		wr_reg(0x29, 0x0012);				/* VCM[4:0] for VCOMH                 */
		wr_reg(0x2B, 0x000D);				/* Set Frame Rate  (128 Hz)           */
		Delay(50);							/* Delay 50 ms                        */
		wr_reg(0x20, 0x0000);				/* GRAM horizontal Address            */
		wr_reg(0x21, 0x0000);				/* GRAM Vertical Address              */

		/* Adjust the Gamma Curve ------------------------------------------------*/
		wr_reg(0x30, 0x0007);
		wr_reg(0x31, 0x0707);
		wr_reg(0x32, 0x0107);
		wr_reg(0x35, 0x0206);
		wr_reg(0x36, 0x0408);
		wr_reg(0x37, 0x0006);
		wr_reg(0x38, 0x0000);
		wr_reg(0x39, 0x0207);
		wr_reg(0x3C, 0x0504);
		wr_reg(0x3D, 0x1501);

		/* Set GRAM area ---------------------------------------------------------*/
		wr_reg(0x50, 0x0000);				/* Horizontal GRAM Start Address      */
		wr_reg(0x51, (HEIGHT-1));			/* Horizontal GRAM End   Address      */
		wr_reg(0x52, 0x0000);				/* Vertical   GRAM Start Address      */
		wr_reg(0x53, (WIDTH-1));			/* Vertical   GRAM End   Address      */
		wr_reg(0x60, 0xA700);				/* Gate Scan Line (GS=1)              */
		wr_reg(0x61, 0x0001);				/* NDL,VLE, REV                       */
		wr_reg(0x6A, 0x0000);				/* Set scrolling line                 */

		/* Partial Display Control -----------------------------------------------*/
		wr_reg(0x80, 0x0000);
		wr_reg(0x81, 0x0000);
		wr_reg(0x82, 0x0000);
		wr_reg(0x83, 0x0000);
		wr_reg(0x84, 0x0000);
		wr_reg(0x85, 0x0000);

		/* Panel Control ---------------------------------------------------------*/
		wr_reg(0x90, 0x0010);
		wr_reg(0x92, 0x0000);
		wr_reg(0x93, 0x0003);
		wr_reg(0x95, 0x0110);
		wr_reg(0x97, 0x0000);
		wr_reg(0x98, 0x0000);

		/* Set GRAM write direction and BGR = 1
		   I/D=11 (Horizontal : increment, Vertical : increment)
		   AM=1 (address is updated in vertical writing direction)
		 */
		wr_reg(0x03, 0x1038);

		wr_reg(0x07, 0x0133);	/* 262K color and display ON */
	}
	else
	{
		/* unsupported LCD controller */
		while (1)
			;
	}

	/* Turn backlight on */
	P20_OUT.B.P13 = 1;
}


void GLCD_putPixel(unsigned int x, unsigned int y)
{
	glcd_set_position(x, y);
	glcd_start_GRAM_write();
	wr_dat_endless(TextColor);
	wr_end_transfer();
}


/*******************************************************************************
* Set foreground color                                                         *
*   Parameter:    color:  color for clearing display                           *
*   Return:                                                                    *
*******************************************************************************/
void GLCD_setTextColor(unsigned short color)
{
	TextColor = color;
}


/*******************************************************************************
* Set background color                                                         *
*   Parameter:    color:  color for clearing display                           *
*   Return:                                                                    *
*******************************************************************************/
void GLCD_setBackColor(unsigned short color)
{
	BackColor = color;
}


/*******************************************************************************
* Clear display                                                                *
*   Parameter:    color:  color for clearing display                           *
*   Return:                                                                    *
*******************************************************************************/
void GLCD_clear(unsigned short color)
{
	unsigned int	i;

	glcd_set_position(0, 0);
	glcd_start_GRAM_write();
	for (i = 0; i < (WIDTH*HEIGHT); ++i)
	{
		wr_dat_endless(color);
	}
	wr_end_transfer();
}


/*******************************************************************************
* Draw character on given position (line, coloum)                              *
*   Parameter:     x :        horizontal position                              *
*                  y :        vertical position                                *
*                 *c :        pointer to character definition                  *
*   Return:                                                                    *
*******************************************************************************/
static void GLCD_drawChar(unsigned int x, unsigned int y, const unsigned short *c)
{
	unsigned int index = 0;
	int  i = 0;
	unsigned int Xaddress = x;

	glcd_set_position(Xaddress, y);

	for (index = 0; index < CHAR_HEIGHT; ++index)
	{
		glcd_start_GRAM_write();	/* Prepare to write GRAM */
		for (i = 0; i < CHAR_WIDTH; ++i)
		{
			if ((c[index] & (1 << i)) == 0x00)
			{
				wr_dat_endless(BackColor);
			}
			else
			{
				wr_dat_endless(TextColor);
			}
		}
#ifdef USE_NORMAL_VDIR
		++Xaddress;
#else
		--Xaddress;
#endif /* USE_NORMAL_VDIR */
		wr_end_transfer();
		glcd_set_position(Xaddress, y);
	}
}
static void GLCD_drawChar_inv(unsigned int x, unsigned int y, const unsigned short *c)
{
	unsigned int index = 0;
	int  i = 0;
	unsigned int Xaddress = x;

	glcd_set_position(Xaddress, y - CHAR_HEIGHT +1);

	for (index = 0; index < CHAR_HEIGHT; ++index)
	{
		glcd_start_GRAM_write();	/* Prepare to write GRAM */
		for (i = CHAR_WIDTH; i >0; --i)
		{
			if ((c[index] & (1 << (i+1))) == 0x00)
			{
				wr_dat_endless(BackColor);
			}
			else
			{
				wr_dat_endless(TextColor);
			}
		}
#ifdef USE_NORMAL_VDIR
		++Xaddress;
#else
		//		--Xaddress;
		++Xaddress;
#endif /* USE_NORMAL_VDIR */
		wr_end_transfer();
		glcd_set_position(Xaddress, y);
	}
}
static void GLCD_drawChar_inv_enl(unsigned int x, unsigned int y, unsigned int k, const unsigned short *c)
{
	unsigned int index = 0;
	int  i = 0;
	unsigned int Xaddress = x;

	glcd_set_position(Xaddress, y - CHAR_HEIGHT +1);

	for (index = 0; index < CHAR_HEIGHT; ++index)
	{
		for (int f = 0; f < k; ++f)
		{
			glcd_start_GRAM_write();	/* Prepare to write GRAM */
			for (i = CHAR_WIDTH; i >0; --i)
			{
				for(int j = 0; j < k; ++j)
				{
					if ((c[index] & (1 << (i+1))) == 0x00)
					{
						wr_dat_endless(BackColor);
					}
					else
					{
						wr_dat_endless(TextColor);
					}
				}
			}
#ifdef USE_NORMAL_VDIR
			++Xaddress;
#else
			//		--Xaddress;
			++Xaddress;
#endif /* USE_NORMAL_VDIR */
			wr_end_transfer();
			glcd_set_position(Xaddress, y);
		}
	}
}
/*******************************************************************************
* Display character on given line                                              *
*   Parameter:     c :        ascii character                                  *
*                  ln:        line number                                      *
*   Return:                                                                    *
*******************************************************************************/
void GLCD_displayChar(unsigned int ln, unsigned int col, unsigned char c)
{
	c -= 32;
	GLCD_drawChar(ln, col, &ASCII_Table[c * CHAR_HEIGHT]);
}
void GLCD_displayChar_inv(unsigned int ln, unsigned int col, unsigned char c)
{
	c -= 32;
	GLCD_drawChar_inv(ln, col, &ASCII_Table[c * CHAR_HEIGHT]);
}
void GLCD_displayChar_inv_enl(unsigned int ln, unsigned int col, unsigned char k, unsigned char c)
{
	c -= 32;
	GLCD_drawChar_inv_enl(ln, col, k, &ASCII_Table[c * CHAR_HEIGHT]);
}

/*******************************************************************************
* Display string on given line                                                 *
*   Parameter:     *s:        pointer to string                                *
*                  ln:        line number                                      *
*   Return:                                                                    *
*******************************************************************************/
void GLCD_displayStringLn(unsigned int ln, const char *s)
{
	unsigned int i = 0;
	unsigned int refcolumn = 0;

	/* write the string character by character on LCD */
	while ((*s != 0) & (i < (LCD_WIDTH / CHAR_WIDTH)))
	{
		GLCD_displayChar(ln, refcolumn, *s);
		refcolumn += CHAR_WIDTH;				/* next column position */
		s++;									/* next character */
		i++;									/* count characters */
	}
}

void GLCD_displayStringLn_col(unsigned int ln, unsigned int col, const char *s)
{
	unsigned int i = 0;
	unsigned int refcolumn = col;

	/* write the string character by character on LCD */
	while ((*s != 0) & (i < (LCD_WIDTH / CHAR_WIDTH)))
	{
		GLCD_displayChar(ln, refcolumn, *s);
		refcolumn += CHAR_WIDTH;				/* next column position */
		s++;									/* next character */
		i++;									/* count characters */
	}
}
void GLCD_displayStringLn_col_inv(unsigned int ln, unsigned int col, const char *s)
{
	unsigned int i = 0;
	unsigned int refcolumn = col;

	/* write the string character by character on LCD */
	while ((*s != 0) & (i < (LCD_WIDTH / CHAR_WIDTH)))
	{
		GLCD_displayChar_inv(ln, refcolumn, *s);
		refcolumn += CHAR_WIDTH;				/* next column position */
		s++;									/* next character */
		i++;									/* count characters */
	}
}
void GLCD_displayStringLn_col_inv_enl(unsigned int ln, unsigned int col, unsigned int k, const char *s)
{
	unsigned int i = 0;
	unsigned int refcolumn = col;

	/* write the string character by character on LCD */
	while ((*s != 0) & (i < (LCD_WIDTH / CHAR_WIDTH)))
	{
		GLCD_displayChar_inv_enl(ln, refcolumn, k, *s);
		refcolumn += CHAR_WIDTH;				/* next column position */
		s++;									/* next character */
		i++;									/* count characters */
	}
}
/*******************************************************************************
* Clear given line                                                             *
*   Parameter:     ln:        line number                                      *
*   Return:                                                                    *
*******************************************************************************/
void GLCD_clearLn(unsigned int ln)
{
	GLCD_displayStringLn(ln, "                    ");
}


/*******************************************************************************
* Display graphical bitmap image at position x horizontally and y vertically   *
* (This function is optimized for 16 bits per pixel format, it has to be       *
*  adapted for any other bits per pixel format)                                *
*   Parameter:      x:        horizontal position                              *
*                   y:        vertical position                                *
*                   w:        width of bitmap                                  *
*                   h:        height of bitmap                                 *
*                   bitmap:   address at which the bitmap data resides         *
*   Return:                                                                    *
*******************************************************************************/
void GLCD_bitmap(unsigned int x, unsigned int y, unsigned int w, unsigned int h, const void *bitmap)
{
	unsigned int   i;
	unsigned int   len = w*h;
	unsigned short *bitmap_ptr = (unsigned short *)bitmap;

	/* set a graphic window for the bitmap */
	glcd_set_graph_window(y, y+h-1, x, x+w-1);

	glcd_set_position(y, x);

	glcd_start_GRAM_write();	/* Prepare to write GRAM */
	for (i = 0; i < len; ++i)
	{
		wr_dat_endless(*bitmap_ptr++);
	}
	wr_end_transfer();

	/* restore complete window */
	glcd_set_graph_window(0, (HEIGHT-1), 0, (WIDTH-1));
}

void GLCD_clreaWindow(unsigned int x, unsigned int y, unsigned int w, unsigned int h, const unsigned short color)
{
	unsigned int   i;
	unsigned int   len =  w*h;
	/* set a graphic window for the bitmap */
	glcd_set_graph_window(y, y+h-1, x, x+w-1);
	glcd_set_position(y, x);

	glcd_start_GRAM_write();	/* Prepare to write GRAM */
	for (i = 0; i < len; ++i)
	{
		wr_dat_endless(color);
	}
	wr_end_transfer();

	/* restore complete window */
	glcd_set_graph_window(0, (HEIGHT-1), 0, (WIDTH-1));
}
int GLCD_getLineNo(unsigned int line)
{
	switch (line)
	{
		case 0:  return LINE0;
		case 1:  return LINE1;
		case 2:  return LINE2;
		case 3:  return LINE3;
		case 4:  return LINE4;
		case 5:  return LINE5;
		case 6:  return LINE6;
		case 7:  return LINE7;
		case 8:  return LINE8;
		case 9:  return LINE9;
		default: return -1;
	}
}

/******************************************************************************/

/*
	Touch support through ADS7843 (at Touch Chip Select):

	There is one command byte for selecting conversion type:
	Bit 7	S			Start Bit
	Bit 6-4 A2,A1,A0	Channel Select Bits
	Bit 3	MODE		12-Bit/8-Bit Conversion Selection [0=12,1=8]
	Bit 2	SER/DFR		Single-Ended/Differential Reference Select Bit
	Bit 1-0	PD1,PD0		Power-Down Mode Select Bits

	ADS7843 sends a 16 bit answer with left justified conversion result, i.e.
	adding 4 or 8 pad bits (value 0) at lower end.
	[1 extra clock is needed for the final bit ==> there are only 3|7 pad bits]

	Commands for reading touch position in 12 bit differential mode:
	X value: 0x90
	Y value: 0xD0
 */

/* support for touchscreen */
#define ADS7843_CMD_GET_X	0x90
#define ADS7843_CMD_GET_Y	0xD0

#define USE_IFX_METHOD		0
//#define USE_IFX_METHOD		1

#if (USE_IFX_METHOD == 1)
/* read from ADS7843 X and Y values */
static void rd_ads7843(unsigned int *x, unsigned int *y)
{
	unsigned int data;

	/* remove any old stuff from RXFIFO */
	/* read RXFIFO until empty */
	while (QSPI0_STATUS.B.RXFIFOLEVEL != 0)
	{
		(void)QSPI0_RXEXIT.U;
	}
	/* check for RXFIFO overflow and clear this error */
	data = QSPI0_STATUS.B.ERRORFLAGS & QSPI_ERROR_RXOVF;
	if (data)
	{
		QSPI0_FLAGSCLEAR.U = data;
	}

	/* we need 4 free entries */
	while (QSPI0_STATUS.B.TXFIFOLEVEL > (4 - 4))
		;
	/* we need 8 bit for setting the command */
	QSPI0_BACONENTRY.U	= (CS_TOUCH << IFX_QSPI_BACON_CS_OFF)
						| (IFX_QSPI_BACON_MSB_MSK << IFX_QSPI_BACON_MSB_OFF)
						| ((8-1) << IFX_QSPI_BACON_DL_OFF)
						| (1 << IFX_QSPI_BACON_LEAD_OFF);
	/* get X value */
	QSPI0_DATAENTRY0.U	= ADS7843_CMD_GET_X;
	/* we need 16 clocks for reading the data */
	QSPI0_BACONENTRY.U	= (CS_TOUCH << IFX_QSPI_BACON_CS_OFF)
						| (IFX_QSPI_BACON_MSB_MSK << IFX_QSPI_BACON_MSB_OFF)
						| ((16-1) << IFX_QSPI_BACON_DL_OFF)
						| (1 << IFX_QSPI_BACON_LEAD_OFF);
	/* get Y value */
	QSPI0_DATAENTRY0.U	= ADS7843_CMD_GET_Y;

	/* wait until all data received */
	while (QSPI0_STATUS.B.RXFIFOLEVEL != 4)
		;

	/* ... and read the data */
	(void)QSPI0_RXEXIT.U;
	(void)QSPI0_RXEXIT.U;
	data = QSPI0_RXEXIT.U;
	(void)QSPI0_RXEXIT.U;

	/* remove padding bits */
	*x = data >> 3;

	/* we need 2 free entries */
	while (QSPI0_STATUS.B.TXFIFOLEVEL > (4 - 2))
		;

	/* we need 16 clocks for reading the data */
	QSPI0_BACONENTRY.U	= (CS_TOUCH << IFX_QSPI_BACON_CS_OFF)
						| (IFX_QSPI_BACON_MSB_MSK << IFX_QSPI_BACON_MSB_OFF)
						| ((16-1) << IFX_QSPI_BACON_DL_OFF)
						| (1 << IFX_QSPI_BACON_LEAD_OFF)
						| (IFX_QSPI_BACON_LAST_MSK << IFX_QSPI_BACON_LAST_OFF);
	QSPI0_DATAENTRY0.U	= 0;

	/* wait until all data received */
	while (QSPI0_STATUS.B.RXFIFOLEVEL < (4 - 2))
		;

	/* ... and read the data */
	data = QSPI0_RXEXIT.U;
	(void)QSPI0_RXEXIT.U;

	/* remove padding bits */
	*y = data >> 3;
}
#else
/* read from ADS7843 with command <cmd> */
static unsigned int rd_ads7843(unsigned int cmd)
{
	unsigned int data;

	/* remove any old stuff from RXFIFO */
	/* read RXFIFO until empty */
	while (QSPI0_STATUS.B.RXFIFOLEVEL != 0)
	{
		(void)QSPI0_RXEXIT.U;
	}
	/* check for RXFIFO overflow and clear this error */
	data = QSPI0_STATUS.B.ERRORFLAGS & QSPI_ERROR_RXOVF;
	if (data)
	{
		QSPI0_FLAGSCLEAR.U = data;
	}

	/* we need 4 free entries */
	while (QSPI0_STATUS.B.TXFIFOLEVEL > (4 - 4))
		;
	/* we need 8 bit for setting the command */
	QSPI0_BACONENTRY.U	= (CS_TOUCH << IFX_QSPI_BACON_CS_OFF)
						| (IFX_QSPI_BACON_MSB_MSK << IFX_QSPI_BACON_MSB_OFF)
						| ((8-1) << IFX_QSPI_BACON_DL_OFF)
						| (1 << IFX_QSPI_BACON_LEAD_OFF);
	/* provide command value */
	QSPI0_DATAENTRY0.U	= cmd;
	/* we need 16 clocks for reading the data */
	QSPI0_BACONENTRY.U	= (CS_TOUCH << IFX_QSPI_BACON_CS_OFF)
						| (IFX_QSPI_BACON_MSB_MSK << IFX_QSPI_BACON_MSB_OFF)
						| ((16-1) << IFX_QSPI_BACON_DL_OFF)
						| (1 << IFX_QSPI_BACON_LEAD_OFF)
						| (IFX_QSPI_BACON_LAST_MSK << IFX_QSPI_BACON_LAST_OFF);
	QSPI0_DATAENTRY0.U	= 0;

	/* wait until all data received */
	while (QSPI0_STATUS.B.RXFIFOLEVEL != 4)
		;

	/* ... and read all received data */
	(void)QSPI0_RXEXIT.U;
	(void)QSPI0_RXEXIT.U;
	data = QSPI0_RXEXIT.U;
	(void)QSPI0_RXEXIT.U;

	/* remove padding bits */
	return (data >> 3);
}
#endif /* USE_IFX_METHOD */

int GLCD_GetTouchXY(unsigned int *x, unsigned int *y)
{
	int res = 1;

#if (USE_IFX_METHOD == 1)
	rd_ads7843(x, y);
#else
	*x = rd_ads7843(ADS7843_CMD_GET_X);
	*y = rd_ads7843(ADS7843_CMD_GET_Y);
#endif /* USE_IFX_METHOD */

	return res;
}
