/*
 * MicroSD_Demo.c
 *
 *  Created on: 2020. 4. 14.
 *      Author: Hohyon_Choi
 */


/*************************************************
 * This demo use fatfs library
 * recommend to read this page before use
 *
 * http://elm-chan.org/fsw/ff/00index_e.html
 *
 * Qspi module baud rate : 20MHz
 * ***********************************************/



/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "HLD.h"
#include "microSD.h"
#include "ff.h"
#include "diskio.h"
#include <string.h>
#include <stdio.h>

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define RESULT		MicroSD_Demo_fresult
#define FILENAME	"MicroSD_Demo_write.txt"

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
FIL 	file;
FATFS 	fatfs;

char WStringBuf[200];
UINT WStringbtw = 0;
UINT WStringbw = 0;

float32 WHexBuf[10] = {1.01, 2.02, 3.03, 4.04, 5.05, 6.06, 7.07, 8.08, 9.09, 10.10};
UINT	WHexbtw;
UINT	WHexbw;

char RStringBuf[200];
UINT RStringbtr = 0;
UINT RStringbr = 0;

float32 RHexBuf[10];
UINT	RHexbtr;
UINT	RHexbr;

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/


/**************************************
 * DataLogger initialization functions*
 * ************************************/

/********* mount microSD card* *********/
void MicroSD_Demo_mountSD(){

	if((RESULT.mount=f_mount(&fatfs, "", 1)) == FR_OK)
	{
		printf("fmount finished \n");
	}
	else{
		printf("fmount failed \n");
	}
}

/********* Open file with configured name **********
 * set file name in DataLogger\DataLogger_config.h */
void MicroSD_Demo_openFile(){


	//if((RESULT.open = f_open(&file, FILENAME, FA_CREATE_ALWAYS | FA_WRITE | FA_READ)) != FR_OK)

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
	f_sync(&file);

}


void MicroSD_Demo_writeString(){
	float32 testVar = IFX_PI;
	WStringbtw=sprintf(WStringBuf,"Hello World!\n test variable = %.6f", testVar);
	RESULT.write=f_write(&file,WStringBuf,WStringbtw,&WStringbw);
}


void MicroSD_Demo_writeHEX(){

	WHexbtw = sizeof(float32)*10;

	RESULT.write = f_write(&file,WHexBuf,WHexbtw,&WHexbw);
}


void MicroSD_Demo_readString(){
	RStringbtr = WStringbw;
	RESULT.read = f_read(&file,RStringBuf,RStringbtr,&RStringbr);
}


void MicroSD_Demo_readHex(){

}

void MicroSD_Demo_initSD(){

	MicroSD_Demo_mountSD();
	MicroSD_Demo_openFile();

}



