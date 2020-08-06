/*
 * SteeringWheel_main.c
 * Created on: 2020.08.06
 * Author: Dua
 */

/***************************** Includes ******************************/
#include "SteeringWheel_main.h"

/**************************** Macro **********************************/


/************************* Data Structures ***************************/


/*********************** Global Variables ****************************/
const uint32 StWhlMsgId1 = 0x00101F00UL;
const uint32 StWhlMsgId2 = 0x00101F01UL;
const uint32 StWhlMsgId3 = 0x00101F02UL;

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