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

const uint32 StWhBattCoolingTXID = 0x237BC01;
const uint32 StWhRadiCoolingTXID = 0x237C01;


SteeringWheel_main_t SteeringWheel_main;

/******************* Private Function Prototypes *********************/


/********************* Function Implementation ***********************/
void SteeringWheel_main_init(void)
{
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
        CanCommunication_initMessage(&SteeringWheel_main.msgObj3, &config);
	}
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
		SteeringWheel_main.canMsg3.U = SteeringWheel_main.msgObj3.msg.data[0];
	}
}


void SteeringWheel_main_TX_init(void)
{
	{
		CanCommunication_Message_Config config;
		config.messageId		=	StWhBattCoolingTXID;
        config.frameType		=	IfxMultican_Frame_transmit;
        config.dataLen			=	IfxMultican_DataLengthCode_8;
        config.node				=	&CanCommunication_canNode0;
		CanCommunication_initMessage(&SteeringWheel_main.msgObj4_BattCooling_TX, &config);
	}

	{
		CanCommunication_Message_Config config;
		config.messageId		=	StWhRadiCoolingTXID;
        config.frameType		=	IfxMultican_Frame_transmit;
        config.dataLen			=	IfxMultican_DataLengthCode_8;
        config.node				=	&CanCommunication_canNode0;
		CanCommunication_initMessage(&SteeringWheel_main.msgObj5_RadiCooling_TX, &config);
	}


}

void SteeringWheel_main_TX_run(void)
{
	if(SteeringWheel_main.canMsg4_BattCooling_TX.S.TCControlMode){

		SteeringWheel_main.canMsg4_BattCooling_TX.S.TCFanDutyOrder_SegmentExhaust60 = RSW_R1.resultCAN;
		SteeringWheel_main.canMsg4_BattCooling_TX.S.TCFanDutyOrder_SegmentExhaust80 = RSW_R1.resultCAN;
		SteeringWheel_main.canMsg4_BattCooling_TX.S.TCFanDutyOrder_SegmentIntake70 = RSW_R1.resultCAN;
		SteeringWheel_main.canMsg4_BattCooling_TX.S.TCFanDutyOrder_SideIntake = RSW_R1.resultCAN;
	}

	CanCommunication_setMessageData(SteeringWheel_main.canMsg4_BattCooling_TX.TxData[0],
									SteeringWheel_main.canMsg4_BattCooling_TX.TxData[1],
									&SteeringWheel_main.msgObj4_BattCooling_TX);

	CanCommunication_transmitMessage(&SteeringWheel_main.msgObj4_BattCooling_TX);

}



