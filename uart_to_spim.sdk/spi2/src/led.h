/*
 * led.h
 *
 *  Created on: Jan 30, 2018
 *      Author: Starklab
 */

#ifndef SRC_LED_H_
#define SRC_LED_H_

#define LED_CHANNEL 1
#define BTN_CHANNEL 2
#define OUTPUT_CHANNEL 0
#define INPUT_CHANNEL 1

#define gpio XPAR_AXI_GPIO_0_DEVICE_ID

#include "xparameters.h"
#include "xil_cache.h"
#include "xgpio.h"
#include "gpio_header.h"

int GPIOInit(XGpio* GPIO, u16 DeviceId);
int toggleBlue(XGpio* GPIO);
int readBtn(XGpio* GPIO);

#endif /* SRC_LED_H_ */
