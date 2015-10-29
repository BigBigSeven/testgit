/*
 * deepsleep.c
 *
 *  Created on: 2015Äê8ÔÂ4ÈÕ
 *      Author: Administrator
 */

#include "deepsleep.h"

void AppGPTCallBackHandler()
{
    MAP_TimerIntClear(TIMERA0_BASE,TIMER_TIMB_TIMEOUT|TIMER_TIMA_TIMEOUT);
    DBG_PRINT("GPT TIMERA0 Interrupt occured\n\r");
}

//****************************************************************************
//
//! Implements Deep Sleep followed by wakeup using GPT timeout
//!
//! \param none
//!
//! This function
//!    1. Implements DeepSleep followed by wakeup using GPT
//!
//! \return None.
//
//****************************************************************************
void PerformPRCMDeepSleepGPTWakeup()
{
    //
    // Power On the GPT
    //
    MAP_PRCMPeripheralClkEnable(PRCM_TIMERA0, PRCM_RUN_MODE_CLK);

    //
    // Initialize the GPT as One Shot timer, Clock is halved in DeepSleep
    //
    Timer_IF_Init(PRCM_TIMERA0, TIMERA0_BASE, TIMER_CFG_ONE_SHOT, TIMER_BOTH, 0);
    Timer_IF_IntSetup(TIMERA0_BASE, TIMER_BOTH, AppGPTCallBackHandler);
    Timer_IF_Start(TIMERA0_BASE, TIMER_BOTH, (SLEEP_SEC * SYS_CLK));

    //
    // Enable the DeepSleep Clock
    //
    MAP_PRCMPeripheralClkEnable(PRCM_TIMERA0, PRCM_DSLP_MODE_CLK);

    //
    // Enter DEEPSLEEP...WaitForInterrupt ARM intrinsic
    //
    DBG_PRINT("GPT_DEEPSLEEP: Entering Deep Sleep\n\r");
    MAP_UtilsDelay(80000);
    PRCMDeepSleepEnter();
    DBG_PRINT("GPT_DEEPSLEEP: Exiting Deep Sleep\n\r");

    //
    // Disable the DeepSleep Clock
    //
    MAP_PRCMPeripheralClkDisable(PRCM_TIMERA0, PRCM_DSLP_MODE_CLK);

    //
    // Deinitialize the GPT
    //
    Timer_IF_Stop(TIMERA0_BASE, TIMER_BOTH);
    Timer_IF_DeInit(TIMERA0_BASE, TIMER_BOTH);

    //
    // PowerOff GPT
    //
    MAP_PRCMPeripheralClkDisable(PRCM_TIMERA0, PRCM_RUN_MODE_CLK);
}

