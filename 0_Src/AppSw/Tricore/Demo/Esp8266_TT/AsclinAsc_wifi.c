/*
 * AsclinAsc_wifi.c
 *
 *  Created on: 2020. 4. 21.
 *      Author: Hohyon Choi
 */




/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "AsclinAsc_wifi.h"
#include <string.h>
#include <stdio.h>

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define WIFI_SSID		"\"AndroidHotspot5628\""
#define WIFI_PASSWORD	"\"Password\""

#define TCP_SERVER_IP	"\"192.168.43.115\""
#define TCP_SERVER_PORT	"8023" // Port �� �ֵ���ǥ�� �ʿ� ���� ����
/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void AsclinAsc_wifi_sendStr(char *str){
	/*
	 * Get string as input and send through UART
	 * */
	Ifx_SizeT	size = strlen(str);
	IfxAsclin_Asc_write(&g_AsclinAsc.driver,str,&size,0);
}


void AsclinAsc_wifi_printfEcho(){
	/*
	 * Printf (Simulated IO in UDE) received data through UART
	 */
	sint32 readCnt = IfxAsclin_Asc_getReadCount(&g_AsclinAsc.driver);
	for (sint32 i = 0; i< readCnt; i++){
		printf("%c",IfxAsclin_Asc_blockingRead(&g_AsclinAsc.driver));
	}
	printf("\n");
}


void AsclinAsc_wifi_sendStrAndEcho(char *str,Ifx_TickTime time){
	/*
	 * Send string, wait time, and echo received data
	 */
	AsclinAsc_wifi_sendStr(str);
	waitTime(time);
	AsclinAsc_wifi_printfEcho();
}


void AsclinAsc_wifi_sendConfigATCmd(){

	//Basic AT check command
	//Module works well when it returns "OK"
	AsclinAsc_wifi_sendStrAndEcho("AT\r\n",TimeConst_100ms);

	//Set ESP work mode as STA+AP mode
	AsclinAsc_wifi_sendStrAndEcho("AT+CWMODE=3\r\n",TimeConst_100ms);

	//List Wifi AP list
	AsclinAsc_wifi_sendStrAndEcho("AT+CWLAP\r\n",5*TimeConst_1s);

	//Get Access to AP with SSID and password
	//20s delay for WIFI connection
	AsclinAsc_wifi_sendStrAndEcho("AT+CWJAP="WIFI_SSID","WIFI_PASSWORD"\r\n",20*TimeConst_1s);

	//�Ҵ���� IP Ȯ��
	AsclinAsc_wifi_sendStrAndEcho("AT+CIFSR\r\n",5*TimeConst_1s);

	//MUX=0 ���� (Single connect mode)
	AsclinAsc_wifi_sendStrAndEcho("AT+CIPMUX=0\r\n",1*TimeConst_1s);

	//PC�� TCP���� IP�� Port number�� ���� TCP���� ����
	AsclinAsc_wifi_sendStrAndEcho("AT+CIPSTART=\"TCP\","TCP_SERVER_IP","TCP_SERVER_PORT"\r\n",5*TimeConst_1s);

	//Transparent Transmission Mode ����
	AsclinAsc_wifi_sendStrAndEcho("AT+CIPMODE=1\r\n",1*TimeConst_1s);

	//Data ���� ����
	AsclinAsc_wifi_sendStrAndEcho("AT+CIPSEND\r\n",1*TimeConst_1s);

	//Hello World!
	AsclinAsc_wifi_sendStrAndEcho("Hello World!",1*TimeConst_100ms);

	//ATĿ�ǵ带 �ν��ϵ��� �ϴ� ��ɾ�
	//+++�� ���� �� 1�ʰ� ������ ATĿ�ǵ� �ν�
	AsclinAsc_wifi_sendStrAndEcho("+++",2*TimeConst_1s);

	//TT mode ����
	AsclinAsc_wifi_sendStrAndEcho("AT+CIPMODE=0\r\n",1*TimeConst_1s);

	//���� ����
	AsclinAsc_wifi_sendStrAndEcho("AT+CIPCLOSE\r\n",1*TimeConst_1s);
}
