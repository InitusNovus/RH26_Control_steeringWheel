/*
 * Display.c
 *
 *  Created on: 2018. 8. 13.
 *      Author: bigbi_000
 */


/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <HLD.h>
#include <Display.h>
/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define RPM2RADPS	0.10471975512f
#define FINALRATIO	4.54545454545f
#define WSPD2VEL	0.286f
#define MPS2KPH		3.6f
/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
HLD_Display_t HLD_Display;
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void HLD_Display_parsing_run (void)
{
/*	HLD_Display.kph = (((float32)conMsg1.rpm)*RPM2RADPS/FINALRATIO)*WSPD2VEL*MPS2KPH;
	HLD_Display.conTemp = conMsg2.conTemp;
	HLD_Display.motTemp = conMsg2.motTemp;
	HLD_Display.batVolt = conMsg1.batVoltage;*/
}

