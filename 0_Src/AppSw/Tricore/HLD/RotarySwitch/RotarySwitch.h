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
	Gpio_Debounce_input RSWinput1;
	Gpio_Debounce_inputConfig RSWinputConfig1;
	boolean pinState1;
	boolean RSWResult1;

	Gpio_Debounce_input RSWinput2;
	Gpio_Debounce_inputConfig RSWinputConfig2;
	boolean pinState2;
	boolean RSWResult2;

	Gpio_Debounce_input RSWinput4;
	Gpio_Debounce_inputConfig RSWinputConfig4;
	boolean pinState4;
	boolean RSWResult4;

	Gpio_Debounce_input RSWinput8;
	Gpio_Debounce_inputConfig RSWinputConfig8;
	boolean pinState8;
	boolean RSWResult8;

	uint8 RSWResult;

}RSWStruct;

IFX_EXTERN void set_Gpio_Debounce(Gpio_Debounce_input* input, Gpio_Debounce_inputConfig* config, Ifx_P *portNum);
IFX_EXTERN void RotarySwitch1_init(void);
IFX_EXTERN void RotarySwitch2_init(void);
IFX_EXTERN void RotarySwitch3_init(void);
IFX_EXTERN void RotarySwitch_read(RSWStruct *RSW_R);
IFX_EXTERN void HLD_RotarySwitch_init(void);
IFX_EXTERN void HLD_RotarySwitch_run(void);




IFX_EXTERN RSWStruct RSW_R1;
IFX_EXTERN RSWStruct RSW_R2;
IFX_EXTERN RSWStruct RSW_R3;

#endif /* ROTARYSWITCH_ROTARYSWITCH_H_ */

