/*
 * SteeringWheel_main.h
 * Created on: 2020.08.06
 * Author: Dua
 */
#ifndef STEERINGWHEEL_MAIN_H
#define STEERINGWHEEL_MAIN_H
/***************************** Includes ******************************/
#include "CanCommunication.h"
#include "SteeringWheel_canMessage.h"

/**************************** Macro **********************************/


/************************* Data Structures ***************************/
// Terry on July 11th 2023:
// Keep this structure dedicated for RX only.
typedef struct 
{
	CanCommunication_Message msgObj1;
	CanCommunication_Message msgObj2;
	CanCommunication_Message msgObj3;
//	CanCommunication_Message msgObj4_Cooling_TX;
//CanCommunication_Message msgObj5_RadiCooling_TX;

	SteeringWheel_canMsg1_t canMsg1;
	SteeringWheel_canMsg2_t canMsg2;
	SteeringWheel_canMsg3_t canMsg3;
//	SteeringWheel_canMsg4_Cooling_t canMsg4_Cooling_TX;
//	SteeringWheel_canMsg5_RadiCooling_t canMsg5_RadiCooling_TX;
}SteeringWheel_main_t;

typedef struct
{
	CanCommunication_Message msgObj_RSW;
	SteeringWheel_RSWMsg_t RSWMsg;
}SteeringWheel_RSW_t;

/************************ Global Variables ***************************/
IFX_EXTERN SteeringWheel_main_t SteeringWheel_main;
IFX_EXTERN SteeringWheel_RSW_t SteeringWheel_RSW;

/*********************** Function Prototypes *************************/
IFX_EXTERN void SteeringWheel_main_init(void);
IFX_EXTERN void SteeringWheel_main_run(void);
//IFX_EXTERN void SteeringWheel_main_TX_init(void);
//IFX_EXTERN void SteeringWheel_main_TX_run(void);



#endif
