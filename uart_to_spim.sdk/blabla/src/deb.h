/*
 * deb.h
 *
 *  Created on: Jan 31, 2018
 *      Author: Starklab
 */

#ifndef DEBUGGER_H_
#define DEBUGGER_H_



#include "xparameters.h"
#include "xil_cache.h"
#include "xgpio.h"

#define DebuggerID XPAR_GPIO_DEBUGGER_DEVICE_ID
#define counterMSB 5
#define commandMSB 13
#define activecounterMSB 15
#define SPI_SCLK 19
#define SPI_MOSI 18
#define SPI_CS 17
#define SPI_MISO 16

typedef struct {
   unsigned int AdcCounter: 6;
   unsigned int Command: 8;
   unsigned int activeCounter: 2;
   unsigned int spi_miso: 1;
   unsigned int spi_cs: 1;
   unsigned int spi_mosi: 1;
   unsigned int spi_sclk: 1;
   unsigned int other: 12;
} DataInput;

typedef union{
	u32 DataRead;
	DataInput interpret;
}debugData;

int debuggerInit(XGpio* GPIO, u16 DeviceId);
u32 getValues(XGpio* GPIO);

#endif /* DEBUGGER_H_ */
