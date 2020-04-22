/*
 * MicroSD_Demo.h
 *
 *  Created on: 2020. 4. 14.
 *      Author: Hohyon_Choi
 */

#ifndef _MICROSD_DEMO_H_
#define _MICROSD_DEMO_H_


/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "HLD.h"
#include "microSD.h"
#include "ff.h"
#include "diskio.h"

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

/*
 * MicroSD demo functions
 * more descriptions are in the functions
 */
IFX_EXTERN void MicroSD_Demo_initSD();
IFX_EXTERN void MicroSD_Demo_run();
IFX_EXTERN void MicroSD_Demo_stop();


/******************************************************************************/
/*---------------------Inline Function Implementations------------------------*/
/******************************************************************************/



#endif /* 0_SRC_APPSW_TRICORE_DEMO_MICROSD_MICROSD_DEMO_H_ */