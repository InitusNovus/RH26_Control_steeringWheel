/*
 * Lcd.c
 *
 *  Created on: 2018. 6. 18.
 *      Author: bigbi_000
 */


/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "HLD.h"
#include "User.h"
#include "glcd.h"
#include <stdio.h>
#include <stdarg.h>

#include "Lcd.h"
#include "Background.h"
#include "LR_buttons.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define TOUCH_SEN 2

#define ARRAYDISABLED
/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/


typedef struct __attribute__((packed))
{
	float32* val;
	char* tag;
	char* fmt;
}LcdData_t;
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
Lcd_t g_Lcd =
{
		.page = 1,
		//		.lastPage = PAGES,
		.lastPage = 3,

		.touch.x = TOUCH_XPOS(320),
		.touch.y = TOUCH_YPOS(0),

		.array = FALSE,
		.arrayPage = 1,
		.arrayLastPage = 3,
		.isRun = TRUE,
#ifdef ARRAYDISABLED
		.arrayEnabled = FALSE,
#else
		.arrayEnabled = TRUE,
#endif
};
#ifndef ARRAYDISABLED
ArrayChart_t arrayChart[3]=
{
		{
				.xStart = 48+3,
				.yStart = 24+3,
				.xAxis = 2*IMGSIZE_FILTERED,
				.yAxis = 7*24-3-3,
				.prevVal = {0,}
		},
		{
				.xStart = 48+3,
				.yStart = 24+3,
				.xAxis = 2*IMGSIZE_FILTERED,
				.yAxis = 7*24-3-3,
				.prevVal = {0,}
		},		{
				.xStart = 48+3,
				.yStart = 24+3,
				.xAxis = 2*IMGSIZE_FILTERED,
				.yAxis = 7*24-3-3,
				.prevVal = {0,}
		}
};
#endif
TouchButton_t startButton =
{
		.xmin = TOUCH_XPOS(0),
		.xmax = TOUCH_XPOS(88-1),
		.ymin = TOUCH_YPOS(192),
		.ymax = TOUCH_YPOS(240-1),
		.accum = 0
};
TouchButton_t stopButton =
{
		.xmin = TOUCH_XPOS(232),
		.xmax = TOUCH_XPOS(320-1),
		.ymin = TOUCH_YPOS(192),
		.ymax = TOUCH_YPOS(240-1),
		.accum = 0
};
TouchButton_t pageDownButton =
{
		.xmin = TOUCH_XPOS(0),
		.xmax = TOUCH_XPOS(24-1),
		.ymin = TOUCH_YPOS(0),
		.ymax = TOUCH_YPOS(24-1),
		.accum = 0
};
TouchButton_t pageUpButton =
{
		.xmin = TOUCH_XPOS(24),
		.xmax = TOUCH_XPOS(48-1),
		.ymin = TOUCH_YPOS(0),
		.ymax = TOUCH_YPOS(24-1),
		.accum = 0
};
TouchButton_t arrayButton =
{
		.xmin = TOUCH_XPOS(48),
		.xmax = TOUCH_XPOS(48+6*16-1),
		.ymin = TOUCH_YPOS(0),
		.ymax = TOUCH_YPOS(24-1),
		.accum = 0
};

LcdData_t LcdData[PAGES][LINES];
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
IFX_STATIC void HLD_Lcd_clearInterface(void);
IFX_INLINE void HLD_Lcd_drawLineH(uint16 xStart, uint16 yStart, uint16 length);
IFX_INLINE void HLD_Lcd_drawLineV(uint16 xStart, uint16 yStart, uint16 length);
IFX_STATIC void HLD_Lcd_clearChart(ArrayChart_t* arrayChart,unsigned short color);
/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void HLD_Lcd_init(void)
{
	printf("Lcd_init() called\n");
	GLCD_init();
	GLCD_clear(COLOR_WHITE);
	GLCD_setBackColor(COLOR_WHITE);
	GLCD_setTextColor(COLOR_BLACK);


	GLCD_setTextColor(COL_RGB565(  0x1d,   0x24,   0x75));


//	GLCD_bitmap(0,240-Background_HEIGHT,Background_WIDTH,Background_HEIGHT,Background_image);
	GLCD_bitmap(0,0,LR_buttons_WIDTH, LR_buttons_HEIGHT,LR_buttons_image);

	GLCD_setTextColor(COLOR_LIGHTGREY);
	Lcd_sprintf_col(LINE9, 320-6*16, "V%d.%d.%d",HLD_VERSION_MAJOR,HLD_VERSION_MINOR,HLD_VERSION_PATCH);
/*
	GLCD_setBackColor(COL_RGB565(  29,   36,   117));
	GLCD_setTextColor(COL_RGB565(  93,   93,   96));

#ifdef SESSION_FP2
	Lcd_sprintf_col(LINE9, 160-24, "FP2");
#endif
#ifdef SESSION_FP3
	Lcd_sprintf_col(LINE9, 160-24, "FP3");
#endif
#ifdef SESSION_QUALIFYING
	Lcd_sprintf_col(LINE9, 160-32, "QLFY");
#endif
#ifdef SESSION_RACE
	Lcd_sprintf_col(LINE9, 160-32, "RACE");
#endif
*/
	GLCD_setTextColor(COLOR_BLACK);
	GLCD_setBackColor(COLOR_WHITE);
	printf("Lcd initialized\n");
}

void HLD_Lcd_run(void)
{
	/*Start and Stop buttons*/

	if(HLD_Lcd_getButton(&stopButton))
	{
		HLD_LcdInterface_doStop();
//		g_Lcd.isRun = TRUE;
	}
	else if(HLD_Lcd_getButton(&startButton))
	{
		HLD_LcdInterface_doStart();
//		g_Lcd.isRun = FALSE;
	}


	/*LCD display routine*/
	if(g_Lcd.isRun)
	{
		/*Array Button*/
		if(g_Lcd.arrayEnabled)
		{
			if(HLD_Lcd_getButton(&arrayButton))
			{
				if(g_Lcd.array)
				{
					g_Lcd.array = FALSE;
				}
				else
				{
					g_Lcd.array = TRUE;
				}
				HLD_Lcd_clearInterface();
				HLD_GtmTomBeeper_start(Beep_pattern1);
			}
		}
		else
		{
			g_Lcd.array = FALSE;
		}
		/********************************************************************/
		/***********************Variable Display mode************************/
		/********************************************************************/
		if(g_Lcd.array == FALSE)
		{
			/***********************Button Routines**********************/
			/*Page U/D buttons*/
			if(HLD_Lcd_getButton(&pageUpButton))
			{
				if(g_Lcd.page < g_Lcd.lastPage)
				{
					g_Lcd.page++;
					HLD_Lcd_clearInterface();
					HLD_GtmTomBeeper_start(Beep_pattern1);
				}
				else
				{
					HLD_GtmTomBeeper_start(Beep_pattern3);
				}
			}
			else if(HLD_Lcd_getButton(&pageDownButton))
			{
				if(g_Lcd.page > 1)
				{
					g_Lcd.page--;
					HLD_Lcd_clearInterface();
					HLD_GtmTomBeeper_start(Beep_pattern1);
				}
				else
				{
					HLD_GtmTomBeeper_start(Beep_pattern3);
				}
			}

			/************************Page Routines***********************/
			/*Display pages*/
			switch(g_Lcd.page)
			{
			default: g_Lcd.page = 1;
			/* no break */
			case 1:
			{
				HLD_LcdInterface_page1();
			}break;
			case 2:
			{
				HLD_LcdInterface_page2();
			}break;
			case 3:
			{
				HLD_LcdInterface_page3();
			}break;
			}
		}
/*

		******************************************************************
		************************Array Display mode************************
		******************************************************************
		else
		{
			**********************Button Routines*********************
			Page U/D buttons
			if(HLD_Lcd_getButton(&pageUpButton))
			{
				if(g_Lcd.arrayPage < g_Lcd.arrayLastPage)
				{
					g_Lcd.arrayPage++;
					HLD_Lcd_clearInterface();
					HLD_GtmTomBeeper_start(Beep_pattern1);
				}
				else
				{
					HLD_GtmTomBeeper_start(Beep_pattern3);
				}
			}
			else if(HLD_Lcd_getButton(&pageDownButton))
			{
				if(g_Lcd.arrayPage > 1)
				{
					g_Lcd.arrayPage--;
					HLD_Lcd_clearInterface();
					HLD_GtmTomBeeper_start(Beep_pattern1);
				}
				else
				{
					HLD_GtmTomBeeper_start(Beep_pattern3);
				}
			}

			**********************Drawing graph window*********************
			switch(g_Lcd.arrayPage)
			{
			case 1: arrayChart[g_Lcd.arrayPage-1].yScale = g_LineScan.close.threshold; break;
			case 2: arrayChart[g_Lcd.arrayPage-1].yScale = g_LineScan.close.threshold; break;
			case 3: arrayChart[g_Lcd.arrayPage-1].yScale = g_LineScan.far.threshold; break;
			}

			GLCD_setTextColor(COLOR_DARKGREY);
			HLD_Lcd_drawLineV(arrayChart[g_Lcd.arrayPage-1].xStart-1
					,arrayChart[g_Lcd.arrayPage-1].yStart
					,arrayChart[g_Lcd.arrayPage-1].yAxis+1);
			HLD_Lcd_drawLineV(arrayChart[g_Lcd.arrayPage-1].xStart+arrayChart[g_Lcd.arrayPage-1].xAxis
					,arrayChart[g_Lcd.arrayPage-1].yStart
					,arrayChart[g_Lcd.arrayPage-1].yAxis+1);
			HLD_Lcd_drawLineH(arrayChart[g_Lcd.arrayPage-1].xStart
					,arrayChart[g_Lcd.arrayPage-1].yStart+arrayChart[g_Lcd.arrayPage-1].yAxis
					,arrayChart[g_Lcd.arrayPage-1].xAxis);
			HLD_Lcd_drawLineH(arrayChart[g_Lcd.arrayPage-1].xStart
					,arrayChart[g_Lcd.arrayPage-1].yStart-1
					,arrayChart[g_Lcd.arrayPage-1].xAxis);
			HLD_Lcd_clearChart(&(arrayChart[g_Lcd.arrayPage-1]), COLOR_WHITE);

			uint16 i = 0;
			uint16 val = 0;
			uint16 preVal = 0;
			GLCD_setTextColor(COLOR_RED);
			initial pixel
			{
				val = (LineScan_filtered[g_Lcd.arrayPage-1][i])
							*arrayChart[g_Lcd.arrayPage-1].yAxis/arrayChart[g_Lcd.arrayPage-1].yScale;
				GLCD_putPixel(arrayChart[g_Lcd.arrayPage-1].yStart + val
						,arrayChart[g_Lcd.arrayPage-1].xStart+2*i);
				i++;
			}
			for(;i < arrayChart[g_Lcd.arrayPage-1].xAxis/2; i++)
			{
				val = (LineScan_filtered[g_Lcd.arrayPage-1][i])
							*arrayChart[g_Lcd.arrayPage-1].yAxis/arrayChart[g_Lcd.arrayPage-1].yScale;
				preVal = (LineScan_filtered[g_Lcd.arrayPage-1][i-1])
							*arrayChart[g_Lcd.arrayPage-1].yAxis/arrayChart[g_Lcd.arrayPage-1].yScale;
				if((preVal < arrayChart[g_Lcd.arrayPage-1].yAxis)&&(val < arrayChart[g_Lcd.arrayPage-1].yAxis))
				{
					if(preVal < val)
					{
						HLD_Lcd_drawLineV(arrayChart[g_Lcd.arrayPage-1].xStart+ 2*i - 1
								,arrayChart[g_Lcd.arrayPage-1].yStart + preVal
								,val - preVal + 1);
						GLCD_putPixel(arrayChart[g_Lcd.arrayPage-1].yStart + val
								,arrayChart[g_Lcd.arrayPage-1].xStart+2*i);
					}
					else
					{
						HLD_Lcd_drawLineV(arrayChart[g_Lcd.arrayPage-1].xStart+ 2*i - 1
								,arrayChart[g_Lcd.arrayPage-1].yStart + val
								,preVal - val + 1);
						GLCD_putPixel(arrayChart[g_Lcd.arrayPage-1].yStart + val
								,arrayChart[g_Lcd.arrayPage-1].xStart+2*i);
					}
				}
				else if((preVal < arrayChart[g_Lcd.arrayPage-1].yAxis)&&(val >= arrayChart[g_Lcd.arrayPage-1].yAxis))
				{
					HLD_Lcd_drawLineV(arrayChart[g_Lcd.arrayPage-1].xStart+ 2*i - 1
							,arrayChart[g_Lcd.arrayPage-1].yStart + preVal
							,arrayChart[g_Lcd.arrayPage-1].yAxis - preVal + 1);
					GLCD_putPixel(arrayChart[g_Lcd.arrayPage-1].yStart + arrayChart[g_Lcd.arrayPage-1].yAxis
							,arrayChart[g_Lcd.arrayPage-1].xStart+2*i);
				}
				else if((preVal >= arrayChart[g_Lcd.arrayPage-1].yAxis)&&(val < arrayChart[g_Lcd.arrayPage-1].yAxis))
				{
					HLD_Lcd_drawLineV(arrayChart[g_Lcd.arrayPage-1].xStart+ 2*i - 1
							,arrayChart[g_Lcd.arrayPage-1].yStart + val
							,arrayChart[g_Lcd.arrayPage-1].yAxis - val + 1);
					GLCD_putPixel(arrayChart[g_Lcd.arrayPage-1].yStart + val
							,arrayChart[g_Lcd.arrayPage-1].xStart+2*i);
				}
				else
				{

				}
			}
			GLCD_setTextColor(COLOR_BLACK);

		}
*/
	}
}
void HLD_Lcd_run1(void)
{
	/*LCD display routine*/
		if(g_Lcd.isRun)
		{
			/********************************************************************/
			/***********************Variable Display mode************************/
			/********************************************************************/
			if(g_Lcd.array == FALSE)
			{
				/************************Page Routines***********************/
				/*Display pages*/
				switch(g_Lcd.page)
				{
				default: g_Lcd.page = 1;
				/* no break */
				case 1:
				{
					HLD_LcdInterface_page1_1();
				}break;
				case 2:
				{
					HLD_LcdInterface_page2_1();
				}break;
				case 3:
				{
					HLD_LcdInterface_page3_1();
				}break;
				}
			}
		}
}

boolean HLD_Lcd_getButton (TouchButton_t* button)
{
	unsigned int x = 0, y = 0;
	GLCD_GetTouchXY(&x, &y);
	if((x >= button->xmin)&&(x <= button->xmax)&&(y >= button->ymin)&&(y <= button->ymax))
	{
		++(button->accum);
	}
	else
		button->accum = 0;

	if(button->accum >= TOUCH_SEN)
	{
		button->accum = 0;
		return TRUE;
	}
	else
		return FALSE;
}

int Lcd_sprintf(uint8 ln, char const *fmt, ...)
{
	int ret;
	va_list ap;

	va_start(ap, fmt);
	//	ret = usr_vsprintf(buf, fmt, ap);
	ret = vsprintf(g_Lcd.text, fmt, ap);
	va_end(ap);
	GLCD_displayStringLn(ln, g_Lcd.text);

	return ret;
}

int Lcd_sprintf_col(uint8 ln, uint16 col, char const *fmt, ...)
{
	int ret;
	va_list ap;

	va_start(ap, fmt);
	//	ret = usr_vsprintf(buf, fmt, ap);
	ret = vsprintf(g_Lcd.text, fmt, ap);
	va_end(ap);
	GLCD_displayStringLn_col(ln, col, g_Lcd.text);

	return ret;
}
int Lcd_sprintf_col_inv(uint8 ln, uint16 col, char const *fmt, ...)
{
	int ret;
	va_list ap;

	va_start(ap, fmt);
	//	ret = usr_vsprintf(buf, fmt, ap);
	ret = vsprintf(g_Lcd.text, fmt, ap);
	va_end(ap);
	GLCD_displayStringLn_col_inv(ln, col, g_Lcd.text);

	return ret;
}
int Lcd_sprintf_col_inv_enl(uint8 ln, uint16 col, uint16 k, char const *fmt, ...)
{
	int ret;
	va_list ap;

	va_start(ap, fmt);
	//	ret = usr_vsprintf(buf, fmt, ap);
	ret = vsprintf(g_Lcd.text, fmt, ap);
	va_end(ap);
	GLCD_displayStringLn_col_inv_enl(ln, col, k, g_Lcd.text);

	return ret;
}
IFX_INLINE void HLD_Lcd_clearInterface(void)
{
	// GLCD_clreaWindow(0,24,320,168,COLOR_WHITE);
	GLCD_clreaWindow(0,24,320,192,COLOR_WHITE);
}

IFX_STATIC void HLD_Lcd_clearChart(ArrayChart_t* arrayChart,unsigned short color)
{
	unsigned int   x = arrayChart->xStart;
	unsigned int   y = arrayChart->yStart;
	unsigned int   w = arrayChart->xAxis;
	unsigned int   h = arrayChart->yAxis;
	GLCD_clreaWindow(x,y,w,h,color);
}
IFX_INLINE void HLD_Lcd_drawLineH(uint16 xStart, uint16 yStart, uint16 length)
{
	for(uint32 i = 0;i<length;i++)
	{
		GLCD_putPixel(yStart,xStart+i);
	}
}
IFX_INLINE void HLD_Lcd_drawLineV(uint16 xStart, uint16 yStart, uint16 length)
{
	for(uint32 i = 0;i<length;i++)
	{
		GLCD_putPixel(yStart+i,xStart);
	}
}


