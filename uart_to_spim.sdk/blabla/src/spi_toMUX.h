/*
 * spi.h
 *
 *  Created on: Jan 30, 2018
 *      Author: Starklab
 */

#ifndef SRC_SPI_TOMUX_H_
#define SRC_SPI_TOMUX_H_

#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xspi.h"
#include "xst_errors.h"
#include "spi_header.h"

#define spiID XPAR_AXI_QUAD_SPI_0_DEVICE_ID
#define BUFFER_SIZE 32


typedef struct {
   unsigned int LSB: 8;
   unsigned int MSB: 8;
} ReceivedBits;

typedef union{
	u8 data[BUFFER_SIZE*2];
	char touart[BUFFER_SIZE*2];
}receivedData;


//u8 ReadBuffer[BUFFER_SIZE];
//u8 WriteBuffer[BUFFER_SIZE];

int SpiInit(XSpi* Spi, u16 DeviceId);
int SPI_transfer(XSpi *Spi, u8 * data, u8 * received);
#endif /* SRC_SPI_TOMUX_H_ */
