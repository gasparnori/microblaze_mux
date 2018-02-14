/*
 * deb.h
 *
 *  Created on: Jan 31, 2018
 *      Author: Starklab
 */

#ifndef DEBUGGER_H_
#define DEBUGGER_H_

#define SIGNAL_CHANNEL 1
#define OUTPUT_CHANNEL 0
#define INPUT_CHANNEL 1

#define DebuggerID XPAR_GPIO_DEBUGGER_DEVICE_ID

#define counterMSB 5
#define commandMSB 13
#define activecounterMSB 15
#define SPI_SCLK 19
#define SPI_MOSI 18
#define SPI_CS 17
#define SPI_MISO 16

#include "xparameters.h"
#include "xil_cache.h"
#include "xgpio.h"

int debuggerInit(XGpio* GPIO, u16 DeviceId);

#endif /* DEBUGGER_H_ */
