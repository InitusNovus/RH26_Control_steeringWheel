/*
 * DataLogger_private.c
 *
 *  Created on: 2020. 3. 30.
 *      Author: Hohyon_Choi
 */




/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "DataLogger_private.h"
#include "DataLogger_Config.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define DATA		g_DataLogger_private.data
#define CNT			g_DataLogger_private.dataCnt

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/


/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

typedef struct{
	DataLogger_Data_Config 	config;
	char 					dataStr[LEN_OF_DATA_STRING];
	int						bytes_to_write;
	boolean 				fileWriteStatus;
}DataLogger_prvData_t;

typedef struct{
	DataLogger_prvData_t 	data[NUM_OF_DATA];
	uint8 	dataCnt;
	uint64 	STMStart;
	uint64 	STMPrev;
	uint64	STMOvrCnt;
	float32	LoggingTime;
	boolean SDinitStatus;
	boolean SDmountStatus;
	boolean SDfileOpenStatus;
}g_DataLogger_private_t;
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
g_DataLogger_private_t g_DataLogger_private = {.dataCnt = 0, .STMOvrCnt=0};

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/


/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/


/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void DataLogger_initMicroSD(){

}


void DataLogger_initFile(){

}


void DataLogger_initData(DataLogger_Data_Config* config){
	if(CNT<NUM_OF_DATA){
		DATA[CNT].config.dataPtr = config->dataPtr;
		DATA[CNT].config.dataType = config->dataType;
		CNT++;
	}
	else{
		printf("DataLogger data number overflow NUM_OF_DATA");
	}
}


IFX_STATIC void DataLogger_getSingleDatumString(DataLogger_prvData_t* datum){
	switch(datum->config.dataType){
	case DataLogger_DataType_bool:
		sprintf(datum->dataStr,", %u",*(boolean *)datum->config.dataPtr);
		break;
	case DataLogger_DataType_char:
		sprintf(datum->dataStr,", %c",*(char *)datum->config.dataPtr);
		break;
	case DataLogger_DataType_uint8:
		sprintf(datum->dataStr,", %u",*(uint8 *)datum->config.dataPtr);
		break;
	case DataLogger_DataType_uint16:
		sprintf(datum->dataStr,", %u",*(uint16 *)datum->config.dataPtr);
		break;
	case DataLogger_DataType_uint32:
		sprintf(datum->dataStr,", %lu",*(uint32 *)datum->config.dataPtr);
		break;
	case DataLogger_DataType_uint64:
		sprintf(datum->dataStr,", %llu",*(uint64 *)datum->config.dataPtr);
		break;
	case DataLogger_DataType_sint8:
		sprintf(datum->dataStr,", %d",*(sint8 *)datum->config.dataPtr);
		break;
	case DataLogger_DataType_sint16:
		sprintf(datum->dataStr,", %d",*(sint16 *)datum->config.dataPtr);
		break;
	case DataLogger_DataType_sint32:
		sprintf(datum->dataStr,", %ld",*(sint32 *)datum->config.dataPtr);
		break;
	case DataLogger_DataType_sint64:
		sprintf(datum->dataStr,", %lld",*(sint64 *)datum->config.dataPtr);
		break;
	case DataLogger_DataType_float32:
		sprintf(datum->dataStr,", %.4f",*(float32 *)datum->config.dataPtr);
		break;
	case DataLogger_DataType_float64:
		sprintf(datum->dataStr,", %.4f",*(float64 *)datum->config.dataPtr);
		break;
	}
}

IFX_STATIC float32 DataLogger_getTime(){
	uint64	STMCnt;
	STMCnt = IfxStm_get(&MODULE_STM0);
	if(STMCnt<g_DataLogger_private.STMPrev){
		g_DataLogger_private.STMOvrCnt++;
	}
}

