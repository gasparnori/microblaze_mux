/*
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION 
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 */

/*
 * 
 *
 * This file is a generated sample test application.
 *
 * This application is intended to test and/or illustrate some 
 * functionality of your system.  The contents of this file may
 * vary depending on the IP in your system and may use existing
 * IP driver functions.  These drivers will be generated in your
 * SDK application project when you run the "Generate Libraries" menu item.
 *
 */

#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xgpio.h"
#include "gpio_header.h"
#include "xspi.h"
#include "spi_header.h"
#define LED_CHANNEL 1
#define BTN_CHANNEL 2
#define OUTPUT_CHANNEL 0
#define INPUT_CHANNEL 1

#define gpio XPAR_AXI_GPIO_0_DEVICE_ID
#define spiID XPAR_AXI_QUAD_SPI_0_DEVICE_ID
#define BUFFER_SIZE 32

u8 ReadBuffer[BUFFER_SIZE];
u8 WriteBuffer[BUFFER_SIZE];



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
	 XGpio_DiscreteWrite(GPIO, LED_CHANNEL, 0x0);
	 /* Set the direction for all signals to be inputs */


	 return XST_SUCCESS;

}
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

	//Perform a self-test to ensure that the hardware was built correctly
		if(XSpi_SelfTest(Spi)!= XST_SUCCESS) {
			return XST_FAILURE;
		}
		printf("Starting SPI...\r\n");
	}
	XSpi_Start(Spi);
	XSpi_IntrGlobalDisable(Spi);

	return XST_SUCCESS;
}

int SPI_transfer(XSpi *Spi){
//this only selects which slave will be used... doesn't initiate the communication...
	XSpi_SetSlaveSelect(Spi, 0x0);
	print ("slave select works");
	u8 data[2];
	data [0]=0x11; //is MSB
	data [1]=0x01;// is LSB
	//for (int i=0; i<BUFFER_SIZE; i++){
	//	WriteBuffer[i]=m;
	//};
	print (" data works");
	XSpi_Transfer(Spi, data, NULL, 2);
	print ("wtffffff");
	//print("received 0x%x \r\n", received);
	return 1;
}

int main () 
{
   Xil_ICacheEnable();
   Xil_DCacheEnable();
   XGpio GPIO;
   XSpi Spi;
   int gpiostatus,spistatus;
   gpiostatus=GPIOInit(&GPIO, gpio);
   spistatus=SpiInit(&Spi, spiID);

   if (spistatus != XST_SUCCESS) {
  		 print("Spi initialization error");
  		 return 0;
  	  }
   if (gpiostatus != XST_SUCCESS) {
    		 print("GPIO initialization error");
    		 return 0;
    	  }
   for (int i=0; i<32; i++){
	   WriteBuffer[i]=i;
   }
   print("---Entering main---\n\r");

	  u32 DataRead=0;
	   while (TRUE){

			 DataRead = XGpio_DiscreteRead(&GPIO, BTN_CHANNEL);
			 if(DataRead == 0x1){
				 XGpio_DiscreteWrite(&GPIO, LED_CHANNEL, 0x44);
				 print(DataRead);
			 }
			 else{
						 XGpio_DiscreteWrite(&GPIO, LED_CHANNEL, 0xFF);
					 }
			 print("sending SPI...");
			 SPI_transfer(&Spi);

		   }



   print("---Exiting main---\n\r");
   Xil_DCacheDisable();
   Xil_ICacheDisable();
   return 0;
}
