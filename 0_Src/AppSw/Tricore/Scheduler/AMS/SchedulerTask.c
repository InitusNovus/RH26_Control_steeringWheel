/*
 * SchedulerTask.c
 *
 *  Created on: 2018. 5. 17.
 *      Author: bigbi_000
 */


/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "SchedulerTask.h"

#include "HLD.h"
#include "User.h"

#include "AccumulatorManager.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct
{
	sint16 counter_1ms;
	sint16 counter_10ms;
	sint16 counter_100ms;
	sint16 counter_1000ms;
}Task_data;
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
Task_data Task = {0,0,0,0};

uint64 stm_buf = 0;
uint64 stm_buf_1ms = 0;
uint64 ticToc_1ms_flag = 0;
uint64 ticToc_1ms = 0;
uint64 ticToc_10ms_s0 = 0;
uint64 ticToc_10ms_s1 = 0;
uint64 ticToc_100ms_s4 = 0;
uint64 ticToc_100ms_s14 = 0;


note_t test_M[]=
{
		{note_half, note_A5, TRUE},
		ENDING
};


boolean isInit = FALSE;
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
IFX_STATIC void Task_counter_service_1ms (void);
IFX_STATIC void Task_counter_service_10ms (void);
IFX_STATIC void Task_counter_service_100ms (void);
IFX_STATIC void Task_counter_service_1000ms (void);
/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void Task_init (void)
{
	/*HLD initialization*/
	{
		HLD_GtmTom_init();

		HLD_Vadc_init();

		HLD_Lcd_init();
		HLD_LcdInterface_init();
	}

	{
		AccumualatorManager_init();
		HLD_Vadc_forceStart();
	}

	HLD_GtmTomBeeper_start(Beep_pattern4);
	isInit = TRUE;
	// HLD_GtmTomBeeper_start(GrandfathersElevenMonth);
//	HLD_GtmTomBeeper_start(KartRider);
//	HLD_GtmTomBeeper_start(test_M);
	// HLD_GtmTomBeeper_start(Grandfathers_clock);
	// HLD_GtmTomBeeper_start(My_heart_will_go_on);
}
/**********************************************************************/
/**********************************1ms*********************************/
/**********************************************************************/
/*
 * Don't use this function, use Task_IsrCb_1ms() instead.
 * */
void Task_1ms (void)
{
	stm_buf = IfxStm_get(&MODULE_STM0);

	ticToc_1ms_flag = (IfxStm_get(&MODULE_STM0) - stm_buf)*1000000/(IfxStm_getFrequency(&MODULE_STM0));
}
void Task_IsrCb_1ms (void)
{
	stm_buf_1ms = IfxStm_get(&MODULE_STM0);

//	HLD_GtmTim_run_1ms();
	HLD_GtmTomBeeper_run_1ms();
	if(isInit)
	{
		AccumulatorManager_run_1ms();
	}


	ticToc_1ms = (IfxStm_get(&MODULE_STM0) - stm_buf_1ms)*1000000/(IfxStm_getFrequency(&MODULE_STM0));
}
/**********************************************************************/
/**********************************10ms********************************/
/**********************************************************************/
void Task_10ms (void)			//Slot 0
{
	stm_buf = IfxStm_get(&MODULE_STM0);

	Task_counter_service_10ms();
	ticToc_10ms_s0 = (IfxStm_get(&MODULE_STM0) - stm_buf)*1000000/(IfxStm_getFrequency(&MODULE_STM0));
}
void Task_10ms_slot1 (void)
{
	stm_buf = IfxStm_get(&MODULE_STM0);

	ticToc_10ms_s1 = (IfxStm_get(&MODULE_STM0) - stm_buf)*1000000/(IfxStm_getFrequency(&MODULE_STM0));
}
/**********************************************************************/
/*********************************100ms********************************/
/**********************************************************************/
void Task_100ms (void)
{
	Task_counter_service_100ms();
	if(Task.counter_100ms%2 == 0)
	{
//		LED_blinking();

	}
}
void Task_100ms_slot4(void)
{
	stm_buf = IfxStm_get(&MODULE_STM0);

	HLD_Lcd_run();

	ticToc_100ms_s4 = (IfxStm_get(&MODULE_STM0) - stm_buf)*1000000/(IfxStm_getFrequency(&MODULE_STM0));
}
void Task_100ms_slot14(void)
{
	stm_buf = IfxStm_get(&MODULE_STM0);

	HLD_Lcd_run1();

	ticToc_100ms_s14 = (IfxStm_get(&MODULE_STM0) - stm_buf)*1000000/(IfxStm_getFrequency(&MODULE_STM0));
}
void Task_100ms_slot24(void)
{

}
void Task_100ms_slot34(void)
{

}
void Task_100ms_slot44(void)
{

}
void Task_100ms_slot5(void)
{

}

/**********************************************************************/
/********************************1000ms********************************/
/**********************************************************************/
void Task_1000ms (void)
{
	Task_counter_service_1000ms();
//	HLD_GtmTomBeeper_start(Beep_pattern4);
}
void Task_1000ms_slot3 (void)
{
	//HLD_Multican_setMessage_data(Task.counter_1000ms, 0, &HLD_Multican.msg[0]);
	//HLD_Multican_transmitMessage(&HLD_Multican.msg[0]);
}




void Task_counter_service_1ms (void)
{
	Task.counter_1ms ++;
	if(Task.counter_1ms == 1000)
	{
		Task.counter_1ms = 0;
	}
}
void Task_counter_service_10ms (void)
{
	Task.counter_10ms ++;
	if(Task.counter_10ms == 1000)
	{
		Task.counter_10ms = 0;
	}
}
void Task_counter_service_100ms (void)
{
	Task.counter_100ms ++;
	if(Task.counter_100ms == 1000)
	{
		Task.counter_100ms = 0;
	}
}
void Task_counter_service_1000ms (void)
{
	Task.counter_1000ms ++;
	if(Task.counter_1000ms == 1000)
	{
		Task.counter_1000ms = 0;
	}
}
