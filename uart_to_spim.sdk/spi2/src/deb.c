/*
 * deb.c
 *
 *  Created on: Jan 31, 2018
 *      Author: Starklab
 */

#include <stdio.h>

#include "deb.h"

int debuggerInit(XGpio* GPIO, u16 DeviceId)
{
	//volatile int Delay;
	//u32 LedBit;
	//u32 LedLoop;
	int Status;
	print("initializing debugger signals...\n");

	/*
	 * Initialize the GPIO driver so that it's ready to use,
	 * specify the device ID that is generated in xparameters.h
	 */
	 Status = XGpio_Initialize(GPIO, DeviceId);
	 print("...\n");


	 if (Status != XST_SUCCESS) return XST_FAILURE;
	 /* Set the direction for all signals to be inputs */
	 XGpio_SetDataDirection(GPIO, SIGNAL_CHANNEL, INPUT_CHANNEL);



	 return XST_SUCCESS;

}

