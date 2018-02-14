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
#include "led.h"
#include "spi_toMUX.h"
#include "deb.h"

int main () 
{
   Xil_ICacheEnable();
   Xil_DCacheEnable();
   XGpio GPIO;
   XSpi Spi;
   XGpio Deb;
   print("something");
   int gstatus=GPIOInit(&GPIO, gpio);
   int sstatus=SpiInit(&Spi, spiID);
  // int dstatus=debuggerInit(&Deb, DebuggerID);
   if ((gstatus==XST_SUCCESS) && (sstatus==XST_SUCCESS)){
	   print("---Entering main---\n\r");
   }
   else{ return 0;}
   int i=0;
   while(TRUE){
	   //toggleBlue(&GPIO);
	   u8 data[2];
	   u8 received[2];
	   if(i<32){
		i++;
	   	data [0]=i; //is MSB
	   	data [1]=0x01;// is LSB
	   	SPI_transfer(&Spi, data, received);
	   	printf("sent: 0x%x %x, received:  0x%x %x\r\n", data[0], data[1], received[0], received[1]);
	   }
	   else{
		   i=0;
	   }
	   if (readBtn(&GPIO)==1){break;}
   }



   /*
    * Peripheral SelfTest will not be run for axi_uartlite_0
    * because it has been selected as the STDOUT device
    */



   print("---Exiting main---\n\r");
   XSpi_Abort(&Spi);

   Xil_DCacheDisable();
   Xil_ICacheDisable();
   return 0;
}
