/*
 * Scan.h
 *
 *  Created on: 2015��7��21��
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

//ɨ��������
#define WLAN_SCAN_COUNT         20        //�����ɨ���AP����

extern long WlanScan(void *pvParameters);
extern Sl_WlanNetworkEntry_t netEntries[WLAN_SCAN_COUNT];

#endif /* SCAN_H_ */
