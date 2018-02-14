/*
 * uart.h
 *
 *  Created on: Jan 31, 2018
 *      Author: Starklab
 */
#import "xuartlite.h"

#ifndef SRC_MYUART_H_
#define SRC_MYUART_H_


#define UARTLITE_DEVICE_ID	XPAR_UARTLITE_0_DEVICE_ID
#define TEST_BUFFER_SIZE 16

int uartInit(XUartLite * Uart, u16 DeviceId);

#endif /* SRC_MYUART_H_ */
