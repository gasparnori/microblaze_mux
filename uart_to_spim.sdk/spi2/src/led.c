/*
 * led.c
 *
 *  Created on: Jan 30, 2018
 *      Author: Starklab
 */
#include <stdio.h>
#include "led.h"

int GPIOInit(XGpio* GPIO, u16 DeviceId)
{
	//volatile int Delay;
	//u32 LedBit;
	//u32 LedLoop;
	int Status;
	print("initializing GPIO...\n");

	/*
	 * Initialize the GPIO driver so that it's ready to use,
	 * specify the device ID that is generated in xparameters.h
	 */
	 Status = XGpio_Initialize(GPIO, DeviceId);
	 print("...\n");


	 if (Status != XST_SUCCESS) return XST_FAILURE;
	 /* Set the direction for all signals to be outputs */
	 XGpio_SetDataDirection(GPIO, LED_CHANNEL, OUTPUT_CHANNEL);
	 XGpio_SetDataDirection(GPIO, BTN_CHANNEL, INPUT_CHANNEL);
	 /* Set the GPIO outputs to low */
	 XGpio_DiscreteWrite(GPIO, LED_CHANNEL, 0xFF);
	 /* Set the direction for all signals to be inputs */


	 return XST_SUCCESS;

}

int toggleBlue(XGpio* GPIO){
	 u32 DataRead=0;

	 DataRead = XGpio_DiscreteRead(GPIO, BTN_CHANNEL);
	 if(DataRead == 0x1){
		 XGpio_DiscreteWrite(GPIO, LED_CHANNEL, 0x44);
	 }
	 else{
		XGpio_DiscreteWrite(GPIO, LED_CHANNEL, 0xFF);
	 }
}
int readBtn(XGpio* GPIO){
	u32 DataRead=0;
	DataRead = XGpio_DiscreteRead(GPIO, BTN_CHANNEL);
	if(DataRead == 0x1){ return 1;}
	else {return 0;}
}
