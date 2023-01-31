/*
 * LcdInterface.c
 *
 *  Created on: 2018. 6. 18.
 *      Author: bigbi_000
 */


/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "LcdInterface.h"
#include "HLD.h"
#include "User.h"

#include "UD_buttons.h"
#include "Numbers5076i.h"

#include "FloatSeparation.h"

#include "SteeringWheel_main.h"

#include <stdio.h>
#include <stdarg.h>
/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define LCD_LINE0	LINE2
#define LCD_LINE1	LINE3
#define LCD_LINE2	LINE4
#define LCD_LINE3	LINE5
#define LCD_LINE4	LINE6
#define LCD_LINE5	LINE7
#define LCD_LINE6	LINE8

#define LCD_CHAR_H	24
#define LCD_CHAR_W	16

#define BUTTON_N_UP(n)	Button##n##Up
#define BUTTON_N_DN(n)	Button##n##Down
#define LCD_LINEN(n)	LCD_LINE##n

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/
/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/*****************************************************************************/
typedef struct
{
	boolean Button0set:1;
	boolean Button1set:1;
	boolean Button2set:1;
	boolean Button3set:1;
	boolean Button4set:1;
	boolean Button5set:1;
	boolean Button6set:1;
}LcdInterface_t;
typedef struct
{
	float32 inc0;
	float32 inc1;
	float32 inc2;
	float32 inc3;
	float32 inc4;
	float32 inc5;
	float32 inc6;
	float32 inc7;
}LcdInterface_Increment;
typedef struct 
{
	boolean Indicator0:1;
	boolean Indicator1:1;
	boolean Indicator2:1;
	boolean Indicator3:1;
	boolean Indicator4:1;
}LcdInterface_Indicator;
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
LcdInterface_t LcdInterface =
{
		.Button0set = FALSE,
		.Button1set = FALSE,
		.Button2set = FALSE,
		.Button3set = FALSE,
		.Button4set = FALSE,
		.Button5set = FALSE,
		.Button6set = FALSE
};


TouchButton_t Button[2][7] =
{
		{
				{0,TOUCH_XPOS(1*LCD_CHAR_H),TOUCH_XPOS(2*LCD_CHAR_H),TOUCH_YPOS(LCD_LINE0-LCD_CHAR_H),TOUCH_YPOS(LCD_LINE0),},
				{0,TOUCH_XPOS(1*LCD_CHAR_H),TOUCH_XPOS(2*LCD_CHAR_H),TOUCH_YPOS(LCD_LINE1-LCD_CHAR_H),TOUCH_YPOS(LCD_LINE1),},
				{0,TOUCH_XPOS(1*LCD_CHAR_H),TOUCH_XPOS(2*LCD_CHAR_H),TOUCH_YPOS(LCD_LINE2-LCD_CHAR_H),TOUCH_YPOS(LCD_LINE2),},
				{0,TOUCH_XPOS(1*LCD_CHAR_H),TOUCH_XPOS(2*LCD_CHAR_H),TOUCH_YPOS(LCD_LINE3-LCD_CHAR_H),TOUCH_YPOS(LCD_LINE3),},
				{0,TOUCH_XPOS(1*LCD_CHAR_H),TOUCH_XPOS(2*LCD_CHAR_H),TOUCH_YPOS(LCD_LINE4-LCD_CHAR_H),TOUCH_YPOS(LCD_LINE4),},
				{0,TOUCH_XPOS(1*LCD_CHAR_H),TOUCH_XPOS(2*LCD_CHAR_H),TOUCH_YPOS(LCD_LINE5-LCD_CHAR_H),TOUCH_YPOS(LCD_LINE5),},
				{0,TOUCH_XPOS(1*LCD_CHAR_H),TOUCH_XPOS(2*LCD_CHAR_H),TOUCH_YPOS(LCD_LINE6-LCD_CHAR_H),TOUCH_YPOS(LCD_LINE6),}
		},
		{
				{0,TOUCH_XPOS(0*LCD_CHAR_H),TOUCH_XPOS(1*LCD_CHAR_H),TOUCH_YPOS(LCD_LINE0-LCD_CHAR_H),TOUCH_YPOS(LCD_LINE0),},
				{0,TOUCH_XPOS(0*LCD_CHAR_H),TOUCH_XPOS(1*LCD_CHAR_H),TOUCH_YPOS(LCD_LINE1-LCD_CHAR_H),TOUCH_YPOS(LCD_LINE1),},
				{0,TOUCH_XPOS(0*LCD_CHAR_H),TOUCH_XPOS(1*LCD_CHAR_H),TOUCH_YPOS(LCD_LINE2-LCD_CHAR_H),TOUCH_YPOS(LCD_LINE2),},
				{0,TOUCH_XPOS(0*LCD_CHAR_H),TOUCH_XPOS(1*LCD_CHAR_H),TOUCH_YPOS(LCD_LINE3-LCD_CHAR_H),TOUCH_YPOS(LCD_LINE3),},
				{0,TOUCH_XPOS(0*LCD_CHAR_H),TOUCH_XPOS(1*LCD_CHAR_H),TOUCH_YPOS(LCD_LINE4-LCD_CHAR_H),TOUCH_YPOS(LCD_LINE4),},
				{0,TOUCH_XPOS(0*LCD_CHAR_H),TOUCH_XPOS(1*LCD_CHAR_H),TOUCH_YPOS(LCD_LINE5-LCD_CHAR_H),TOUCH_YPOS(LCD_LINE5),},
				{0,TOUCH_XPOS(0*LCD_CHAR_H),TOUCH_XPOS(1*LCD_CHAR_H),TOUCH_YPOS(LCD_LINE6-LCD_CHAR_H),TOUCH_YPOS(LCD_LINE6),}
		}
};

LcdInterface_Increment Increment =
{
		.inc0 = 5000,
		.inc2 = 0.050000,
};

LcdInterface_Indicator Indicator = 
{
	.Indicator0 = FALSE,
	.Indicator1 = FALSE,
	.Indicator2 = FALSE,
	.Indicator3 = FALSE,
	.Indicator4 = FALSE,
};

volatile sint32 test = 0;
float32 testf = 0;
float32 temp = 0;
sint32 kph;
uint8 a;
uint8 b;
uint8 c;

extern uint8 testS;
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
/*
 * Unused function. It will be removed in a future release.
 */
IFX_STATIC void HLD_LcdInterface_setButton(uint8 buttonNum);

/*
 * Drawing button and print values of variables.
 * Argument1: The line to draw button and print values.
 * Argument2...: The format to print.
 * Note:
 * 	For argument1, use  LCD_LINE0 to LCD_LINE6 macro.
 * 	For argument2 and others, use it as printf() fuction.
 * 	All interface printing functions have a bug in handling float values,
 * 	so you must use floatVar() function to print any float value.
 * 	The bug is that
 * 		1) it make program died when the values are very close to zero, e.g. 1.4e-38.
 * 		2) Format specifiers for float value such as "%1.2f" is regarded as just "%.2f".
 * Example:
 * 	1)	HLD_LcdInterface_doButton(5, "<- Throttle Reset   ");
 * 	2)	HLD_LcdInterface_d0Button(2, "Test = %4d", Test);
 * */
IFX_STATIC void HLD_LcdInterface_doButton(uint8 buttonNum,char const *fmt, ...);

/*
 * Float variable handling function.
 * Argument: Any float value to print on the LCD interface.
 * Note:
 * 	Printing functions have bug in handling float values,
 * 	so you must use this function to print any float value.
 * 	This function limits the precision of the value to 1e-4 at near zero.
 * Example:
 * 	1)HLD_LcdInterface_doButton(1, "Throttle = %1.2f  ", floatVar(HLD_MotorControl.tp));
 * */
IFX_STATIC float32 floatVar(float32);
IFX_STATIC void HLD_LcdInterface_drawButton(void);
IFX_STATIC void LcdInterface_displayIndicator(void);
/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
/*
 * Unused function. It will be removed in a future release.
 */
void HLD_LcdInterface_init(void)
{

	HLD_LcdInterface_setPage();
}
void HLD_LcdInterface_setPage(void)
{
	GLCD_setBackColor(COLOR_DARKGREY);
	GLCD_setTextColor(COLOR_WHITE);

	GLCD_setBackColor(COLOR_WHITE);
	GLCD_setTextColor(COLOR_BLACK);
}

/***************************LCD interface pages********************************/
/*
 * LCD interface implementation functions.
 * Note:
 * Put buttons in this page.
 * Buttons is available in only page1
 */
/*
void HLD_LcdInterface_setPage1 (void)
{

}
void HLD_LcdInterface_setPage2 (void)
{

}
void HLD_LcdInterface_setPage3 (void)
{

}
*/
//TODO: Color setting
#define HV_VOLT_LOW
#define HV_CELL_LOW
#define PAGE1_MID_X 100


//dimension parameter definition
#define X_LINE1 10
#define Y_LINE1 25	//PLUS 30 TO CHANGE LINE
#define X_LINE2 10
#define Y_LINE2 100
#define X_LINE3 10
#define Y_LINE3 152
#define Y_LINE4	212
#define CHAR_WIDTH_HALF	8


void HLD_LcdInterface_page1 (void)
{
	/*
	 * Line 1, 2
	 * Line1: Inverter Temp, Velocity, HV voltage
	 * Line2: Cell Temp, LV voltage, Cell Lowest voltage
	 */
	GLCD_setTextColor(COLOR_BLACK);
	
	uint8 Inverter1Temp = SteeringWheel_main.canMsg3.S.inverter1Temp;
	uint8 Inverter2Temp = SteeringWheel_main.canMsg3.S.inverter2Temp;
	uint8 InverterTemp = (Inverter1Temp > Inverter2Temp) ? Inverter1Temp : Inverter2Temp;
	uint16 HV_Voltage = SteeringWheel_main.canMsg2.S.accumulatorVoltage;
	uint8 Velocity = SteeringWheel_main.canMsg1.S.vehicleSpeed;
	uint8 CellTempHi = SteeringWheel_main.canMsg1.S.highestTemp;
	uint16 LV_Voltage = SteeringWheel_main.canMsg2.S.lvBatteryVoltage;
	uint16 HV_LowCellVoltage = SteeringWheel_main.canMsg1.S.lowestVoltage;

/*
 * draw line test
 * 23.01.25
 * GLCD_putPixcel(Y dimension, X dimension);
 */
	int i;
	//X direction line
	for(i = 0; i<320; i++){
		GLCD_putPixel(Y_LINE2+35,i);
		GLCD_putPixel(Y_LINE2-15,i);
	}


	//Y direction line
	for(i = Y_LINE2-15; i<Y_LINE2+35; i++){ //230125: 200 needs to be fixed
		GLCD_putPixel(i,102);
		GLCD_putPixel(i,230);
	}




//	InverterTemp = 80; //230125 test
	if(InverterTemp>60){
		GLCD_setTextColor(COLOR_RED);
	}
	Lcd_sprintf_col_inv_revised(Y_LINE1, 10, "InT");
	Lcd_sprintf_col_inv_revised(Y_LINE1+30, 17, "%02d", InverterTemp);
	GLCD_setTextColor(COLOR_BLACK);

	Lcd_sprintf_col_inv_revised(Y_LINE1, 268, "HV");
	Lcd_sprintf_col_inv_revised(Y_LINE1+30, 260, "%03d", HV_Voltage/10);//, 3d, HV_Voltage%10
	GLCD_setTextColor(COLOR_BLACK);

	Lcd_sprintf_col_inv_revised_font2(10, 58, "%03d", Velocity);

	Lcd_sprintf_col_inv_revised(Y_LINE2, 10, "CT");
	Lcd_sprintf_col_inv_revised(PAGE1_MID_X, 20+CHAR_WIDTH_HALF+1*CHAR_WIDTH, "%02d", CellTempHi);
	GLCD_setTextColor(COLOR_BLACK);

	Lcd_sprintf_col_inv_revised(Y_LINE2, 104, "LV");
	Lcd_sprintf_col_inv_revised(Y_LINE2, 104+CHAR_WIDTH_HALF+CHAR_WIDTH*2, "%02d.%01d", LV_Voltage / 100, LV_Voltage % 100);
	GLCD_setTextColor(COLOR_BLACK);

	Lcd_sprintf_col_inv_revised(Y_LINE2,226,"CL");
	Lcd_sprintf_col_inv_revised(Y_LINE2, 232+2*CHAR_WIDTH, "%d.%01d", HV_LowCellVoltage/10000, (HV_LowCellVoltage%10000)/10);
	GLCD_setTextColor(COLOR_BLACK);
}

void HLD_LcdInterface_page1_1 (void)
{

	/*
	 * Line 3
	 * Line3: Motor Temp, SOC, Accel, Brake, R2D
	 */

	uint8 Motor1Temp = SteeringWheel_main.canMsg3.S.motor1Temp;
	uint8 Motor2Temp = SteeringWheel_main.canMsg3.S.motor2Temp;
	uint8 MotorTemp = (Motor1Temp > Motor2Temp) ? Motor1Temp : Motor2Temp;
	uint8 soc = SteeringWheel_main.canMsg1.S.soc/2;
	uint8 R2D_status = SteeringWheel_main.canMsg1.S.status.S.r2d;
	float AccelPercentage = SteeringWheel_main.canMsg2.S.apps;		//230130: Received Accel value 0~1//FP 0.1 percent
	uint8 AccelValue = AccelPercentage*53;
	float BrakePercentage = SteeringWheel_main.canMsg2.S.bpps;		//230130: Receive Brake value 0~1 //FP 0.1 percent
	uint8 BrakeValue = BrakePercentage*53;

	Lcd_sprintf_col_inv_revised(Y_LINE3, X_LINE3+10, "MT");
	Lcd_sprintf_col_inv_revised(Y_LINE3+30, X_LINE3+10, "%02d", MotorTemp);
	GLCD_setTextColor(COLOR_BLACK);

	//SOC
	Lcd_sprintf_col_inv_revised_font2(140, 90, "%02d", soc < 100 ? soc : 99);
	GLCD_setTextColor(COLOR_BLACK);

	//R2D
	Lcd_sprintf_col_inv_revised(
	    Y_LINE4, 128, "%d%d%d%d", (R2D_status & 8) >> 3, (R2D_status & 4) >> 2, (R2D_status & 2) >> 1, R2D_status & 1);

	//Accel
	Lcd_sprintf_col_inv_revised(Y_LINE3, 230, "Ac");
	uint8 k;
		//X direction line
	for(k = 60; k<60+CHAR_WIDTH*2; k++){
		GLCD_putPixel(Y_LINE3+25,k);
		GLCD_putPixel(Y_LINE3+78,k);
	}
	uint8 i;
	GLCD_setTextColor(COLOR_GREEN);
	for(i = 1; i<AccelValue; i++){
		for(k = 60; k<60+CHAR_WIDTH*2; k++){
			GLCD_putPixel(Y_LINE3+78-i,k);
			//GLCD_putPixel(Y_LINE3+78,k);
		}
	}

		//Y direction line
	GLCD_setTextColor(COLOR_BLACK);
	for(k = Y_LINE3+25; k<Y_LINE3+78; k++){
		GLCD_putPixel(k,60);
		GLCD_putPixel(k,60+CHAR_WIDTH*2);
	}

	//Brake
	Lcd_sprintf_col_inv_revised(Y_LINE3, 230+50, "Br");
		//X direction line
	for(k = 12; k<12+CHAR_WIDTH*2; k++){
		GLCD_putPixel(Y_LINE3+25,k);
		GLCD_putPixel(Y_LINE3+78,k);
	}

	GLCD_setTextColor(COLOR_RED);
	for(i = 1; i<BrakeValue; i++){
		for(k = 12; k<12+CHAR_WIDTH*2; k++){
			GLCD_putPixel(Y_LINE3+78-i,k);
			//GLCD_putPixel(Y_LINE3+78,k);
		}
	}
	//Y direction line
	GLCD_setTextColor(COLOR_BLACK);
	for(k = Y_LINE3+25; k<Y_LINE3+78; k++){
		GLCD_putPixel(k,12);
		GLCD_putPixel(k,12+CHAR_WIDTH*2);
	}

	// Lcd_sprintf_col_inv_revised(100, 5, "T I %2d  M %2d  C %2d", InverterTemp, MotorTemp, CellTempHi);
	// Lcd_sprintf_col_inv_revised(100, 5, "T I %2d  M %2d  C %2d", InverterTemp, MotorTemp, CellTempHi);
}

/*
 * Note:
 * Put variable in this page.
 * Use Lcd_sprintf() and Lcd_sperint_col() functions.
 * They defined in Lcd.c.
 * 		int Lcd_sprintf(uint8 ln, char const *fmt, ...);
 *		int Lcd_sprintf_col(uint8 ln, uint16 col, char const *fmt, ...);
 * Use LCD_LINE0 to LCD_LINE6 macro at ln.
 */
void HLD_LcdInterface_page2 (void)
{
	/*
	 * Original RH28 Display Page1 //230125
	 */

	GLCD_setTextColor(COLOR_BLACK);
	// GLCD_setBackColor(COLOR_BLACK);
	// float32 Velocity = 34.13;
	// float32 Velocity = (float32)testS;

	// Lcd_sprintf_col_inv_revised_font2(LINE9, 90-CHAR_WIDTH2, "%03d", intPart);

	uint8 Velocity = SteeringWheel_main.canMsg1.S.vehicleSpeed;
	uint16 HV_Voltage = SteeringWheel_main.canMsg2.S.accumulatorVoltage;
	uint16 HV_LowCellVoltage = SteeringWheel_main.canMsg1.S.lowestVoltage;
	uint8 R2D_status = SteeringWheel_main.canMsg1.S.status.S.r2d;

	Lcd_sprintf_col_inv_revised(20, 192, "HV %3d.%d", HV_Voltage/10, HV_Voltage%10);
	Lcd_sprintf_col_inv_revised(50, 192, "CL %d.%03d", HV_LowCellVoltage/10000, (HV_LowCellVoltage%10000)/10);

	// LcdInterface_displayIndicator();
	Lcd_sprintf_col_inv_revised_font2(10, 0, "%03d", Velocity);
	Lcd_sprintf_col_inv_revised(
	    192, 192, "R2D %d%d%d%d", (R2D_status & 8) >> 3, (R2D_status & 4) >> 2, (R2D_status & 2) >> 1, R2D_status & 1);


}
void HLD_LcdInterface_page2_1 (void)
{
	/*
	 * Original RH28 Display Page1_1 //230125
	 */
	uint16 LV_Voltage = SteeringWheel_main.canMsg2.S.lvBatteryVoltage;
	uint8 Inverter1Temp = SteeringWheel_main.canMsg3.S.inverter1Temp;
	uint8 Inverter2Temp = SteeringWheel_main.canMsg3.S.inverter2Temp;
	uint8 InverterTemp = (Inverter1Temp > Inverter2Temp) ? Inverter1Temp : Inverter2Temp;
	uint8 Motor1Temp = SteeringWheel_main.canMsg3.S.motor1Temp;
	uint8 Motor2Temp = SteeringWheel_main.canMsg3.S.motor2Temp;
	uint8 MotorTemp = (Motor1Temp > Motor2Temp) ? Motor1Temp : Motor2Temp;
	uint8 CellTempHi = SteeringWheel_main.canMsg1.S.highestTemp;
	uint8 soc = SteeringWheel_main.canMsg1.S.soc/2;
	Lcd_sprintf_col_inv_revised(PAGE1_MID_X, 16, "T");
	GLCD_setTextColor(COLOR_DARKGREY);
	Lcd_sprintf_col_inv_revised(PAGE1_MID_X, 16+(2)*CHAR_WIDTH, "I");
	Lcd_sprintf_col_inv_revised(PAGE1_MID_X, 16+(2+1+1*6)*CHAR_WIDTH, "M");
	Lcd_sprintf_col_inv_revised(PAGE1_MID_X, 16+(2+1+2*6)*CHAR_WIDTH, "C");
	GLCD_setTextColor(COLOR_BLACK);
	Lcd_sprintf_col_inv_revised(PAGE1_MID_X, 16+(2+2)*CHAR_WIDTH, "%2d", InverterTemp);
	GLCD_setTextColor(COLOR_BLACK);
	Lcd_sprintf_col_inv_revised(PAGE1_MID_X, 16+(2+1+1*6+2)*CHAR_WIDTH, "%2d", MotorTemp);
	GLCD_setTextColor(COLOR_BLACK);
	Lcd_sprintf_col_inv_revised(PAGE1_MID_X, 16+(2+1+2*6+2)*CHAR_WIDTH, "%2d", CellTempHi);
	GLCD_setTextColor(COLOR_BLACK);
	Lcd_sprintf_col_inv_revised_font2(152, 0, "%02d", soc < 100 ? soc : 99);
	GLCD_setTextColor(COLOR_BLACK);
	Lcd_sprintf_col_inv_revised(162, 192, "LV %2d.%02d", LV_Voltage / 100, LV_Voltage % 100);
	GLCD_setTextColor(COLOR_BLACK);
	// Lcd_sprintf_col_inv_revised(100, 5, "T I %2d  M %2d  C %2d", InverterTemp, MotorTemp, CellTempHi);
	// Lcd_sprintf_col_inv_revised(100, 5, "T I %2d  M %2d  C %2d", InverterTemp, MotorTemp, CellTempHi);

}
void HLD_LcdInterface_page3 (void)
{
	char text[30];
}
void HLD_LcdInterface_page3_1 (void)
{
}
/******************************Buttons routine*******************************/
/*
 * Button routines.
 * Put the code to run when the button is pushed.
 * ButtonN is Button on line N of page1
 */
/*Stert and Stop buttion*/
void HLD_LcdInterface_doStart(void)
{
	HLD_GtmTomBeeper_start(Beep_pattern1);
}
void HLD_LcdInterface_doStop(void)
{
	HLD_GtmTomBeeper_start(Beep_pattern1);
}
/*Button0*/
IFX_STATIC void HLD_LcdInterface_doButton0Up(void)
{
	HLD_GtmTomBeeper_start(Beep_pattern1);

}
IFX_STATIC void HLD_LcdInterface_doButton0Down(void)
{
	HLD_GtmTomBeeper_start(Beep_pattern1);

}
/*Button1*/
IFX_STATIC void HLD_LcdInterface_doButton1Up(void)
{
	HLD_GtmTomBeeper_start(Beep_pattern1);
}
IFX_STATIC void HLD_LcdInterface_doButton1Down(void)
{
	HLD_GtmTomBeeper_start(Beep_pattern1);
}
/*Button2*/
IFX_STATIC void HLD_LcdInterface_doButton2Up(void)
{
	HLD_GtmTomBeeper_start(Beep_pattern1);
}
IFX_STATIC void HLD_LcdInterface_doButton2Down(void)
{
	HLD_GtmTomBeeper_start(Beep_pattern1);
}
/*Button3*/
IFX_STATIC void HLD_LcdInterface_doButton3Up(void)
{
	HLD_GtmTomBeeper_start(Beep_pattern1);
}
IFX_STATIC void HLD_LcdInterface_doButton3Down(void)
{
	HLD_GtmTomBeeper_start(Beep_pattern1);
}
/*Button4*/
IFX_STATIC void HLD_LcdInterface_doButton4Up(void)
{
	HLD_GtmTomBeeper_start(Beep_pattern1);
}
IFX_STATIC void HLD_LcdInterface_doButton4Down(void)
{
	HLD_GtmTomBeeper_start(Beep_pattern1);
}
/*Button5*/
IFX_STATIC void HLD_LcdInterface_doButton5Up(void)
{
	HLD_GtmTomBeeper_start(Beep_pattern1);
}
IFX_STATIC void HLD_LcdInterface_doButton5Down(void)
{
	HLD_GtmTomBeeper_start(Beep_pattern1);
}
/*Button6*/
IFX_STATIC void HLD_LcdInterface_doButton6Up(void)
{

}
IFX_STATIC void HLD_LcdInterface_doButton6Down(void)
{

}

/******************************************************************************/
/*----------------------Static Function Implementations-----------------------*/
/******************************************************************************/
//IFX_STATIC void HLD_LcdInterface_doButton(uint8 buttonNum)
//IFX_STATIC void HLD_LcdInterface_doButton(uint8 buttonNum, const char* fmt)
IFX_STATIC float32 floatVar(float32 var)
{
	float32 temp = var;
	if((temp > -1e-3)&&(temp < 1e-3))
		temp = 0;
	return temp;
}

IFX_STATIC void HLD_LcdInterface_doButton(uint8 buttonNum,char const *fmt, ...)
{
	int ret;
	va_list ap;
	void (*up)() = 0;
	void (*down)() = 0;
	switch(buttonNum)
	{
	case 0:
		up = HLD_LcdInterface_doButton0Up;
		down = HLD_LcdInterface_doButton0Down;
		break;
	case 1:
		up = HLD_LcdInterface_doButton1Up;
		down = HLD_LcdInterface_doButton1Down;
		break;
	case 2:
		up = HLD_LcdInterface_doButton2Up;
		down = HLD_LcdInterface_doButton2Down;
		break;
	case 3:
		up = HLD_LcdInterface_doButton3Up;
		down = HLD_LcdInterface_doButton3Down;
		break;
	case 4:
		up = HLD_LcdInterface_doButton4Up;
		down = HLD_LcdInterface_doButton4Down;
		break;
	case 5:
		up = HLD_LcdInterface_doButton5Up;
		down = HLD_LcdInterface_doButton5Down;
		break;
	case 6:
		up = HLD_LcdInterface_doButton6Up;
		down = HLD_LcdInterface_doButton6Down;
		break;
	}
	if(HLD_Lcd_getButton(&(Button[0][buttonNum])))
	{
		up();
		test = buttonNum;
	}
	else if(HLD_Lcd_getButton(&(Button[1][buttonNum])))
	{
		down();
		test = buttonNum;
	}
	/*

	{Draw Buttons
		GLCD_bitmap(0, (((MAX_LINES - (buttonNum+2)) * CHAR_HEIGHT) - 1)-24, UD_buttons_WIDTH, UD_buttons_HEIGHT, UD_buttons_image);
		va_start(ap, fmt);
	}

	 */
	ret = vsprintf(g_Lcd.text, fmt, ap);
	va_end(ap);
	GLCD_displayStringLn_col((((MAX_LINES - (buttonNum+2)) * CHAR_HEIGHT) - 1),2*LCD_CHAR_H+2, g_Lcd.text);
}

IFX_STATIC void HLD_LcdInterface_setButton(uint8 buttonNum)
{
	switch(buttonNum)
	{
	case 0: LcdInterface.Button0set = TRUE; break;
	case 1: LcdInterface.Button1set = TRUE; break;
	case 2: LcdInterface.Button2set = TRUE; break;
	case 3: LcdInterface.Button3set = TRUE; break;
	case 4: LcdInterface.Button4set = TRUE; break;
	case 5: LcdInterface.Button5set = TRUE; break;
	case 6: LcdInterface.Button6set = TRUE; break;
	}
}

IFX_STATIC void HLD_LcdInterface_drawButton(void)
{
	if(LcdInterface.Button0set)
	{
		GLCD_bitmap(0, LCD_LINE0-24, UD_buttons_WIDTH, UD_buttons_HEIGHT, UD_buttons_image);
	}
	if(LcdInterface.Button1set)
	{
		GLCD_bitmap(0, LCD_LINE1-24, UD_buttons_WIDTH, UD_buttons_HEIGHT, UD_buttons_image);
	}
	if(LcdInterface.Button2set)
	{
		GLCD_bitmap(0, LCD_LINE2-24, UD_buttons_WIDTH, UD_buttons_HEIGHT, UD_buttons_image);
	}
	if(LcdInterface.Button3set)
	{
		GLCD_bitmap(0, LCD_LINE3-24, UD_buttons_WIDTH, UD_buttons_HEIGHT, UD_buttons_image);
	}
	if(LcdInterface.Button4set)
	{
		GLCD_bitmap(0, LCD_LINE4-24, UD_buttons_WIDTH, UD_buttons_HEIGHT, UD_buttons_image);
	}
	if(LcdInterface.Button5set)
	{
		GLCD_bitmap(0, LCD_LINE5-24, UD_buttons_WIDTH, UD_buttons_HEIGHT, UD_buttons_image);
	}
	if(LcdInterface.Button6set)
	{
		GLCD_bitmap(0, LCD_LINE6-24, UD_buttons_WIDTH, UD_buttons_HEIGHT, UD_buttons_image);
	}
}

IFX_STATIC void LcdInterface_displayIndicator(void)
{
	if(Indicator.Indicator0)
	{
		GLCD_setTextColor(COLOR_GREEN);
	}
	else
	{
		GLCD_setTextColor(COLOR_RED);
	}
	Lcd_sprintf_col_inv_revised_font2_full(LINE3, 0);
	if(Indicator.Indicator1)
	{
		GLCD_setTextColor(COLOR_GREEN);
	}
	else
	{
		GLCD_setTextColor(COLOR_RED);
	}
	Lcd_sprintf_col_inv_revised_font2_full(LINE3, 64);
	if(Indicator.Indicator2)
	{
		GLCD_setTextColor(COLOR_GREEN);
	}
	else
	{
		GLCD_setTextColor(COLOR_RED);
	}
	Lcd_sprintf_col_inv_revised_font2_full(LINE3, 128);
	if(Indicator.Indicator3)
	{
		GLCD_setTextColor(COLOR_GREEN);
	}
	else
	{
		GLCD_setTextColor(COLOR_RED);
	}
	Lcd_sprintf_col_inv_revised_font2_full(LINE3, 192);
	if(Indicator.Indicator4)
	{
		GLCD_setTextColor(COLOR_GREEN);
	}
	else
	{
		GLCD_setTextColor(COLOR_RED);
	}
	Lcd_sprintf_col_inv_revised_font2_full(LINE3, 256);
	GLCD_setTextColor(COLOR_BLACK);
}
