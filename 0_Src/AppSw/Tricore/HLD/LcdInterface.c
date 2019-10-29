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


#include "AccumulatorManager.h"
#include "FloatSeparation.h"

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

volatile sint32 test = 0;
float32 testf = 0;
float32 temp = 0;
sint32 kph;
uint8 a;
uint8 b;
uint8 c;
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
		HLD_LcdInterface_setButton(0);
		HLD_LcdInterface_setButton(1);
		HLD_LcdInterface_setButton(2);
		HLD_LcdInterface_setButton(3);
		HLD_LcdInterface_setButton(4);
		HLD_LcdInterface_setButton(5);
		HLD_LcdInterface_setButton(6);
	// HLD_LcdInterface_drawButton();
	HLD_LcdInterface_setPage();
}
void HLD_LcdInterface_setPage(void)
{
	GLCD_setBackColor(COLOR_DARKGREY);
	GLCD_setTextColor(COLOR_WHITE);
/*
	{
		GLCD_bitmap(0,LCD_LINE0-23,UD_buttons_WIDTH, UD_buttons_HEIGHT,UD_buttons_image);
	}
	{
		GLCD_bitmap(0,LCD_LINE1-23,UD_buttons_WIDTH, UD_buttons_HEIGHT,UD_buttons_image);
	}
	{
		GLCD_bitmap(0,LCD_LINE2-23,UD_buttons_WIDTH, UD_buttons_HEIGHT,UD_buttons_image);
	}
	{
		GLCD_bitmap(0,LCD_LINE3-23,UD_buttons_WIDTH, UD_buttons_HEIGHT,UD_buttons_image);
	}
	{
		GLCD_bitmap(0,LCD_LINE4-23,UD_buttons_WIDTH, UD_buttons_HEIGHT,UD_buttons_image);
	}
	{
		GLCD_bitmap(0,LCD_LINE5-23,UD_buttons_WIDTH, UD_buttons_HEIGHT,UD_buttons_image);
	}
*/
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
void HLD_LcdInterface_page1 (void)
{
/* 
	{
		HLD_LcdInterface_doButton(0, "");
	}
	{
		HLD_LcdInterface_doButton(1, "");
	}
	{
		HLD_LcdInterface_doButton(2, "");
	}
	{
		HLD_LcdInterface_doButton(3, "");
	}
	{
		HLD_LcdInterface_doButton(4, "");
	}
	{
		HLD_LcdInterface_doButton(5, "");
	}

 */	
	sint32 intPart;
	uint32 fracPart;
	Separate_int_frac(&intPart, &fracPart, VoltageSensor0.value, 2);
	Lcd_sprintf_col(LINE1, 0, "Vlt0 %4d.%02u",intPart, fracPart);
	Separate_int_frac(&intPart, &fracPart, CurrentSensing.CurrentSensor[0].value, 2);
	Lcd_sprintf_col(LINE2, 0, "Crt0 %4d.%02u",intPart, fracPart);
	Separate_int_frac(&intPart, &fracPart, CurrentSensing.CurrentSensor[1].value, 2);
	Lcd_sprintf_col(LINE3, 0, "Crt1 %4d.%02u",intPart, fracPart);
	Separate_int_frac(&intPart, &fracPart, temperatureHighest, 1);
	Lcd_sprintf_col(LINE4, 0, "TmpH %4d.%01u",intPart, fracPart);
	
	Lcd_sprintf_col(LINE6, 0, "TEST %4d.%02u",-128, 2);
//	Lcd_sprintf_col(LCD_LINE1, 0, "CUR %5d A", conMsg1.motCurrent);

}
void HLD_LcdInterface_page1_1 (void)
{
//	Lcd_sprintf_col(LCD_LINE2, 0, "BAT %5d", conMsg1.batVoltage/10);
//	Lcd_sprintf_col(LCD_LINE2, 9*LCD_CHAR_W, ".%01d V", conMsg1.batVoltage%10);
//
//	Lcd_sprintf_col(LCD_LINE3, 0, "TPS");
//	Lcd_sprintf_col(LCD_LINE3, 6*LCD_CHAR_W,"%3d", conMsg2.tps);
//
//	Lcd_sprintf_col(LCD_LINE4, 0, "TMP");
//	Lcd_sprintf_col(LCD_LINE4, 6*LCD_CHAR_W, "%3d %3d", conMsg2.conTemp, conMsg2.motTemp);
// 	Lcd_sprintf_col(LCD_LINE0, 3*LCD_CHAR_W, "Duty:%3d%%", (uint32)PwmGenerator_getPercentDuty());
//	Lcd_sprintf_col(LCD_LINE2, 3*LCD_CHAR_W, "Freq:%3dkHz", (uint32)(PwmGenerator_getFrequency()/1000));
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
	Lcd_sprintf_col(LCD_LINE0,0, "%8x", HLD_Multican_msg0.data[0]);
	Lcd_sprintf_col(LCD_LINE1,0, "%8x", HLD_Multican_msg0.data[1]);
*/
//	Lcd_sprintf_col(LCD_LINE1, 0, "SW  %5xh", conMsg2.conStat.U);
//	Lcd_sprintf_col(LCD_LINE2, 0, "CON %5xh", conMsg2.swStat.U);
	sint32 intPart;
	uint32 fracPart;
	Separate_int_frac(&intPart, &fracPart, TemperatureSensing.temperature[0], 1);
	Lcd_sprintf_col(LINE1, 0, "Tmp0 %4d.%01u",intPart, fracPart);
	Separate_int_frac(&intPart, &fracPart, TemperatureSensing.temperature[1], 1);
	Lcd_sprintf_col(LINE2, 0, "Tmp1 %4d.%01u",intPart, fracPart);
	Separate_int_frac(&intPart, &fracPart, TemperatureSensing.temperature[2], 1);
	Lcd_sprintf_col(LINE3, 0, "Tmp2 %4d.%01u",intPart, fracPart);
	Separate_int_frac(&intPart, &fracPart, TemperatureSensing.temperature[3], 1);
	Lcd_sprintf_col(LINE4, 0, "Tmp3 %4d.%01u",intPart, fracPart);
	Separate_int_frac(&intPart, &fracPart, TemperatureSensing.temperature[4], 1);
	Lcd_sprintf_col(LINE5, 0, "Tmp4 %4d.%01u",intPart, fracPart);
	Separate_int_frac(&intPart, &fracPart, TemperatureSensing.temperature[5], 1);
	Lcd_sprintf_col(LINE6, 0, "Tmp5 %4d.%01u",intPart, fracPart);
	Separate_int_frac(&intPart, &fracPart, TemperatureSensing.temperature[6], 1);
	Lcd_sprintf_col(LINE7, 0, "Tmp6 %4d.%01u",intPart, fracPart);
	Separate_int_frac(&intPart, &fracPart, TemperatureSensing.temperature[7], 1);
	Lcd_sprintf_col(LINE8, 0, "Tmp7 %4d.%01u",intPart, fracPart);


}
void HLD_LcdInterface_page2_1 (void)
{

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
	/*
	if(Increment.inc3 < 100+1e-3 && Increment.inc3 > 100-1e-3)
	{
		HLD_GtmTomBeeper_start(Beep_pattern1);
		Increment.inc3 = 500;
	}
	else if(Increment.inc3 < 500+1e-3 && Increment.inc3 > 500-1e-3)
	{
		HLD_GtmTomBeeper_start(Beep_pattern1);
		Increment.inc3 = 1000;
	}
	else if(Increment.inc3 < 1000+1e-3 && Increment.inc3 > 1000-1e-3)
	{
		HLD_GtmTomBeeper_start(Beep_pattern1);
		Increment.inc3 = 5000;
	}
	else if(Increment.inc3 < 5000+1e-3 && Increment.inc3 > 5000-1e-3)
	{
		HLD_GtmTomBeeper_start(Beep_pattern1);
		Increment.inc3 = 10000;
	}
	else if(Increment.inc3 < 10000+1e-3 && Increment.inc3 > 10000-1e-3)
	{
		HLD_GtmTomBeeper_start(Beep_pattern3);
	}
	else
	{
		HLD_GtmTomBeeper_start(Beep_pattern3);
		Increment.inc3 = 1000;
	}
	 */
}
IFX_STATIC void HLD_LcdInterface_doButton6Down(void)
{
	/*
	if(Increment.inc3 < 10000+1e-3 && Increment.inc3 > 10000-1e-3)
	{
		HLD_GtmTomBeeper_start(Beep_pattern1);
		Increment.inc3 = 5000;
	}
	else if(Increment.inc3 < 5000+1e-3 && Increment.inc3 > 5000-1e-3)
	{
		HLD_GtmTomBeeper_start(Beep_pattern1);
		Increment.inc3 = 1000;
	}
	else if(Increment.inc3 < 1000+1e-3 && Increment.inc3 > 1000-1e-3)
	{
		HLD_GtmTomBeeper_start(Beep_pattern1);
		Increment.inc3 = 500;
	}
	else if(Increment.inc3 < 500+1e-3 && Increment.inc3 > 500-1e-3)
	{
		HLD_GtmTomBeeper_start(Beep_pattern1);
		Increment.inc3 = 100;
	}
	else if(Increment.inc3 < 100+1e-3 && Increment.inc3 > 100-1e-3)
	{
		HLD_GtmTomBeeper_start(Beep_pattern3);
	}
	else
	{
		HLD_GtmTomBeeper_start(Beep_pattern3);
		Increment.inc3 = 1000;
	}
	 */
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

