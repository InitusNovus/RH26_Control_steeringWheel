/*
 * SteeringWheel_main.c
 * Created on: 2020.08.06
 * Author: Dua
 */

/***************************** Includes ******************************/
#include "SteeringWheel_main.h"
#include "RotarySwitch.h"

/**************************** Macro **********************************/


/************************* Data Structures ***************************/


/*********************** Global Variables ****************************/
const uint32 StWhlMsgId1 = 0x00101F00UL;
const uint32 StWhlMsgId2 = 0x00101F01UL;
const uint32 StWhlMsgId3 = 0x00101F02UL;

//const uint32 StWhBattCoolingTXID = 0x237BC01;
//const uint32 StWhRadiCoolingTXID = 0x237C01;
const uint32 StWhlRSWMsgId = 0x237BB01UL;

const uint32 OrionMsgId1 = 0x00001F00UL;
const uint32 OrionMsgId2 = 0x00001F01UL;
const uint32 OrionMsgId3 = 0x00001F02UL;

SteeringWheel_main_t SteeringWheel_main;
SteeringWheel_RSW_t SteeringWheel_RSW;
OrionBms2_t OrionBms2;


/******************* Private Function Prototypes *********************/


/********************* Function Implementation ***********************/
void SteeringWheel_main_init(void)
{
	//main~
	{
		CanCommunication_Message_Config config;
		config.messageId		=	StWhlMsgId1;
        config.frameType		=	IfxMultican_Frame_receive;
        config.dataLen			=	IfxMultican_DataLengthCode_8;
        config.node				=	&CanCommunication_canNode0;
		CanCommunication_initMessage(&SteeringWheel_main.msgObj1, &config);
	}
	{
		CanCommunication_Message_Config config;
		config.messageId 		= 	StWhlMsgId2;
		config.frameType		=	IfxMultican_Frame_receive;
        config.dataLen			=	IfxMultican_DataLengthCode_8;
        config.node				=	&CanCommunication_canNode0;
        CanCommunication_initMessage(&SteeringWheel_main.msgObj2, &config);
	}
	{
		CanCommunication_Message_Config config;
		config.messageId 		= 	StWhlMsgId3;
		config.frameType		=	IfxMultican_Frame_receive;
        config.dataLen			=	IfxMultican_DataLengthCode_4;
        config.node				=	&CanCommunication_canNode0;
        CanCommunication_initMessage(&OrionBms2.msgObj3, &config);
	}
	//~main

	//Orion BMS: 230808 TEST
	{
		CanCommunication_Message_Config config;
		config.messageId 		= 	OrionMsgId3;
		config.frameType		=	IfxMultican_Frame_receive;
        config.dataLen			=	IfxMultican_DataLengthCode_6;
        config.node				=	&CanCommunication_canNode0;
        CanCommunication_initMessage(&SteeringWheel_main.msgObj3, &config);
	}



	//Rotary switch tx~
	{
		CanCommunication_Message_Config config;
		config.messageId = StWhlRSWMsgId;
		config.frameType = IfxMultican_Frame_transmit;
		config.dataLen = IfxMultican_DataLengthCode_8;
		config.node				=	&CanCommunication_canNode0;
		CanCommunication_initMessage(&SteeringWheel_RSW.msgObj_RSW, &config);
	}
	//~RSW
}

void SteeringWheel_main_run(void)
{
	if(CanCommunication_receiveMessage(&SteeringWheel_main.msgObj1))
	{
		SteeringWheel_main.canMsg1.U[0] = SteeringWheel_main.msgObj1.msg.data[0];
		SteeringWheel_main.canMsg1.U[1] = SteeringWheel_main.msgObj1.msg.data[1];
	}
	if(CanCommunication_receiveMessage(&SteeringWheel_main.msgObj2))
	{
		SteeringWheel_main.canMsg2.U[0] = SteeringWheel_main.msgObj2.msg.data[0];
		SteeringWheel_main.canMsg2.U[1] = SteeringWheel_main.msgObj2.msg.data[1];
	}
	if(CanCommunication_receiveMessage(&SteeringWheel_main.msgObj3))
	{
		SteeringWheel_main.canMsg3.U[0] = SteeringWheel_main.msgObj3.msg.data[0];
		SteeringWheel_main.canMsg3.U[1] = SteeringWheel_main.msgObj3.msg.data[1];
	}

	//BMS Receive
	if(CanCommunication_receiveMessage(&OrionBms2.msgObj3))
	{
		OrionBms2.msg3.highTemp = ((OrionBms2.msgObj3.msg.data[0] & 0x000000FF) >> 0);
		OrionBms2.msg3.highCell = ((OrionBms2.msgObj3.msg.data[0] & 0x0000FF00) >> 8);
		OrionBms2.msg3.avgTemp = ((OrionBms2.msgObj3.msg.data[0] & 0x00FF0000) >> 16);
		OrionBms2.msg3.bmsTemp = ((OrionBms2.msgObj3.msg.data[0] & 0xFF000000) >> 24);
		OrionBms2.msg3.lowVoltage = ((OrionBms2.msgObj3.msg.data[1] & 0x0000FFFF) >> 0);
		/*
		while(IfxCpu_acquireMutex(&RVC_public.bms.shared.mutex))
			; // Wait for mutex
		{
			RVC_public.bms.shared.data.highestTemp = (sint8)OrionBms2.msg3.highTemp;
			RVC_public.bms.shared.data.averageTemp = (sint8)OrionBms2.msg3.avgTemp;
			RVC_public.bms.shared.data.bmsTemp = (sint8)OrionBms2.msg3.bmsTemp;
			RVC_public.bms.shared.data.lowestVoltage = (float32)OrionBms2.msg3.lowVoltage/10000;
			// RVC_public.bms.shared.isUpdated = TRUE;
			IfxCpu_releaseMutex(&RVC_public.bms.shared.mutex);
		}
		*/
	}



}

void SteeringWheel_run_10ms(void) {
	SteeringWheel_RSW.RSWMsg.S.RSW1 = RSW_R1.resultTot;
	SteeringWheel_RSW.RSWMsg.S.RSW2 = RSW_R2.resultTot;
	SteeringWheel_RSW.RSWMsg.S.RSW3 = RSW_R3.resultTot;
	CanCommunication_setMessageData(SteeringWheel_RSW.RSWMsg.U[0], SteeringWheel_RSW.RSWMsg.U[1], &SteeringWheel_RSW.msgObj_RSW);

	CanCommunication_transmitMessage(&SteeringWheel_RSW.msgObj_RSW);
}

//July 11th 2023 To-Do
//Create a rotary button message.

//void SteeringWheel_main_TX_init(void)
//{
//	{
//		CanCommunication_Message_Config config;
//		config.messageId		=	StWhBattCoolingTXID;
//        config.frameType		=	IfxMultican_Frame_transmit;
//        config.dataLen			=	IfxMultican_DataLengthCode_8;
//        config.node				=	&CanCommunication_canNode0;
//		CanCommunication_initMessage(&SteeringWheel_main.msgObj4_Cooling_TX, &config);
//	}
///*
//	{
//		CanCommunication_Message_Config config;
//		config.messageId		=	StWhRadiCoolingTXID;
//        config.frameType		=	IfxMultican_Frame_transmit;
//        config.dataLen			=	IfxMultican_DataLengthCode_8;
//        config.node				=	&CanCommunication_canNode0;
//		CanCommunication_initMessage(&SteeringWheel_main.msgObj5_RadiCooling_TX, &config);
//	}
//*/
//
//}
//
//void SteeringWheel_main_TX_run(void)
//{
//	if((RSW_R1.resultTot == 4) || (RSW_R1.resultTot == 5) || (RSW_R1.resultTot == 6)){
//
//		SteeringWheel_main.canMsg4_Cooling_TX.S.TCControlMode = 0;
//	}else if(RSW_R1.resultTot != 9){
//
//		SteeringWheel_main.canMsg4_Cooling_TX.S.TCControlMode = 1;
//	}
//
//	if(SteeringWheel_main.canMsg4_Cooling_TX.S.TCControlMode){
//
//		SteeringWheel_main.canMsg4_Cooling_TX.S.StTCOrderDuty_Batt = RSW_R1.resultCAN;
//		SteeringWheel_main.canMsg4_Cooling_TX.S.StTCOrderDuty_Radi = RSW_R1.resultCAN;
///*
//		SteeringWheel_main.canMsg4_BattCooling_TX.S.TCFanDutyOrder_SegmentExhaust60 = RSW_R1.resultCAN;
//		SteeringWheel_main.canMsg4_BattCooling_TX.S.TCFanDutyOrder_SegmentExhaust80 = RSW_R1.resultCAN;
//		SteeringWheel_main.canMsg4_BattCooling_TX.S.TCFanDutyOrder_SegmentIntake70 = RSW_R1.resultCAN;
//		SteeringWheel_main.canMsg4_BattCooling_TX.S.TCFanDutyOrder_SideIntake = RSW_R1.resultCAN;
//*/
//	}
//
//	CanCommunication_setMessageData(SteeringWheel_main.canMsg4_Cooling_TX.TxData[0],
//									SteeringWheel_main.canMsg4_Cooling_TX.TxData[1],
//									&SteeringWheel_main.canMsg4_Cooling_TX);
//
//	CanCommunication_transmitMessage(&SteeringWheel_main.msgObj4_Cooling_TX);
//
//}



