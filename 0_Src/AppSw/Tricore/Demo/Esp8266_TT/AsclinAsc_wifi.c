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
#define TCP_SERVER_PORT	"8023" // Port 는 쌍따옴표가 필요 없음 주의
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

	//할당받은 IP 확인
	AsclinAsc_wifi_sendStrAndEcho("AT+CIFSR\r\n",5*TimeConst_1s);

	//MUX=0 설정 (Single connect mode)
	AsclinAsc_wifi_sendStrAndEcho("AT+CIPMUX=0\r\n",1*TimeConst_1s);

	//PC의 TCP서버 IP와 Port number를 통해 TCP서버 접속
	AsclinAsc_wifi_sendStrAndEcho("AT+CIPSTART=\"TCP\","TCP_SERVER_IP","TCP_SERVER_PORT"\r\n",5*TimeConst_1s);

	//Transparent Transmission Mode 실행
	AsclinAsc_wifi_sendStrAndEcho("AT+CIPMODE=1\r\n",1*TimeConst_1s);

	//Data 전송 시작
	AsclinAsc_wifi_sendStrAndEcho("AT+CIPSEND\r\n",1*TimeConst_1s);

	//Hello World!
	AsclinAsc_wifi_sendStrAndEcho("Hello World!",1*TimeConst_100ms);

	//AT커맨드를 인식하도록 하는 명령어
	//+++를 보낸 후 1초가 지나야 AT커맨드 인식
	AsclinAsc_wifi_sendStrAndEcho("+++",2*TimeConst_1s);

	//TT mode 종료
	AsclinAsc_wifi_sendStrAndEcho("AT+CIPMODE=0\r\n",1*TimeConst_1s);

	//연결 종료
	AsclinAsc_wifi_sendStrAndEcho("AT+CIPCLOSE\r\n",1*TimeConst_1s);
}
