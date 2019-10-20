/*
 * LcdInterface.h
 *
 *  Created on: 2018. 6. 20.
 *      Author: bigbi_000
 */

#ifndef LCDINTERFACE_H_
#define LCDINTERFACE_H_

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Ifx_Types.h>
#include "Configuration.h"
#include "ConfigurationIsr.h"

#include "Lcd.h"
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
// * Unused function. It will be removed in a future release.
 * Temporarily used functions.
 */
IFX_EXTERN void HLD_LcdInterface_init(void);
IFX_EXTERN void HLD_LcdInterface_setPage(void);
/*
 * LCD interface implementation functions.
 * Note: More detail description is given in the definition.
 */
IFX_EXTERN void HLD_LcdInterface_page1(void);
IFX_EXTERN void HLD_LcdInterface_page2(void);
IFX_EXTERN void HLD_LcdInterface_page3(void);
IFX_EXTERN void HLD_LcdInterface_page1_1(void);
IFX_EXTERN void HLD_LcdInterface_page2_1(void);
IFX_EXTERN void HLD_LcdInterface_page3_1(void);
/*
 * LCD interface button implementation functions.
 * Note: More detail description is given in the definition.
 */
IFX_EXTERN void HLD_LcdInterface_doStart(void);
IFX_EXTERN void HLD_LcdInterface_doStop(void);
/******************************************************************************/
/*---------------------Inline Function Implementations------------------------*/
/******************************************************************************/


#endif /* 0_SRC_APPSW_TRICORE_HLD_LCDINTERFACE_H_ */
