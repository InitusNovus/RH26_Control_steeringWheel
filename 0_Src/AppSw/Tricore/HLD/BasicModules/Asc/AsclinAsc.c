/*
 * AsclinAsc.c
 *
 *  Created on: 2020. 4. 20.
 *      Author: Hohyon Choi
 */



/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "AsclinAsc.h"
#include <stdio.h>
/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
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
AsclinAsc_t g_AsclinAsc;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

IFX_INTERRUPT(ISR_AsclinAsc_Tx, 0, ISR_PRIORITY_ASC0_ASC_TX);
IFX_INTERRUPT(ISR_AsclinAsc_Rx, 0, ISR_PRIORITY_ASC0_ASC_RX);
IFX_INTERRUPT(ISR_AsclinAsc_Er, 0, ISR_PRIORITY_ASC0_ASC_ER);


void ISR_AsclinAsc_Tx(){
	IfxCpu_enableInterrupts();
	IfxAsclin_Asc_isrTransmit(&g_AsclinAsc.driver);
}

void ISR_AsclinAsc_Rx(){
	IfxCpu_enableInterrupts();
	IfxAsclin_Asc_isrReceive(&g_AsclinAsc.driver);
}

void ISR_AsclinAsc_Er(){
	IfxCpu_enableInterrupts();
	IfxAsclin_Asc_isrError(&g_AsclinAsc.driver);
}


void HLD_AsclinAsc_moduleInit(){
	/** - Serial interface */
	IfxAsclin_Asc_Config config;
	IfxAsclin_Asc_initModuleConfig(&config, &MODULE_ASCLIN0);
	config.baudrate.baudrate             = ASC_BAUDRATE;
	config.baudrate.oversampling         = IfxAsclin_OversamplingFactor_16;
	config.bitTiming.medianFilter        = IfxAsclin_SamplesPerBit_three;
	config.bitTiming.samplePointPosition = IfxAsclin_SamplePointPosition_8;
	config.frame.shiftDir = IfxAsclin_ShiftDirection_lsbFirst;
	config.frame.stopBit = IfxAsclin_StopBit_1;
	config.frame.frameMode = IfxAsclin_FrameMode_asc;
	config.interrupt.rxPriority          = ISR_PRIORITY_ASC0_ASC_RX;
	config.interrupt.txPriority          = ISR_PRIORITY_ASC0_ASC_TX;
	config.interrupt.erPriority          = ISR_PRIORITY_ASC0_ASC_ER;
	config.interrupt.typeOfService       = ISR_PROVIDER_ASC_0;
	IfxAsclin_Asc_Pins ascPins = {
			.cts       = NULL_PTR,
			.ctsMode   = IfxPort_InputMode_noPullDevice,
			.rx        = &ASC0_RX,
			.rxMode    = IfxPort_InputMode_pullUp,
			.rts       = NULL_PTR,
			.rtsMode   = IfxPort_OutputMode_pushPull,
			.tx        = &ASC0_TX,
			.txMode    = IfxPort_Mode_outputPushPullAlt2,
			.pinDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1
	};

	config.pins         = &ascPins;
	config.rxBuffer     = g_AsclinAsc.buffer.rx;
	config.txBuffer     = g_AsclinAsc.buffer.tx;
	config.txBufferSize = ASC_TX_BUFFER_SIZE;
	config.rxBufferSize = ASC_RX_BUFFER_SIZE;
	IfxAsclin_Asc_initModule(&g_AsclinAsc.driver, &config);
}

