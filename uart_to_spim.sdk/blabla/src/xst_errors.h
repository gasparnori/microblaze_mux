/*
 * xst_errors.h
 *
 *  Created on: Feb 7, 2018
 *      Author: Starklab
 */

#ifndef SRC_XST_ERRORS_H_
#define SRC_XST_ERRORS_H_


#include "xparameters.h"
#include "xstatus.h"
#include <stdio.h>

void interpretStatus(int status, int onlyerrors);
#endif /* SRC_XST_ERRORS_H_ */