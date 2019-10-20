/**
 * \file Configuration.h
 * \brief Global configuration
 *
 * \version iLLD_Demos_1_0_1_4_0
 * \copyright Copyright (c) 2014 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 * \defgroup IfxLld_Demo_StmDemo_SrcDoc_Config Application configuration
 * \ingroup IfxLld_Demo_StmDemo_SrcDoc
 *
 *
 */

#ifndef CONFIGURATION_H
#define CONFIGURATION_H
/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "Ifx_Cfg.h"
#include "ConfigurationIsr.h"
#include "_Impl/IfxGlobal_cfg.h"
#include "IfxPort_PinMap.h"
 
/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define HLD_BOARD_AK237		0
#define HLD_BOARD_SB275		1

#define HLD_BOARD 			HLD_BOARD_AK237
#define HLD_FOURTH_CANNODE	FALSE

/*MultiCAN macros*/
#define CAN0NODE0IN					IfxMultican_RXD0B_P20_7_IN//IfxMultican_RXD0A_P02_1_IN
#define CAN0NODE0OUT				IfxMultican_TXD0_P20_8_OUT//IfxMultican_TXD0_P02_0_OUT

<<<<<<< HEAD
#define CAN0NODE1IN					IfxMultican_RXD1A_P15_3_IN
#define CAN0NODE1OUT				IfxMultican_TXD1_P15_2_OUT

#define CAN0NODE2IN					IfxMultican_RXD2B_P02_3_IN
#define CAN0NODE2OUT				IfxMultican_TXD2_P02_2_OUT
/* CAN0NODE2 has lower priority */

#define CAN1NODE0IN					IfxMultican1_RXD0G_P00_5_IN
#define CAN1NODE0OUT				IfxMultican1_TXD0_P00_4_OUT

#define CAN1NODE1IN					IfxMultican1_RXD1F_P02_7_IN
#define CAN1NODE1OUT				IfxMultican1_TXD1_P02_5_OUT

#define CAN1NODE2IN					IfxMultican1_RXD2E_P20_9_IN
#define CAN1NODE2OUT				IfxMultican1_TXD2_P20_10_OUT


/*Led port macros*/
#define LED107						IfxPort_P13_0
#define LED108						IfxPort_P13_1
#define LED109						IfxPort_P13_2
#define LED110						IfxPort_P13_3


=======
>>>>>>> 9498674... Vadc and AdcSensor
/*GtmTom macros*/
#define BEEPER                      IfxGtm_TOM0_4_TOUT22_P33_0_OUT
#define GTMTOMPWM0					IfxGtm_TOM1_1_TOUT31_P33_9_OUT

/*GtmTim macros*/
#define GTMTIM0						IfxGtm_TIM0_0_TIN18_P00_9_IN//IfxGtm_TIM0_0_TIN18_P00_9_IN
#define GTMTIM1						IfxGtm_TIM0_1_TIN31_P33_9_IN
#define GTMTIM2						IfxGtm_TIM0_2_TIN55_P21_4_IN
#define GTMTIM3						IfxGtm_TIM0_3_TIN21_P00_12_IN
#define GTMTIM4						IfxGtm_TIM0_4_TIN50_P22_3_IN
#define GTMTIM5						IfxGtm_TIM0_5_TIN23_P33_1_IN
#define GTMTIM6						IfxGtm_TIM0_6_TIN24_P33_2_IN
#define GTMTIM7						IfxGtm_TIM0_7_TIN25_P33_3_IN

/*GPT12 macros*/
#define GPT12T3IN					IfxGpt120_T3INA_P02_6_IN
#define GPT12T4IN					IfxGpt120_T4INA_P02_8_IN



/*Ccu6 macros*/

#define MOTOR_U5					IfxCcu60_COUT60_P02_1_OUT
#define MOTOR_U6					IfxCcu60_COUT61_P02_3_OUT
#define MOTOR_U5_INH				IfxPort_P02_0
#define MOTOR_U6_INH				IfxPort_P02_2


/*Qspi2 macros*/
#define QSPI2_SCLK					IfxQspi2_SCLK_P15_6_OUT
#define QSPI2_MTSR					IfxQspi2_MTSR_P15_5_OUT
#define QSPI2_MRST					IfxQspi2_MRSTA_P15_4_IN
#define QSPI2_SLSO0					IfxQspi2_SLSO4_P14_7_OUT


/*UserInterface macros*/
//#define START_BTN					IfxPort_P00_1
#define UI_BTN1						IfxPort_P00_9
#define UI_BTN2						IfxPort_P00_2
#define UI_BTN3						IfxPort_P00_3
#define UI_BTN4						IfxPort_P00_10
#define UI_BTN5						IfxPort_P00_11
#define UI_BTN6						IfxPort_P00_4
#define UI_BTN7						IfxPort_P00_5


#define LCD_EN						IfxPort_P15_0		//DIG14
#define LCD_B4						IfxPort_P15_1		//DIG15
#define	LCD_B5						IfxPort_P33_9		//DIG16
#define LCD_B6						IfxPort_P33_8		//DIG17
#define LCD_B7						IfxPort_P20_0		//DIG18

#define LCD_RS						IfxPort_P33_4		//DIG50
#define LCD_RW						IfxPort_P33_12		//DIG51

#define UI_LED1						IfxPort_P33_2
#define UI_LED2						IfxPort_P00_6
#define UI_LED3						IfxPort_P33_1


/* Not used macros */
#define ENCODER_A					IfxGpt120_T3INA_P02_6_IN
#define ENCODER_B					IfxGpt120_T3EUDA_P02_7_IN

#define SERVO						IfxGtm_TOM0_7_TOUT32_P33_10_OUT
#define SERVO_IR					IfxGtm_TOM0_9_TOUT10_P00_1_OUT	//arbitrary value

/*
Line scan macros
#define TSL1401_SI					IfxPort_P33_3
#define TSL1401_CLK					IfxPort_P33_2
#define TSL1401_AO_1				9
#define TSL1401_AO_2				10
#define TSL1401_AO_3				3

#define MMA7361_AO_1				9		//G1CH9
#define MMA7361_AO_2				8		//G1CH8
#define MMA7361_AO_3				5		//G1CH5

#define OBSTACLE_LF_PORT			&MODULE_P22
#define OBSTACLE_LM_PORT			&MODULE_P22
#define OBSTACLE_LC_PORT			&MODULE_P22
#define OBSTACLE_LF_INDEX			0
#define OBSTACLE_LM_INDEX			1
#define OBSTACLE_LC_INDEX			2

#define OBSTACLE_RF_PORT			&MODULE_P15
#define OBSTACLE_RM_PORT			&MODULE_P15
#define OBSTACLE_RC_PORT			&MODULE_P15
#define OBSTACLE_RF_INDEX			4
#define OBSTACLE_RM_INDEX			5
#define OBSTACLE_RC_INDEX			6

#define STEERING_METHOD				IfxPort_P00_8
*/

/** \addtogroup IfxLld_Demo_Template_SrcDoc_Config
 * \{ */
/*______________________________________________________________________________
** Help Macros
**____________________________________________________________________________*/
/**
 * \name Macros for Regression Runs
 * \{
 */
#ifndef REGRESSION_RUN_STOP_PASS
#define REGRESSION_RUN_STOP_PASS
#endif

#ifndef REGRESSION_RUN_STOP_FAIL
#define REGRESSION_RUN_STOP_FAIL
#endif
/** \} */

/** \} */
#endif
