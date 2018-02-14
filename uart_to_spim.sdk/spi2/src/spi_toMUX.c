/*
 * spi_toMUX.c
 *
 *  Created on: Jan 30, 2018
 *      Author: Starklab
 */
#include "spi_toMUX.h"

int SpiInit(XSpi* Spi, u16 DeviceId)
{
	//if we are after a reset, we need to reset the SPI interface too
	if (Spi->IsStarted == XIL_COMPONENT_IS_STARTED) {
		XSpi_Reset(Spi);
		printf("Resetting SPI\r\n");
	}
	else{ 	//If it's the first run, we need to start with initialization
		XSpi_Config *ConfigPtr;	// Pointer to Configuration data
		ConfigPtr = XSpi_LookupConfig(DeviceId);
		if (ConfigPtr == NULL) {
			printf("interface not found\r\n");
			return XST_DEVICE_NOT_FOUND;
		}
		if(XSpi_Initialize(Spi, DeviceId)!=XST_SUCCESS){
			printf("error with initialization\r\n");
			return XST_FAILURE;
		}

		printf("master settings...");
		if(XSpi_SetOptions(Spi, XSP_MASTER_OPTION)!= XST_SUCCESS) {
			printf("error with master settings\r\n");
			return XST_FAILURE;
		};

	}
	//Perform a self-test to ensure that the hardware was built correctly
	//	if(XSpi_SelfTest(Spi)!= XST_SUCCESS) {
	//		return XST_FAILURE;
	//	}
	//printf("Starting SPI...\r\n");
	XSpi_Start(Spi);
	XSpi_SetSlaveSelect(Spi, 0x1);
	printf("Starting SPI...\r\n");
	XSpi_IntrGlobalDisable(Spi);

	return XST_SUCCESS;
}

int SPI_transfer(XSpi *Spi, u8 * data, u8 * received){
	//this only selects which slave will be used... doesn't initiate the communication...
	XSpi_Transfer(Spi, data, received, 2);
	//print("received 0x%x \r\n", received);
	return 1;
}

