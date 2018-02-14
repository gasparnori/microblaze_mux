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
#include "deb.h"

#include "xparameters.h"
#include "xil_cache.h"
#include "xgpio.h"
#include "gpio_header.h"
#include "xspi.h"
#include "spi_header.h"
#include "led.h"
#include "spi_toMUX.h"
#include "myuart.h"
#include "xstatus.h"
#include "sleep.h"

#define UARTCOM 1 //only data is being sent on Uart

int main () 
{
   Xil_ICacheEnable();
   Xil_DCacheEnable();
    XGpio GPIO;
    XSpi Spi;
    XGpio Deb;
    //print("something");
    int gstatus=GPIOInit(&GPIO, gpio);
    int sstatus=SpiInit(&Spi, spiID);
    int dstatus=debuggerInit(&Deb, DebuggerID);
    //int uartstatus=uartInit(&Uart, UARTLITE_DEVICE_ID);
    if ((gstatus==XST_SUCCESS)&& (dstatus==XST_SUCCESS) && (sstatus==XST_SUCCESS)){
 	   if (UARTCOM!=1) print("---Entering main---\n\r");
		int i=0;
		int j=0;
		//u8 data[BUFFER_SIZE*2];
		u8 d[2];
		receivedData received;//[BUFFER_SIZE*2];

		/*if(i<32){
					i++;
				}
				else{
					i=0;
		}
		for (j=0; j<BUFFER_SIZE; j++){
					data [j*2+1]=15; //is MSB
					data [j*2]=1;// is LSB
					received.data[j*2+1]=0; //is MSB
					received.data[j*2]=0;// is LSB
		}*/
		puts("start streaming");
		while(TRUE){

		   //toggleBlue(&GPIO);

				//CS has to be high between two transfers
			for (j=0; j<BUFFER_SIZE; j++){
				d [1]=0; //is MSB
				d [0]=1;// is LSB
				SPI_transfer(&Spi, d, &received.data[j*2]);
			}
			//char test1[4]={0x2A, 0x2A, "\n", "\r"};

			//for (j=0; j<BUFFER_SIZE; j++){

			print(received.touart);
			//printf("%x%x\n\r", received.data[j*2+1], received.data[j*2]);
				//puts(received.touart);
				//debugData d;
				//if ( received[j*2]!=0 || received[j*2+1]!=0)
				//d.DataRead=getValues(&Deb);
				//if (d.interpret.activeCounter==2){
				//	printf("sent: 0x%x %x, received:  0x%x %x\r\n", data[j*2], data[j*2+1], received[j*2+1], received[j*2]);
				//}
			//}
			//sleep(1);
			//printf("sent: 0x%x %x, received:  0x%x %x\r\n", data[0], data[1], received[0], received[1]);
			//debugData d;
		   // d.DataRead=getValues(&Deb);
		   // printf("data: %lu   ", d.DataRead);
			//if (d.interpret.activeCounter==2){
				//printf("active counter: %d  received: 0x%x %x\r\n", d.interpret.activeCounter, received[1], received[0]);
			//printf("wtf");
		   // }
		   // printf ("ADC counter: %d, active counter: %d, command: %d\r\n", d.interpret.AdcCounter, d.interpret.activeCounter, d.interpret.Command);

		   //else{
			//   i=0;
		   //}
		   if (readBtn(&GPIO)==1){break;}
		}
    }



    if (UARTCOM!=1) print("---Exiting main---\n\r");
    XSpi_Abort(&Spi);

    Xil_DCacheDisable();
    Xil_ICacheDisable();
    return 0;
}