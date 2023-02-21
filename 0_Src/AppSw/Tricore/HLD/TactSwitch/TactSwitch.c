/*
 * TactSwitch.c
 *
 *  Created on: 2023. 2. 14.
 *      Author: legol
 */

#include "TactSwitch.h"

#define TACT_ONHOLD 5

TactSW_t TactSW_T1;
TactSW_t TactSW_T2;
TactSW_t TactSW_T3;
TactSW_t TactSW_T4;

static boolean risingFlag = FALSE;
uint8 bufferCnt = 5;
boolean tactBuffer[2];

void HLD_TactSwitch_init(void)
{
	TactSW_T1.TactName = TACTSWITCH_T1;
	TactSW_T2.TactName = TACTSWITCH_T2;
	TactSW_T3.TactName = TACTSWITCH_T3;
	TactSW_T4.TactName = TACTSWITCH_T4;

	IfxPort_setPinModeInput(TactSW_T1.TactName.port, TactSW_T1.TactName.pinIndex, IfxPort_InputMode_pullUp);
	IfxPort_setPinModeInput(TactSW_T2.TactName.port, TactSW_T2.TactName.pinIndex, IfxPort_InputMode_pullUp);
	IfxPort_setPinModeInput(TactSW_T3.TactName.port, TactSW_T3.TactName.pinIndex, IfxPort_InputMode_pullUp);
	IfxPort_setPinModeInput(TactSW_T4.TactName.port, TactSW_T4.TactName.pinIndex, IfxPort_InputMode_pullUp);

}

static boolean tactCnt1 = TRUE;
static boolean tactCnt2 = TRUE;

void TactSwitch_read1(void){
	tactCnt1 = IfxPort_getPinState(TactSW_T1.TactName.port,TactSW_T1.TactName.pinIndex);

}



void HLD_TactSwitch_run(void)
{

	tactCnt1 = IfxPort_getPinState(TactSW_T1.TactName.port,TactSW_T1.TactName.pinIndex);

	if((tactCnt1 == FALSE)&&(tactCnt2 == TRUE)){//not pressed, now pressed: on
		TactSW_T1.tactOn = TRUE;
	}else if((tactCnt1 == TRUE) && (tactCnt2 == FALSE)){

	}

	/*
	tactBuffer[0] = IfxPort_getPinState(TactSW_T1.TactName.port,TactSW_T1.TactName.pinIndex);
	tactBuffer[1] = IfxPort_getPinState(TactSW_T1.TactName.port,TactSW_T1.TactName.pinIndex);

	TactSW_T1.tactSwitch = tactBuffer[0] && tactBuffer[1];
	uint8 flagPin = 1;
	if((TactSW_T1.tactSwitch == FALSE) && (risingFlag == FALSE)){//pressed
		if(flagPin == 1){
			TactSW_T1.tactOn = TRUE;
			risingFlag = TRUE;
			IfxPort_setPinLow(&MODULE_P13,2);
			flagPin = 0;
		}


	}else if((TactSW_T1.tactSwitch == TRUE) && (risingFlag == TRUE)){//released
		if(flagPin == 1){
			TactSW_T1.tactOn = TRUE;
			IfxPort_setPinLow(&MODULE_P13,2);
			flagPin = 0;
		}


	}else if((TactSW_T1.tactSwitch == FALSE) && (risingFlag == TRUE)){//pressed agian
		if(flagPin == 1){
			TactSW_T1.tactOn = FALSE;
			risingFlag = FALSE;
			IfxPort_setPinHigh(&MODULE_P13,2);
			flagPin = 0;
		}


	}else if((TactSW_T1.tactSwitch == TRUE) && (risingFlag == TRUE)){//released agian
		if(flagPin == 1){
			TactSW_T1.tactOn = FALSE;
			IfxPort_setPinHigh(&MODULE_P13,2);
			flagPin = 0;
		}


	}
	*/

}






/* GPIO Debounce version: 23.02.15
void HLd_TactSwitch_init(void){
	TactSwitch_init();
}


void HLD_TactSwitch_run(void){

	TactSwitch_run(&TactSW_T2);
}

void set_Gpio_Debounce(Gpio_Debounce_input* input, Gpio_Debounce_inputConfig* config, IfxPort_Pin *portNum)
{

	config->bufferLen = Gpio_Debounce_BufferLength_5;
	config->inputMode = IfxPort_InputMode_pullUp;
	config->port = portNum;
	Gpio_Debounce_initInput(input, config);
}

void TactSwitch_init(void)
{
	set_Gpio_Debounce(&TactSW_T1.TactSW_input, &TactSW_T1.TactSW_config,&TACTSWITCH_T1);
	set_Gpio_Debounce(&TactSW_T2.TactSW_input, &TactSW_T2.TactSW_config,&TACTSWITCH_T2);
	set_Gpio_Debounce(&TactSW_T3.TactSW_input, &TactSW_T3.TactSW_config,&TACTSWITCH_T3);
	set_Gpio_Debounce(&TactSW_T4.TactSW_input, &TactSW_T4.TactSW_config,&TACTSWITCH_T4);


}
static boolean risingEdge = FALSE;
void TactSwitch_run(TactSW_t *TSW)
{

	static uint8 pushCount = 0;

	TSW->tactState = Gpio_Debounce_pollInput(&TSW->TactSW_input);//TactSW_T1.TactSW_input);

	if((TSW->tactState == FALSE) && (risingEdge == FALSE)){
		pushCount ++;
		if(pushCount > TACT_ONHOLD){
			TSW->tactOn = TRUE;
			risingEdge = TRUE;
			IfxPort_setPinLow(&MODULE_P13,2);	//test
			pushCount = 0;
		}
	}else if((TSW->tactState == TRUE) && (risingEdge == TRUE)){

		TSW->tactOn = TRUE;
		risingEdge = TRUE;
		IfxPort_setPinLow(&MODULE_P13,2);

	}else if((TSW->tactState == FALSE) && (risingEdge == TRUE)){

		pushCount ++;
		if(pushCount > TACT_ONHOLD){
			TSW->tactOn = FALSE;
			risingEdge = FALSE;
			IfxPort_setPinHigh(&MODULE_P13,2);	//test
			pushCount = 0;
		}

	}else if((TSW->tactState == TRUE) && (risingEdge == FALSE)){

		TSW->tactOn = FALSE;
		risingEdge = FALSE;
		IfxPort_setPinHigh(&MODULE_P13,2);


	}

}
*/

