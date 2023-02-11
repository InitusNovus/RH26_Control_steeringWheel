/*
 * RotarySwitch.c
 *
 *  Created on: 2023. 2. 8.
 *      Author: legol
 */
#include "RotarySwitch.h"
#include "IfxPort.h"

#define RSW_ONHOLD 9			//0.5sec

RSWStruct_t RSW_R1;
RSWStruct_t RSW_R2;
RSWStruct_t RSW_R3;


void testGPIO(void){
	boolean button1;
	boolean button2;
	IfxPort_setPinModeInput(&MODULE_P15,4,IfxPort_InputMode_pullDown);
	button1 = IfxPort_getPinState(&MODULE_P15,4);
	button2 = IfxPort_getPinState(&MODULE_P15,4);
	if(button1 == TRUE && button2 == TRUE){
		IfxPort_setPinLow(&MODULE_P13,2);	//High == off
		IfxPort_setPinLow(&MODULE_P13,1);
	}else{
		IfxPort_setPinLow(&MODULE_P13,1);
		IfxPort_setPinHigh(&MODULE_P13,2);
	}
}


void HLD_RotarySwitch_init(void)
{
	RSW_R1.pinName1 = ROTARYSWITCH_R1_1;
	RSW_R1.pinName2 = ROTARYSWITCH_R1_2;
	RSW_R1.pinName4 = ROTARYSWITCH_R1_4;
	RSW_R1.pinName8 = ROTARYSWITCH_R1_8;
	RSW_R2.pinName1 = ROTARYSWITCH_R2_1;
	RSW_R2.pinName2 = ROTARYSWITCH_R2_2;
	RSW_R2.pinName4 = ROTARYSWITCH_R2_4;
	RSW_R2.pinName8 = ROTARYSWITCH_R2_8;
	RSW_R3.pinName1 = ROTARYSWITCH_R3_1;
	RSW_R3.pinName2 = ROTARYSWITCH_R3_2;
	RSW_R3.pinName4 = ROTARYSWITCH_R3_4;
	RSW_R3.pinName8 = ROTARYSWITCH_R3_8;
	RotarySwitch_init(&RSW_R1);
	RotarySwitch_init(&RSW_R2);
	RotarySwitch_init(&RSW_R3);

}

void HLD_RotarySwitch_run(void){
	RSW_Gpio_read(&RSW_R1);
	RSW_Gpio_read(&RSW_R2);
	RSW_Gpio_read(&RSW_R3);

}


void RotarySwitch_init(RSWStruct_t *RSW){
	IfxPort_setPinModeInput(RSW->pinName1.port,RSW->pinName1.pinIndex,IfxPort_InputMode_pullUp);
	IfxPort_setPinModeInput(RSW->pinName2.port,RSW->pinName2.pinIndex,IfxPort_InputMode_pullUp);
	IfxPort_setPinModeInput(RSW->pinName4.port,RSW->pinName4.pinIndex,IfxPort_InputMode_pullUp);
	IfxPort_setPinModeInput(RSW->pinName8.port,RSW->pinName8.pinIndex,IfxPort_InputMode_pullUp);

}

void RSW_Gpio_read(RSWStruct_t *RSW){

	if(!(IfxPort_getPinState(RSW->pinName1.port,RSW->pinName1.pinIndex))){
		RSW->resultPin1 = 1;
	}else{
		RSW->resultPin1 = 0;
	}

	if(!(IfxPort_getPinState(RSW->pinName2.port,RSW->pinName2.pinIndex))){
		RSW->resultPin2 = 1;
	}else{
		RSW->resultPin2 = 0;
	}

	if(!(IfxPort_getPinState(RSW->pinName4.port,RSW->pinName4.pinIndex))){
		RSW->resultPin4 = 1;
	}else{
		RSW->resultPin4 = 0;
	}

	if(!(IfxPort_getPinState(RSW->pinName8.port,RSW->pinName8.pinIndex))){
		RSW->resultPin8 = 1;
	}else{
		RSW->resultPin8 = 0;
	}

	RSW->resultTot = 1*RSW->resultPin1+2*RSW->resultPin2+4*RSW->resultPin4+8*RSW->resultPin8;
	if(RSW->resultTot>10){
		RSW->resultTot = 20- RSW->resultTot;
	}else{
		RSW->resultTot = 10-RSW->resultTot;
	}



}



/*

void RSW1_GPIO_Read(void){

	IfxPort_setPinModeInput(ROTARYSWITCH_R1_1.port,ROTARYSWITCH_R1_1.pinIndex,IfxPort_InputMode_pullUp);
	if(!IfxPort_getPinState(&MODULE_P00,8)){
		result1 = 1;
	}else{
		result1 = 0;
	}
	IfxPort_setPinModeInput(ROTARYSWITCH_R1_2.port,ROTARYSWITCH_R1_2.pinIndex,IfxPort_InputMode_pullUp);
	if(!IfxPort_getPinState(&MODULE_P00,6)){
		result2 = 1;
	}else{
		result2 = 0;
	}
	IfxPort_setPinModeInput(&MODULE_P00,4,IfxPort_InputMode_pullUp);
	if(!IfxPort_getPinState(&MODULE_P00,4)){
		result4 = 1;
	}else{
		result4 = 0;
	}
	IfxPort_setPinModeInput(&MODULE_P00,2,IfxPort_InputMode_pullUp);
	if(!IfxPort_getPinState(&MODULE_P00,2)){
		result8 = 1;
	}else{
		result8 = 0;
	}

	resultFin = 1*result1+2*result2+4*result4+8*result8;
	if(resultFin>10){
		RSW_R1.RSWResult = 20- (1*result1+2*result2+4*result4+8*result8);
	}else{
		RSW_R1.RSWResult = 10-(1*result1+2*result2+4*result4+8*result8);
	}

}
void RSW2_GPIO_Read(void){
	uint8 result1;
	uint8 result2;
	uint8 result4;
	uint8 result8;
	if(IfxPort_getPinState(&MODULE_P33,4)){
		result1 = 8;
	}else{
		result1 = 0;
	}

	if(IfxPort_getPinState(&MODULE_P33,5)){
		result2 = 1;
	}else{
		result2 = 0;
	}

	if(IfxPort_getPinState(&MODULE_P33,2)){
		result4 = 1;
	}else{
		result4 = 0;
	}

	if(IfxPort_getPinState(&MODULE_P33,3)){
		result8 = 1;
	}else{
		result8 = 0;
	}
//	uint8 result1 = 1*(uint8)IfxPort_getPinState(&MODULE_P00,8);
//	uint8 result2 = 2*(uint8)IfxPort_getPinState(&MODULE_P00,6);
//	uint8 result4 = 4*(uint8)IfxPort_getPinState(&MODULE_P00,4);
//	uint8 result8 = 8*(uint8)IfxPort_getPinState(&MODULE_P00,2);
	RSW_R2.RSWResult = result1+result2+result4+result8;
}

void RSW3_GPIO_Read(void){
	uint8 result1;
	uint8 result2;
	uint8 result4;
	uint8 result8;
	if(IfxPort_getPinState(&MODULE_P33,12)){
		result1 = 1;
	}else{
		result1 = 0;
	}

	if(IfxPort_getPinState(&MODULE_P33,1)){
		result2 = 1;
	}else{
		result2 = 0;
	}

	if(IfxPort_getPinState(&MODULE_P33,6)){
		result4 = 1;
	}else{
		result4 = 0;
	}

	if(IfxPort_getPinState(&MODULE_P33,8)){
		result8 = 1;
	}else{
		result8 = 0;
	}
//	uint8 result1 = 1*(uint8)IfxPort_getPinState(&MODULE_P00,8);
//	uint8 result2 = 2*(uint8)IfxPort_getPinState(&MODULE_P00,6);
//	uint8 result4 = 4*(uint8)IfxPort_getPinState(&MODULE_P00,4);
//	uint8 result8 = 8*(uint8)IfxPort_getPinState(&MODULE_P00,2);
	RSW_R3.RSWResult = result1+result2+result4+result8;
}

*/


/*
 * NOT USE THIS CODE!!
 */
//void HLD_RotarySwitch_init(void)
//{
//	RotarySwitch1_init();
//	RotarySwitch2_init();
//	RotarySwitch3_init();
//
//}
//
//void HLD_RotarySwitch_run(void)
//{
///*
//	RotarySwitch_read(&RSW_R1);
//	RotarySwitch_read(&RSW_R2);
//	RotarySwitch_read(&RSW_R3);
//*/
////	testGPIO();
//
//
//	RSW1_GPIO_Read();
//	RSW2_GPIO_Read();
//	RSW3_GPIO_Read();
//
//}
//
//
//RSWStruct RSW_R1;
//RSWStruct RSW_R2;
//RSWStruct RSW_R3;
//
//void set_Gpio_Debounce(Gpio_Debounce_input* input, Gpio_Debounce_inputConfig* config, IfxPort_Pin *portNum)
//{
//	config->bufferLen = Gpio_Debounce_BufferLength_10;
//	config->inputMode = IfxPort_InputMode_noPullDevice; ///
//	config->port = portNum;
//	Gpio_Debounce_initInput(input, config);
///*
//	Gpio_Debounce_initInputConfig(config);
//	config->bufferLen = Gpio_Debounce_BufferLength_10;
//	config->inputMode = IfxPort_InputMode_noPullDevice; ///
//	config->port = portNum;
//	Gpio_Debounce_initInput(input, config);
//	*/
//
//}
//
//void RotarySwitch1_init(void)
//{
//	set_Gpio_Debounce(&RSW_R1.RSWinput1, &RSW_R1.RSWinputConfig1,&ROTARYSWITCH_R1_1);
//	set_Gpio_Debounce(&RSW_R1.RSWinput2, &RSW_R1.RSWinputConfig2,&ROTARYSWITCH_R1_2);
//	set_Gpio_Debounce(&RSW_R1.RSWinput4, &RSW_R1.RSWinputConfig4,&ROTARYSWITCH_R1_4);
//	set_Gpio_Debounce(&RSW_R1.RSWinput8, &RSW_R1.RSWinputConfig8,&ROTARYSWITCH_R1_8);
//}
//
//void RotarySwitch2_init(void)
//{
//	set_Gpio_Debounce(&RSW_R2.RSWinput1, &RSW_R2.RSWinputConfig1,&ROTARYSWITCH_R2_2);
//	set_Gpio_Debounce(&RSW_R2.RSWinput2, &RSW_R2.RSWinputConfig2,&ROTARYSWITCH_R2_2);
//	set_Gpio_Debounce(&RSW_R2.RSWinput4, &RSW_R2.RSWinputConfig4,&ROTARYSWITCH_R2_4);
//	set_Gpio_Debounce(&RSW_R2.RSWinput8, &RSW_R2.RSWinputConfig8,&ROTARYSWITCH_R2_8);
//
//}
//
//void RotarySwitch3_init(void)
//{
//	set_Gpio_Debounce(&RSW_R3.RSWinput1, &RSW_R3.RSWinputConfig1,&ROTARYSWITCH_R3_1);
//	set_Gpio_Debounce(&RSW_R3.RSWinput2, &RSW_R3.RSWinputConfig2,&ROTARYSWITCH_R3_2);
//	set_Gpio_Debounce(&RSW_R3.RSWinput4, &RSW_R3.RSWinputConfig4,&ROTARYSWITCH_R3_4);
//	set_Gpio_Debounce(&RSW_R3.RSWinput8, &RSW_R3.RSWinputConfig8,&ROTARYSWITCH_R3_8);
//
//}
//
//
//void RotarySwitch_read(RSWStruct *RSW_R)
//{
////	static boolean RSWrisingEdgeFlag = FALSE;
//	static uint8 RSWOnCount1 = 0;
//	static uint8 RSWOnCount2 = 0;
//	static uint8 RSWOnCount4 = 0;
//	static uint8 RSWOnCount8 = 0;
//
//	RSW_R->pinState1 = FALSE;
//	IfxPort_setPinModeInput(RSW_R->RSWinput1.port->port,RSW_R->RSWinput1.port->pinIndex,IfxPort_InputMode_pullUp);
//	RSW_R->pinState1 = Gpio_Debounce_pollInput(&RSW_R->RSWinput1);
//
//	RSW_R->pinState2 = FALSE;
//	IfxPort_setPinModeInput(RSW_R->RSWinput2.port->port,RSW_R->RSWinput2.port->pinIndex,IfxPort_InputMode_pullUp);
//	RSW_R->pinState2 = Gpio_Debounce_pollInput(&RSW_R->RSWinput2);
//
//	RSW_R->pinState4 = FALSE;
//	IfxPort_setPinModeInput(RSW_R->RSWinput4.port->port,RSW_R->RSWinput4.port->pinIndex,IfxPort_InputMode_pullUp);
//	RSW_R->pinState4 = Gpio_Debounce_pollInput(&RSW_R->RSWinput4);
//
//	RSW_R->pinState8 = FALSE;
//	IfxPort_setPinModeInput(RSW_R->RSWinput8.port->port,RSW_R->RSWinput8.port->pinIndex,IfxPort_InputMode_pullUp);
//	RSW_R->pinState8 = Gpio_Debounce_pollInput(&RSW_R->RSWinput8);
//
//	if((RSW_R->pinState1 == FALSE))
//	{
////			RSW_R3.RSWResult = 1;
//			RSW_R->RSWResult1 = 1;
////			RSWOnCount1 = 0;
//	}else{
////			RSW_R3.RSWResult = 0;
//			RSW_R->RSWResult1 = 0;
//	}
//
//
//	if((RSW_R->pinState2 == FALSE))//) && (RSWrisingEdgeFlag == FALSE))
//	{
////		RSWOnCount2 = RSWOnCount2+1;
////		if(RSWOnCount2 > RSW_ONHOLD)
////		{
//			RSW_R->RSWResult2 = 1;
////			RSWOnCount2 = 0;
//		}else{
//			RSW_R->RSWResult2 = 0;
//		}
//
//	if((RSW_R->pinState4 == FALSE))// && (RSWrisingEdgeFlag == FALSE))
//	{
////		RSWOnCount4 = RSWOnCount4+1;
////		if(RSWOnCount4 > RSW_ONHOLD)
////		{
//			RSW_R->RSWResult4 = 1;
////			RSWOnCount4 = 0;
//		}else{
//			RSW_R->RSWResult4 = 0;
//		}
////	}
//
//	if((RSW_R->pinState8 == FALSE))// && (RSWrisingEdgeFlag == FALSE))
//	{
////		RSWOnCount8 = RSWOnCount8+1;
////		if(RSWOnCount8 > RSW_ONHOLD)
////		{
//			RSW_R->RSWResult8 = 1;
////			RSWOnCount8 = 0;
//		}else{
//			RSW_R->RSWResult8 = 0;
//		}
////	}
//
//	uint8 resultFin;
//	resultFin = 1*RSW_R->RSWResult1+2*RSW_R->RSWResult2+4*RSW_R->RSWResult4+8*RSW_R->RSWResult8;
//	if(resultFin>10){
//		RSW_R1.RSWResult = 20- resultFin;
//	}else{
//		RSW_R1.RSWResult = 10-resultFin;
//	}
//
//}
