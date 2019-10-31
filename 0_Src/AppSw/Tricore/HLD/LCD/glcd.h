/*====================================================================
* Project:  examples
* Function: low level Graphic LCD (320x240 pixels) functions
*
* Copyright HighTec EDV-Systeme GmbH 1982-2015
*====================================================================*/

#ifndef __GLCD_H__
#define __GLCD_H__

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Colour conversion macros: RGB888 ==> RGB565 */
/* GLCD RGB color definitions (RGB565 format) */
#define COL_R_WIDTH			(5)
#define COL_R_POS			(11)
#define COL_G_WIDTH			(6)
#define COL_G_POS			(5)
#define COL_B_WIDTH			(5)
#define COL_B_POS			(0)

#define COL_PART(x, w, p)	((((x) * (1 << (w))) >> 8) << (p))

#define COL_RGB565(r, g, b)	( COL_PART((r), COL_R_WIDTH, COL_R_POS)\
							| COL_PART((g), COL_G_WIDTH, COL_G_POS)\
							| COL_PART((b), COL_B_WIDTH, COL_B_POS))

#define COLOR_BLACK			COL_RGB565(  0,   0,   0)
#define COLOR_NAVY			COL_RGB565(  0,   0, 127)
#define COLOR_DARKGREEN		COL_RGB565(  0, 127,   0)
#define COLOR_DARKCYAN		COL_RGB565(  0, 127, 127)
#define COLOR_MAROON		COL_RGB565(127,   0,   0)
#define COLOR_PURPLE		COL_RGB565(127,   0, 127)
#define COLOR_OLIVE			COL_RGB565(127, 127,   0)
#define COLOR_LIGHTGREY		COL_RGB565(192, 192, 192)
#define COLOR_DARKGREY		COL_RGB565(127, 127, 127)
#define COLOR_BLUE			COL_RGB565(  0,   0, 255)
#define COLOR_GREEN			COL_RGB565(  0, 255,   0)
#define COLOR_CYAN			COL_RGB565(  0, 255, 255)
#define COLOR_RED			COL_RGB565(255,   0,   0)
#define COLOR_MAGENTA		COL_RGB565(255,   0, 255)
#define COLOR_YELLOW		COL_RGB565(255, 255,   0)
#define COLOR_WHITE			COL_RGB565(255, 255, 255)


/* dimensions of LCD and used font */
#define LCD_WIDTH		320
#define LCD_HEIGHT		240
#define CHAR_HEIGHT		24
#define CHAR_WIDTH		16
#define CHAR_HEIGHT2	65
#define CHAR_WIDTH2		64
#define MAX_LINES		(LCD_HEIGHT / CHAR_HEIGHT)

#ifdef USE_NORMAL_VDIR
/* "normal" vertical direction: bottom to top */
#define LINENO(n)		((n) * CHAR_HEIGHT)
#else
/* "non-normal" vertical direction: top to bottom */
#define LINENO(n)		(((MAX_LINES - (n)) * CHAR_HEIGHT) - 1)
#endif /* USE_NORMAL_VDIR */

#define LINE0			LINENO(0)
#define LINE1			LINENO(1)
#define LINE2			LINENO(2)
#define LINE3			LINENO(3)
#define LINE4			LINENO(4)
#define LINE5			LINENO(5)
#define LINE6			LINENO(6)
#define LINE7			LINENO(7)
#define LINE8			LINENO(8)
#define LINE9			LINENO(9)


extern void GLCD_init(void);
extern void GLCD_clear(unsigned short color);
extern void GLCD_setTextColor(unsigned short color);
extern void GLCD_setBackColor(unsigned short color);
extern void GLCD_displayChar(unsigned int ln, unsigned int col, unsigned char c);
extern void GLCD_displayChar_inv_font2(unsigned int ln, unsigned int col, unsigned char c);
extern void GLCD_displayStringLn(unsigned int ln, const char *s);
extern void GLCD_displayStringLn_col(unsigned int ln, unsigned int col, const char *s);
extern void GLCD_displayStringLn_col_inv(unsigned int ln, unsigned int col, const char *s);
extern void GLCD_bitmap(unsigned int x, unsigned int y, unsigned int w, unsigned int h, const void *bitmap);
extern void GLCD_clreaWindow(unsigned int x, unsigned int y, unsigned int w, unsigned int h, const unsigned short color);
extern void GLCD_clearLn(unsigned int ln);
extern void GLCD_putPixel(unsigned int x, unsigned int y);
extern int  GLCD_getLineNo(unsigned int line);
extern void GLCD_displayStringLn_col_inv_revised(unsigned int ln, unsigned int col, const char *s);
extern void GLCD_displayStringLn_col_inv_revised_font2(unsigned int ln, unsigned int col, const char *s);

/* support for touchscreen */
extern int  GLCD_GetTouchXY(unsigned int *x, unsigned int *y);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* __GLCD_H__ */
