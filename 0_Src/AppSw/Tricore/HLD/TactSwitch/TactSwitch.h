/*
 * TactSwitch.h
 *
 *  Created on: 2023. 2. 14.
 *      Author: legol
 */

#include "Gpio_Debounce.h"
#include "Configuration.h"



#ifndef TACTSWITCH_TACTSWITCH_H_
#define TACTSWITCH_TACTSWITCH_H_







typedef struct{

	Gpio_Debounce_input TactSW1_input;
	Gpio_Debounce_inputConfig TactSW1_config;
	boolean tactState;
	boolean tactOn;



}TactSW_t;



IFX_EXTERN TactSW_t TactSW_T1;
IFX_EXTERN TactSW_t TactSW_T2;
IFX_EXTERN TactSW_t TactSW_T3;
IFX_EXTERN TactSW_t TactSW_T4;

IFX_EXTERN void HLd_TactSwitch_init(void);
IFX_EXTERN void HLD_TactSwitch_run(void);
IFX_EXTERN void TactSwitch_init(void);
IFX_EXTERN void TactSwitch_run(void);




#endif /*TACTSWITCH_TACTSWITCH_H_ */
