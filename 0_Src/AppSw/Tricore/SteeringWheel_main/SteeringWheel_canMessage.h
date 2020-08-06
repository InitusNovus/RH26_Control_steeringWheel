/*
 * SteeringWheel.h
 * Created on: 2020.08.05
 * Author: Dua
 */
#ifndef STEERINGWHEEL_CANMESSAGE_H_
#define STEERINGWHEEL_CANMESSAGE_H_

#include <Ifx_Types.h>

/************************* Data Structures ***************************/
typedef union
{
	struct 
	{
		uint8 vehicleSpeed;		//byte0;	//SDP
		uint8 lowestVoltage;	//byte1;	//BMS
		uint8 highestTemp;		//byte2;	//BMS
		uint8 bmsTemp;			//byte3;	//BMS
		uint8 soc;				//byte4;	//BMS
		uint8 averageTemp;		//byte5		//BMS
		union 					//byte7;	//RVC
		{
			uint8 U;
			struct 
			{
				uint8 r2d:4;
				uint8 appsError:1;
				uint8 bppsError:1;
				uint8 reserved:2; 
			}S;
		}status;
	}S;
	uint32 U[2];
}SteeringWheel_canMsg1_t;

typedef union 
{
	struct 
	{
		uint16 apps;				//byte0~1;		//RVC
		uint16 bpps;				//byte2~3;		//RVC
		uint16 lvBatteryVoltage;	//byte4~5;		//RVC
		uint16 accumulatorVoltage;	//byte6~7;		//BMS
	}S;
	uint32 U[2];
}SteeringWheel_canMsg2_t;

typedef union 
{
	struct 
	{
		uint8 inverter1Temp;		//byte0;		//Inverter
		uint8 motor1Temp;			//byte1;		//Inverter
		uint8 inverter2Temp;        //byte2;		//Inverter
		uint8 motor2Temp;			//byte3;		//Inverter
	}S;
	uint32 U;
}SteeringWheel_canMsg3_t;

#endif