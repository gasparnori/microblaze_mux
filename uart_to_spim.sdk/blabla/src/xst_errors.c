/*
 * xst_errors.c
 *
 *  Created on: Feb 7, 2018
 *      Author: Starklab
 */

#include "xst_errors.h"

/*
#define XST_SUCCESS                     0L
#define XST_FAILURE                     1L
#define XST_DEVICE_NOT_FOUND            2L
#define XST_DEVICE_BLOCK_NOT_FOUND      3L
#define XST_INVALID_VERSION             4L
#define XST_DEVICE_IS_STARTED           5L
#define XST_DEVICE_IS_STOPPED           6L
#define XST_FIFO_ERROR                  7L
#define XST_RESET_ERROR                 8L
#define XST_DMA_ERROR                   9L
#define XST_NOT_POLLED                  10L
#define XST_FIFO_NO_ROOM                11L
#define XST_BUFFER_TOO_SMALL            12L
#define XST_NO_DATA                     13L
#define XST_REGISTER_ERROR              14L
#define XST_INVALID_PARAM               15L
#define XST_NOT_SGDMA                   16L
#define XST_LOOPBACK_ERROR              17L
#define XST_NO_CALLBACK                 18L
#define XST_NO_FEATURE                  19L
#define XST_NOT_INTERRUPT               20L
#define XST_DEVICE_BUSY                 21L
#define XST_ERROR_COUNT_MAX             22L
#define XST_IS_STARTED                  23L
#define XST_IS_STOPPED                  24L
#define XST_DATA_LOST                   26L
#define XST_RECV_ERROR                  27L
#define XST_SEND_ERROR                  28L
#define XST_NOT_ENABLED                 29L
*/

void interpretStatus(int status, int onlyerrors){
	switch(status)
			{
				case XST_SUCCESS: if (onlyerrors==0){printf("success:) \n\r");} break; //0L
				case XST_FAILURE: printf("Status: Failure\n\r"); break; //1L
				case XST_DEVICE_NOT_FOUND: printf("Status: Device not found\n\r"); break; //2L
				case XST_DEVICE_BLOCK_NOT_FOUND: printf("Status: Device block not found\n\r"); break; //3L
				case XST_INVALID_VERSION: printf("Status: Invalid version \n\r"); break; //4L
				case XST_DEVICE_IS_STARTED: printf("Status: Device started\n\r"); break; //5L
				case XST_DEVICE_IS_STOPPED: printf("Status: Device stopped\n\r"); break; //6L
				case XST_FIFO_ERROR: printf("Status: FIFO error \n\r"); break; //6L

				case XST_RECV_ERROR: printf("Status: receive error\n\r"); break;
				case XST_SEND_ERROR: printf("Status: send error\n\r"); break;

				case XST_IS_STARTED: printf("Status: part of the device already started\n\r"); break;
				case XST_IS_STOPPED: printf("Status: part of the device is stopped\n\r"); break;
				case XST_DEVICE_BUSY: printf("Status: Device busy\n\r"); break;
				case XST_SPI_NO_SLAVE: printf("Status: Device no slave\n\r"); break;
				default: printf("other error...\n\r");break;
			}

}