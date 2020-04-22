/*
 * MicroSD_Demo.c
 *
 *  Created on: 2020. 4. 14.
 *      Author: Hohyon_Choi
 */


/*************************************************
 * This demo shows how to read/write data in microSD
 * Always create NEW file named "FILENAME"
 * Write and read string, binary data
 *
 * This demo use fatfs library
 * recommend to read this page before usage
 * http://elm-chan.org/fsw/ff/00index_e.html
 *
 * Qspi module baud rate : 20MHz
 * ***********************************************/


/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "MicroSD_Demo.h"
#include <string.h>
#include <stdio.h>

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define RESULT		MicroSD_Demo_fresult
#define FILENAME	"MicroSD_Demo.txt"

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/


/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct{
	FRESULT		mount;
	FRESULT		open;
	FRESULT		read;
	FRESULT		write;
}MicroSD_Demo_fresult_t;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
MicroSD_Demo_fresult_t	MicroSD_Demo_fresult;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/


/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/*
 * FATfs related variables
 */
FIL 	file;
FATFS 	fatfs;


/**********************************
 * Sample variables
 * demo runs correctly when WBuf and RBuf data are same
 *
 * W : Write
 * R : Read
 *
 * String : string data (char)
 * Hex    : variable binary data
 *
 * Buf : buffer(array)
 * btw : bytes to write
 * bw  : bytes written
 * btr : bytes to read
 * br  : bytes read
 * *********************************/
char WStringBuf[100];
UINT WStringbtw = 0;
UINT WStringbw = 0;

float32 WHexBuf[20] = {1.01, 2.02, 3.03, 4.04, 5.05, 6.06, 7.07, 8.08, 9.09, 10.10,
11.11, 12.12, 13.13, 14.14, 15.15, 16.16, 17.17, 18.18, 19.19, 20.20};
UINT	WHexbtw = 0;
UINT	WHexbw = 0;

char RStringBuf[100];
UINT RStringbtr = 0;
UINT RStringbr = 0;

float32 RHexBuf[20];
UINT	RHexbtr = 0;
UINT	RHexbr = 0;

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/


void MicroSD_Demo_mountSD(){
	/*
	 * microSD mount �Լ�
	 * ���� ���� ������ ��� ������ open�� �� ����.
	 * f_mount�Լ� ���
	 */
	if((RESULT.mount=f_mount(&fatfs, "", 1)) == FR_OK)
	{
		printf("fmount finished \n");
	}
	else{
		printf("fmount failed \n");
	}
}


void MicroSD_Demo_openFile(){
	/*
	 * file open�Լ�
	 * f_open�Լ� ���.
	 * FILENAME macro�� �����Ͽ� ���� �̸� ���� ����
	 * 3��° argument�� ���� read, write, create �ɼ� ���� ����
	 *
	 * "r"		FA_READ
	 * "r+"		FA_READ | FA_WRITE
	 * "w"		FA_CREATE_ALWAYS | FA_WRITE
	 * "w+"		FA_CREATE_ALWAYS | FA_WRITE | FA_READ
	 * "a"		FA_OPEN_APPEND | FA_WRITE
	 * "a+"		FA_OPEN_APPEND | FA_WRITE | FA_READ
	 * "wx"		FA_CREATE_NEW | FA_WRITE
	 * "w+x"	FA_CREATE_NEW | FA_WRITE | FA_READ
	 *
	 * open�� �������� ��� �ѹ� �� �õ��ϵ��� �Լ��� ������ ��
	 * */

	RESULT.open = f_open(&file, FILENAME, FA_CREATE_ALWAYS | FA_WRITE | FA_READ);

	if(RESULT.open != FR_OK)
	{
		/*if open fails, delay time for stabilization */
		printf("f_open one more try\n");
		waitTime(TimeConst_10ms*2);
		/* try open again*/
		RESULT.open = f_open(&file, FILENAME, FA_CREATE_ALWAYS | FA_WRITE | FA_READ);
		if(RESULT.open != FR_OK)
		{
			printf("f_open failed\n");
		}
	}

	/******  CAUTION!!!!!!!!!!!  ******
	 *
	 * f_sync�� ������ ������ critical section�� �þ �� �����Ƿ�,
	 *
	 * open��, write�Ŀ��� f_sync�� ���ִ� ���� �ſ� �����
	 *
	 * �Ʒ� ������ ����
	 * http://elm-chan.org/fsw/ff/doc/appnote.html#critical
	 *
	 * ******************/
	f_sync(&file);

}


void MicroSD_Demo_writeString(){
	/*
	 * ���ڿ� text�� ���·� �����͸� ����
	 * f_write(FIL, * buffer, bytes to write, * bytes to written)
	 * sprintf �Լ��� ����Ѵٸ� ���ڿ��� ��ȯ�ϰ� ���ڿ� ���̵� ���� �� ����
	 *
	 * f_sync�� ����ð��� 30ms�̻����� �ſ� �� ��
	 * **********************************************
	 * f_sync�� �������ѵ� ������ ��� MicroSD_Demo_stop�� �� ������Ѿ� ��
	 * */
	float32 testVar = IFX_PI;

	WStringbtw=sprintf(WStringBuf,"Hello World! test variable = %.6f \n", testVar);
	RESULT.write=f_write(&file,WStringBuf,WStringbtw,&WStringbw);
	f_sync(&file);
}


void MicroSD_Demo_writeHEX(){
	/*
	 * �����͸� ���� ������ ���·� �״�� ����
	 * f_write(FIL, * buffer, bytes to write, * bytes to written)
	 * * buffer�� ���ϴ� �������� pointer�� �����ϸ� ��.
	 * bytes to write�� sizeof�� �̿��ϸ� ���� ��� ����
	 *
	 * */
	WHexbtw = sizeof(float32)*20;

	RESULT.write = f_write(&file,WHexBuf,WHexbtw,&WHexbw);
	f_sync(&file);

}


void MicroSD_Demo_readString(){
	/*
	 * file�� �� �κ��� �д� �Լ�
	 *
	 * f_lseek�� �б� �����ϴ� ����Ʈ�� �ű�� �Լ�
	 * �� ó������ �б� ���� 0�� �־���
	 *
	 * */
	f_lseek(&file, 0);
	RStringbtr = WStringbw;
	RESULT.read = f_read(&file,RStringBuf,RStringbtr,&RStringbr);
}


void MicroSD_Demo_readHex(){
	/*
	 * binary data�� �д� �Լ�
	 * ���ʿ� string�����Ͱ� �����ϹǷ� �� �κ��� �پ�ѱ� ���ؼ�
	 * WStringbw��ŭ �پ�Ѱ� �б� ����
	 *
	 */
	RHexbtr = WHexbw;
	f_lseek(&file, WStringbw);
	RESULT.read = f_read(&file, RHexBuf, RHexbtr,&RStringbr);
}


void MicroSD_Demo_closeFile(){
	/*
	 * Close opened file
	 */
	f_close(&file);
}


void MicroSD_Demo_initSD(){
	MicroSD_Demo_mountSD();
	MicroSD_Demo_openFile();
}


void MicroSD_Demo_run(){
	MicroSD_Demo_writeString();
	MicroSD_Demo_writeHEX();
	MicroSD_Demo_readString();
	MicroSD_Demo_readHex();
}


void MicroSD_Demo_stop(){
	/*
	 * Always need to run before stop logging
	 *
	 * if not, MicroSD partition may deleted (in worst situation)
	 */
	MicroSD_Demo_closeFile();
}

