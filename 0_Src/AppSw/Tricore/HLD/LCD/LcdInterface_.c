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
typedef union _LcdInterface_PageValue_t
{
		struct
		{
			float32 val0;
			float32 val1;
			float32 val2;
			float32 val3;
			float32 val4;
			float32 val5;
			float32 val6;
			float32 val7;
		} S;
		float32 A[8];
}LcdInterface_PageValue_t;

typedef struct _LcdInterface_PageButtonSet_t
{
	boolean Button0set : 1;
	boolean Button1set : 1;
	boolean Button2set : 1;
	boolean Button3set : 1;
	boolean Button4set : 1;
	boolean Button5set : 1;
	boolean Button6set : 1;
}LcdInterface_PageButtonSet_t;
typedef struct _LcdInterface_PageIndicator_t
{
	boolean Indicator0 : 1;
	char Indicator0Name[NAME_LENGTH];
	boolean Indicator1 : 1;
	char Indicator1Name[NAME_LENGTH];
	boolean Indicator2 : 1;
	char Indicator2Name[NAME_LENGTH];
	boolean Indicator3 : 1;
	char Indicator3Name[NAME_LENGTH];
	boolean Indicator4 : 1;
	char Indicator4Name[NAME_LENGTH];	
}LcdInterface_PageIndicator_t;
typedef struct _LcdInterface_Page_t
{
	LcdInterface_PageValue_t *LcdInterface_PageValue;
	LcdInterface_PageButtonSet_t *LcdInterface_PageButtonSet;
	LcdInterface_PageIndicator_t *Indicator;
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
