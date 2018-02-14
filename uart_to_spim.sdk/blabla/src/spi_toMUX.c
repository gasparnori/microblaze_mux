/*
 * spi_toMUX.c
 *
 *  Created on: Jan 30, 2018
 *      Author: Starklab
 */
#include "spi_toMUX.h"
#include "sleep.h"

int SpiInit(XSpi* Spi, u16 DeviceId)
{
	int status=XST_SUCCESS;
	//if we are after a reset, we need to reset the SPI interface too
	if (Spi->IsStarted == XIL_COMPONENT_IS_STARTED) {
		XSpi_Stop(Spi);
		XSpi_Abort(Spi);
		//XSpi_Reset(Spi);
		printf("Restarting SPI\r\n");
		//sleep(2);
	}
	//We need to start with initialization
	XSpi_Config *ConfigPtr;	// Pointer to Configuration data
	ConfigPtr = XSpi_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		interpretStatus(XST_DEVICE_NOT_FOUND, 1);
		return XST_DEVICE_NOT_FOUND;
	}

	status=XSpi_Initialize(Spi, DeviceId);
	if(status!=XST_SUCCESS){
		interpretStatus(status, 1);
		return status;
	}

		printf("master settings...");
		status=XSpi_SetOptions(Spi, XSP_MASTER_OPTION);
		if(status != XST_SUCCESS) {
			interpretStatus(status, 1);
			return status;
		};

	status=XSpi_Start(Spi);
	interpretStatus(status, 0);
	status= XSpi_SetSlaveSelect(Spi, 0x1);
	interpretStatus(status, 0);
	/*  */
	printf("Starting SPI...\r\n");
	XSpi_IntrGlobalDisable(Spi);

	return status;
}

int SPI_transfer(XSpi *Spi, u8 * data, u8 * received){
	//this only selects which slave will be used... doesn't initiate the communication...
	int status=0;
	/*if (Spi->IsStarted== XIL_COMPONENT_IS_STARTED)
			print ("Spi started properly");
	if (Spi->IsReady== XIL_COMPONENT_IS_READY)
				print ("Spi ready");
	else{
		print ("Spi not ready");
	}
	if(Spi->IsBusy)
		printf("SPI is busy");*/
	status=XSpi_Transfer(Spi, data, received, 2);
	interpretStatus(status, 1);
	//print("received 0x%x \r\n", received);
	return 1;
}

