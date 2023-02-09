/*
 * RotarySwitch.c
 *
 *  Created on: 2023. 2. 8.
 *      Author: legol
 */
#include "RotarySwitch.h"


//#define R2D_ONHOLD (3*100)			//3 seconds
#define RSW_ONHOLD (5*10)				//0.5sec

RSWStruct RSW_R1;
RSWStruct RSW_R2;
RSWStruct RSW_R3;


void HLD_RotarySwitch_init(void)
{
	RotarySwitch1_init();
	RotarySwitch2_init();
	RotarySwitch3_init();

}

void HLD_RotarySwitch_run(void)
{
	RotarySwitch_read(&RSW_R1);
	RotarySwitch_read(&RSW_R2);
	RotarySwitch_read(&RSW_R3);

}




void set_Gpio_Debounce(Gpio_Debounce_input* input, Gpio_Debounce_inputConfig* config, Ifx_P *portNum)
{

	//Gpio_Debounce_inputConfig SWgpioInputConfig;
	Gpio_Debounce_initInputConfig(&config);
	config->bufferLen = Gpio_Debounce_BufferLength_10;
	config->inputMode = IfxPort_InputMode_noPullDevice;
	config->port = &portNum;
	Gpio_Debounce_initInput(&input, &config);

}

void RotarySwitch1_init(void)
{
	set_Gpio_Debounce(&(RSW_R1.RSWinput1), &(RSW_R1.RSWinputConfig1),&ROTARYSWITCH_R1_1);
	set_Gpio_Debounce(&(RSW_R1.RSWinput2), &(RSW_R1.RSWinputConfig2),&ROTARYSWITCH_R1_2);
	set_Gpio_Debounce(&(RSW_R1.RSWinput4), &(RSW_R1.RSWinputConfig4),&ROTARYSWITCH_R1_4);
	set_Gpio_Debounce(&(RSW_R1.RSWinput8), &(RSW_R1.RSWinputConfig8),&ROTARYSWITCH_R1_8);

}

void RotarySwitch2_init(void)
{
	set_Gpio_Debounce(&(RSW_R2.RSWinput1), &(RSW_R2.RSWinputConfig1),&ROTARYSWITCH_R2_1);
	set_Gpio_Debounce(&(RSW_R2.RSWinput2), &(RSW_R2.RSWinputConfig2),&ROTARYSWITCH_R2_2);
	set_Gpio_Debounce(&(RSW_R2.RSWinput4), &(RSW_R2.RSWinputConfig4),&ROTARYSWITCH_R2_4);
	set_Gpio_Debounce(&(RSW_R2.RSWinput8), &(RSW_R2.RSWinputConfig8),&ROTARYSWITCH_R2_8);

}

void RotarySwitch3_init(void)
{
	set_Gpio_Debounce(&(RSW_R3.RSWinput1), &(RSW_R3.RSWinputConfig1),&ROTARYSWITCH_R3_1);
	set_Gpio_Debounce(&(RSW_R3.RSWinput2), &(RSW_R3.RSWinputConfig2),&ROTARYSWITCH_R3_2);
	set_Gpio_Debounce(&(RSW_R3.RSWinput4), &(RSW_R3.RSWinputConfig4),&ROTARYSWITCH_R3_4);
	set_Gpio_Debounce(&(RSW_R3.RSWinput8), &(RSW_R3.RSWinputConfig8),&ROTARYSWITCH_R3_8);

}




void RotarySwitch_read(RSWStruct *RSW_R)
{
	static boolean RSWrisingEdgeFlag = FALSE;
	static uint32 RSWOnCount1 = 0;
	static uint32 RSWOnCount2 = 0;
	static uint32 RSWOnCount4 = 0;
	static uint32 RSWOnCount8 = 0;
//	static uint32 RSWOffCount = 0;

	RSW_R->pinState1 = FALSE;
	RSW_R->pinState1 = Gpio_Debounce_pollInput(&(RSW_R->RSWinput1));
	RSW_R->pinState2 = FALSE;
	RSW_R->pinState2 = Gpio_Debounce_pollInput(&(RSW_R->RSWinput2));
	RSW_R->pinState4 = FALSE;
	RSW_R->pinState4 = Gpio_Debounce_pollInput(&(RSW_R->RSWinput4));
	RSW_R->pinState8 = FALSE;
	RSW_R->pinState8 = Gpio_Debounce_pollInput(&(RSW_R->RSWinput8));

	if((RSW_R->pinState1 == TRUE) && (RSWrisingEdgeFlag == FALSE))
	{
		RSWOnCount1++;
		if(RSWOnCount1 > RSW_ONHOLD)
		{
			RSW_R->RSWResult1 = TRUE;
			RSWOnCount1 = 0;
		}else{
			RSW_R->RSWResult1 = FALSE;
		}
	}

	if((RSW_R->pinState2 == TRUE) && (RSWrisingEdgeFlag == FALSE))
	{
		RSWOnCount2++;
		if(RSWOnCount2 > RSW_ONHOLD)
		{
			RSW_R->RSWResult2 = TRUE;
			RSWOnCount2 = 0;
		}else{
			RSW_R->RSWResult2 = FALSE;
		}
	}

	if((RSW_R->pinState4 == TRUE) && (RSWrisingEdgeFlag == FALSE))
	{
		RSWOnCount4++;
		if(RSWOnCount4 > RSW_ONHOLD)
		{
			RSW_R->RSWResult4 = TRUE;
			RSWOnCount4 = 0;
		}else{
			RSW_R->RSWResult4 = FALSE;
		}
	}

	if((RSW_R->pinState8 == TRUE) && (RSWrisingEdgeFlag == FALSE))
	{
		RSWOnCount8++;
		if(RSWOnCount8 > RSW_ONHOLD)
		{
			RSW_R->RSWResult8 = TRUE;
			RSWOnCount8 = 0;
		}else{
			RSW_R->RSWResult8 = FALSE;
		}
	}

	RSW_R->RSWResult = 1*(RSW_R->RSWResult1)+2*(RSW_R->RSWResult2)+4*(RSW_R->RSWResult4)+8*(RSW_R->RSWResult8);


}





