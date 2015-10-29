/*
 * socket_creat.h
 *
 *  Created on: 2015Äê8ÔÂ2ÈÕ
 *      Author: Administrator
 */

#ifndef SOCKET_CREAT_H_
#define SOCKET_CREAT_H_

#include <string.h>

// simplelink includes
#include "simplelink.h"
#include "wlan.h"

// driverlib includes
#include "hw_ints.h"
#include "hw_types.h"
#include "hw_memmap.h"
#include "hw_common_reg.h"
#include "rom.h"
#include "rom_map.h"
#include "interrupt.h"
#include "prcm.h"
#include "uart.h"
#include "utils.h"

// common interface includes
#include "gpio_if.h"
#include "udma_if.h"
#include "common.h"
#ifndef NOTERM
#include "uart_if.h"
#endif

#include "pinmux.h"


//#define IP_ADDR             0xc0a8c8d3 /* 192.168.200.211 */
//#define PORT_NUM            5201

extern int SocketCreat();
#endif /* SOCKET_CREAT_H_ */
