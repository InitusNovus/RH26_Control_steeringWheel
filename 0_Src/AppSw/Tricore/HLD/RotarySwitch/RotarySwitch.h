/*
 * RotarySwitch.h
 *
 *  Created on: 2023. 2. 8.
 *      Author: legol
 */

#ifndef ROTARYSWITCH_ROTARYSWITCH_H_
#define ROTARYSWITCH_ROTARYSWITCH_H_

#include "configuration.h"
#include "HLD.h"
#include "Gpio_Debounce.h"


typedef struct
{
	IfxPort_Pin pinName1;
	IfxPort_Pin pinName2;
	IfxPort_Pin pinName4;
	IfxPort_Pin pinName8;
	uint8 resultPin1;
	uint8 resultPin2;
	uint8 resultPin4;
	uint8 resultPin8;
	uint8 resultTot;
}RSWStruct_t;

IFX_EXTERN RSWStruct_t RSW_R1;
IFX_EXTERN RSWStruct_t RSW_R2;
IFX_EXTERN RSWStruct_t RSW_R3;





















typedef struct
{
	Gpio_Debounce_input RSWinput1;
	Gpio_Debounce_inputConfig RSWinputConfig1;
	boolean pinState1;
	uint8 RSWResult1;
//	uint8 RSWOnCount1;

	Gpio_Debounce_input RSWinput2;
	Gpio_Debounce_inputConfig RSWinputConfig2;
	boolean pinState2;
	uint8 RSWResult2;
//	uint8 RSWOnCount2;

	Gpio_Debounce_input RSWinput4;
	Gpio_Debounce_inputConfig RSWinputConfig4;
	boolean pinState4;
	uint8 RSWResult4;
//	uint8 RSWOnCount4;

	Gpio_Debounce_input RSWinput8;
	Gpio_Debounce_inputConfig RSWinputConfig8;
	boolean pinState8;
	uint8 RSWResult8;
//	uint8 RSWOnCount8;

	uint8 RSWResult;

}RSWStruct;


IFX_EXTERN void set_Gpio_Debounce(Gpio_Debounce_input* input, Gpio_Debounce_inputConfig* config, IfxPort_Pin *portNum);
IFX_EXTERN void RotarySwitch1_init(void);
IFX_EXTERN void RotarySwitch2_init(void);
IFX_EXTERN void RotarySwitch3_init(void);
IFX_EXTERN void RotarySwitch_read(RSWStruct *RSW_R);
IFX_EXTERN void HLD_RotarySwitch_init(void);
IFX_EXTERN void HLD_RotarySwitch_run(void);
IFX_EXTERN void RSW1_GPIO_Read(void);
IFX_EXTERN void RSW2_GPIO_Read(void);
IFX_EXTERN void RSW3_GPIO_Read(void);
IFX_EXTERN void testGPIO(void);


/*
IFX_EXTERN RSWStruct RSW_R1;
IFX_EXTERN RSWStruct RSW_R2;
IFX_EXTERN RSWStruct RSW_R3;
*/
#endif /* ROTARYSWITCH_ROTARYSWITCH_H_ */

