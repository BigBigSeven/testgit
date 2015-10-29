/*
 * deepsleep.h
 *
 *  Created on: 2015年8月4日
 *      Author: Administrator
 */

#ifndef DEEPSLEEP_H_
#define DEEPSLEEP_H_

#include <stdio.h>

// Driverlib includes
#include "hw_types.h"
#include "hw_memmap.h"
#include "hw_apps_rcm.h"
#include "hw_ints.h"
#include "prcm.h"
#include "timer.h"
#include "wdt.h"
#include "rom.h"
#include "rom_map.h"
#include "interrupt.h"
#include "utils.h"
#include "hw_common_reg.h"

// Common interface includes
#include "timer_if.h"
#include "wdt_if.h"
#include "uart_if.h"
#include "pinmux.h"

#define ARM_SYSTEM_CTRL_REG     0xE000ED10
#define SYS_CLK                 80000000
#define DBG_PRINT               Report
#define SLEEP_SEC				 8                               //休眠时间，单位：S

//中断句柄，唤醒休眠
extern void AppGPTCallBackHandler();
//休眠
extern void PerformPRCMDeepSleepGPTWakeup();

#endif /* DEEPSLEEP_H_ */
