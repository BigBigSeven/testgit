/*
 * Scan.h
 *
 *  Created on: 2015年7月21日
 *      Author: Administrator
 */

#ifndef SCAN_H_
#define SCAN_H_

// Simplelink includes
#include "simplelink.h"

//Driverlib includes
#include "hw_types.h"
#include "hw_ints.h"
#include "rom.h"
#include "rom_map.h"
#include "interrupt.h"
#include "prcm.h"
#include "utils.h"

//Common interface includes
#include "gpio_if.h"
#include "common.h"
#ifndef NOTERM
#include "uart_if.h"
#endif

#include "pinmux.h"

//扫描结果个数
#define WLAN_SCAN_COUNT         20        //最多能扫描的AP个数

extern long WlanScan(void *pvParameters);
extern Sl_WlanNetworkEntry_t netEntries[WLAN_SCAN_COUNT];

#endif /* SCAN_H_ */
