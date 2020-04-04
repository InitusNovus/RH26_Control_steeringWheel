/*
 * Qspi_microSD.c
 *
 *  Created on: 2020. 3. 30.
 *      Author: Hohyon_Choi
 */


/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "Qspi_Mpu9250.h"
#include "Bsp.h"
/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/


/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/


/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

IFX_EXTERN Qspi_t g_Qspi;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/


/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/


/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void HLD_microSD_slaveSelect(void)
{
#ifdef SCOPETEST_
	IfxPort_setPinLow(QSPI2_SLSO0.pin.port, QSPI2_SLSO0.pin.pinIndex);
#else
	IfxPort_setPinLow(QSPI1_SD_SLSO0.pin.port, QSPI1_SD_SLSO0.pin.pinIndex);
#endif

	//

}

void HLD_microSD_slaveDeselect(void)
{

#ifdef SCOPETEST_
	IfxPort_setPinHigh(QSPI2_SLSO0.pin.port, QSPI2_SLSO0.pin.pinIndex);
#else
	IfxPort_setPinHigh(QSPI1_SD_SLSO0.pin.port, QSPI1_SD_SLSO0.pin.pinIndex);
#endif
	//

}

void HLD_microSD_TxByte(uint8 data)
{
	//uint8 dummy;
	while( IfxQspi_SpiMaster_getStatus(&g_Qspi.drivers2.spiMasterChannel) == SpiIf_Status_busy );
	IfxQspi_SpiMaster_exchange(&g_Qspi.drivers2.spiMasterChannel, &data, NULL_PTR, 1);
	while( IfxQspi_SpiMaster_getStatus(&g_Qspi.drivers2.spiMasterChannel) == SpiIf_Status_busy );
	//waitTime(TimeConst_10us*3);

}

void HLD_microSD_TxBuffer(uint8 *buffer, uint16 len)
{
	while( IfxQspi_SpiMaster_getStatus(&g_Qspi.drivers2.spiMasterChannel) == SpiIf_Status_busy );
	IfxQspi_SpiMaster_exchange(&g_Qspi.drivers2.spiMasterChannel, buffer, NULL_PTR, len);
	while( IfxQspi_SpiMaster_getStatus(&g_Qspi.drivers2.spiMasterChannel) == SpiIf_Status_busy );
}

uint8 HLD_microSD_RxByte(void)
{
	uint8 data, dummy = 0xFF;
	while( IfxQspi_SpiMaster_getStatus(&g_Qspi.drivers2.spiMasterChannel) == SpiIf_Status_busy );
	IfxQspi_SpiMaster_exchange(&g_Qspi.drivers2.spiMasterChannel, &dummy, &data, 1);
	while( IfxQspi_SpiMaster_getStatus(&g_Qspi.drivers2.spiMasterChannel) == SpiIf_Status_busy );
	//waitTime(TimeConst_10us*3);
	//rxbyte = data;
	return data;
}

void HLD_microSD_RxBytePtr(uint8 *buff)
{
	*buff = HLD_microSD_RxByte();
}

void HLD_microSD_setBaudRate_40MHz(){
	IfxQspi_SpiMaster_setChannelBaudrate(&g_Qspi.drivers2.spiMasterChannel, 40000000);
}
