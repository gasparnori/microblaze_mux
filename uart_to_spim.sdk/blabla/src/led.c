/*
 * led.c
 *
 *  Created on: Jan 30, 2018
 *      Author: Starklab
 */

#include "led.h"


int GPIOInit(XGpio* GPIO, u16 DeviceId)
{
	//volatile int Delay;
	//u32 LedBit;
	//u32 LedLoop;
	int status;
	print("initializing GPIO...\n");

	/*
	 * Initialize the GPIO driver so that it's ready to use,
	 * specify the device ID that is generated in xparameters.h
	 */
	 status = XGpio_Initialize(GPIO, DeviceId);
	 if (status != XST_SUCCESS){
		 interpretStatus(status, 1);
		 return status;
	 }
	 /* Set the direction for output and input signals */
	 XGpio_SetDataDirection(GPIO, LED_CHANNEL, OUTPUT_CHANNEL);
	 XGpio_SetDataDirection(GPIO, BTN_CHANNEL, INPUT_CHANNEL);
	 /* Set the GPIO outputs to low */
	 XGpio_DiscreteWrite(GPIO, LED_CHANNEL, 0xFF);

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
	 return 0;
}
int readBtn(XGpio* GPIO){
	u32 DataRead=0;
	DataRead = XGpio_DiscreteRead(GPIO, BTN_CHANNEL);
	if(DataRead == 0x1){ return 1;}
	else {return 0;}
}
