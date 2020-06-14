/*
 * LcdInterface_.c
 *
 *  Created on: 2020. 6. 13.
 *      Author: MSBean
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "LcdInterface_.h"
#include "HLD.h"
#include "User.h"

#include "Numbers5076i.h"
#include "UD_buttons.h"

#include "FloatSeparation.h"

#include <stdarg.h>
#include <stdio.h>
/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define NAME_LENGTH 10

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/
/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/*****************************************************************************/
typedef enum
{
	PageLayout0,
	PageLayout1,
	PageLayout2,
	PageLayout3,
	PageLayout4,
} LcdInterface_PageLayout_t;
typedef struct _LcdInterface_Page_t
{
	LcdInterface_PageLayout_t LcdInterface_PageLayout;
	union {
		struct
		{
			float32 inc0;
			float32 inc1;
			float32 inc2;
			float32 inc3;
			float32 inc4;
			float32 inc5;
			float32 inc6;
			float32 inc7;
		} S;
		float32 A[8];
	} Increment;

	struct
	{
		boolean Button0set : 1;
		boolean Button1set : 1;
		boolean Button2set : 1;
		boolean Button3set : 1;
		boolean Button4set : 1;
		boolean Button5set : 1;
		boolean Button6set : 1;
	};

	boolean Indicator0 : 1;
	boolean Indicator1 : 1;
	boolean Indicator2 : 1;
	boolean Indicator3 : 1;
	boolean Indicator4 : 1;
	struct _LcdInterface_Page_t *next;
	struct _LcdInterface_Page_t *prev;
} LcdInterface_Page_t;
typedef struct _LcdInterface_List_t
{
	LcdInterface_Page_t *head;
	LcdInterface_Page_t *cur;
	uint8 listNum;
}LcdInterface_List_t;
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*----------------------Static Function Implementations-----------------------*/
/******************************************************************************/
