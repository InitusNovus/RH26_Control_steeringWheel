/*
 * Lcd.h
 *
 *  Created on: 2018. 6. 18.
 *      Author: bigbi_000
 */

#ifndef LCD_H_
#define LCD_H_

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/


#include <Ifx_Types.h>
#include "Configuration.h"
#include "ConfigurationIsr.h"

#include "glcd.h"
#include "usr_sprintf.h"
/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define PAGES			3
#define LINES			7

#define TOUCH_XMAX		3740
#define TOUCH_XMIN		210
#define TOUCH_YMAX		3740
#define TOUCH_YMIN		260

#define TOUCH_XPOS(xpos) 	(((TOUCH_XMAX-TOUCH_XMIN)*(xpos)/320) + TOUCH_XMIN)
#define TOUCH_YPOS(ypos)	(((TOUCH_YMAX-TOUCH_YMIN)*(ypos)/240) + TOUCH_YMIN)
/******************************************************************************/
/*------------------------------Type Definitions------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct __attribute__((packed))
{
	struct
	{
		unsigned int x;
		unsigned int y;
	}touch;

	char text[32];		//Text buffer
	uint8 page;
	const uint8 lastPage;
	uint8 arrayPage;
	const uint8 arrayLastPage;

	boolean array:1;
	boolean isRun:1;
	boolean arrayEnabled:1;

}Lcd_t;

typedef struct __attribute__((aligned(2),packed))
{
	uint16 xStart;
	uint16 yStart;
	uint16 xAxis;
	uint16 yAxis;
	uint32 yScale;
	uint8 prevVal[320];
//	uint16 prevVal[320];
}ArrayChart_t;

typedef struct __attribute__((aligned(2),packed))
{
	uint32 accum;
	const uint16 xmin;
	const uint16 xmax;
	const uint16 ymin;
	const uint16 ymax;
}TouchButton_t;
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN Lcd_t g_Lcd;
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
IFX_EXTERN void HLD_Lcd_init(void);
IFX_EXTERN void HLD_Lcd_run(void);
IFX_EXTERN void HLD_Lcd_run1(void);

IFX_EXTERN boolean HLD_Lcd_getButton (TouchButton_t* button);

/*
 * Print values of variables.
 * Argument1: The line to draw button and print values.
 * Argument2...: The format to print.
 * Note:
 * 	For argument1, use  LCD_LINE0 to LCD_LINE6 macro.
 * 	For argument2 and others, use it as printf() fuction.
 * 	All interface printing functions have a bug in handling float values,
 * 	so you must use floatVar() function to print any float value.
 * 	The bug is that
 * 		1) it make program died when the values are very close to zero, e.g. 1.4e-38.
 * 		2) Format specifiers for float value such as "%1.2f" or "%.3f" are regarded as just "%f".
 * Example:
 * 	1)	HLD_LcdInterface_doButton(5, "<- Throttle Reset   ");
 * 	2)	HLD_LcdInterface_d0Button(2, "Test = %4d", Test);
 * */
IFX_EXTERN int Lcd_sprintf(uint8 ln, char const *fmt, ...);
/*
 * Argument2: The column(x position) to print values.
 * Note:
 * 	The others are identical to Lcd_sptrintf() function.
 */
IFX_EXTERN int Lcd_sprintf_col(uint8 ln, uint16 col, char const *fmt, ...);
IFX_EXTERN int Lcd_sprintf_col_inv(uint8 ln, uint16 col, char const *fmt, ...);
int Lcd_sprintf_col_inv_revised(uint8 ln, uint16 col, char const *fmt, ...);
/******************************************************************************/
/*---------------------Inline Function Implementations------------------------*/
/******************************************************************************/


#endif /* LCD_H_ */
