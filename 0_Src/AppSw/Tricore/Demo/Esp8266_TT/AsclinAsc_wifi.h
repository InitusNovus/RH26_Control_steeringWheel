/*
 * AsclinAsc_wifi.h
 *
 *  Created on: 2020. 4. 21.
 *      Author: Hohyon Choi
 */

#ifndef _ASCLINASC_WIFI_H_
#define _ASCLINASC_WIFI_H_


/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "AsclinAsc.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Type Definitions------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

IFX_EXTERN void AsclinAsc_wifi_sendStr(char *str);
IFX_EXTERN void AsclinAsc_wifi_printfEcho();
IFX_EXTERN void AsclinAsc_wifi_sendStrAndEcho(char *str,Ifx_TickTime time);
IFX_EXTERN void AsclinAsc_wifi_sendConfigATCmd();


#endif /* 0_SRC_APPSW_TRICORE_HLD_BASICMODULES_ASC_ASCLINASC_WIFI_H_ */