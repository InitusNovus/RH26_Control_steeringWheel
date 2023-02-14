/*
 * TactSwitch.c
 *
 *  Created on: 2023. 2. 14.
 *      Author: legol
 */

#include "TactSwitch.h"
//#include "Gpio_Debounce.h"
#include "IfxPort.h"


#define TACT_ONHOLD 10

TactSW_t TactSW_T1;
TactSW_t TactSW_T2;
TactSW_t TactSW_T3;
TactSW_t TactSW_T4;



/*
void testGPIO(void){
	boolean button1;
	boolean button2;
	IfxPort_setPinModeInput(&MODULE_P15,2,IfxPort_InputMode_pullUp);
	button1 = IfxPort_getPinState(&MODULE_P15,2);
	button2 = IfxPort_getPinState(&MODULE_P15,2);
	if(button1 == TRUE && button2 == TRUE){
		IfxPort_setPinLow(&MODULE_P13,2);	//High == off
		IfxPort_setPinLow(&MODULE_P13,1);
	}else{
		IfxPort_setPinLow(&MODULE_P13,1);
		IfxPort_setPinHigh(&MODULE_P13,2);
	}
}
*/

void HLd_TactSwitch_init(void){
	TactSwitch_init();
}


void HLD_TactSwitch_run(void){

	TactSwitch_run();
}



void TactSwitch_init(void){

	Gpio_Debounce_initInputConfig(&TactSW_T1.TactSW1_config);
	TactSW_T1.TactSW1_config.bufferLen = Gpio_Debounce_BufferLength_10;
	TactSW_T1.TactSW1_config.inputMode = IfxPort_InputMode_noPullDevice;
	TactSW_T1.TactSW1_config.port = &TACTSWITCH_T1;
	Gpio_Debounce_initInput(&TactSW_T1.TactSW1_input, &TactSW_T1.TactSW1_config);

}

void TactSwitch_run(void){

	static boolean risingEdge = FALSE;
	static uint8 pushCount = 0;

	IfxPort_setPinModeInput(&TACTSWITCH_T1.port,&TACTSWITCH_T1.pinIndex,IfxPort_InputMode_pullUp);
	TactSW_T1.tactState = 	Gpio_Debounce_pollInput(&TactSW_T1.TactSW1_input);

	if((TactSW_T1.tactState == FALSE) && (risingEdge == FALSE)){

		pushCount ++;

		if(pushCount > TACT_ONHOLD){
			TactSW_T1.tactOn = TRUE;
			risingEdge = TRUE;
			IfxPort_setPinLow(&MODULE_P13,2);	//test
		}

	}else if((TactSW_T1.tactState == FALSE) && (risingEdge == TRUE)){
		TactSW_T1.tactOn = FALSE;
		risingEdge = FALSE;
		IfxPort_setPinHigh(&MODULE_P13,2);	//test
	}


}
