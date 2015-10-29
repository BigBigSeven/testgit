/*
 * Scan.c
 *
 *  Created on: 2015年7月21日
 *      Author: Administrator
 */

//**************************************************************************
//扫描WLAN，获得扫描结果
//参数： 无
//返回值：
//**************************************************************************

#include "Scan.h"

Sl_WlanNetworkEntry_t netEntries[WLAN_SCAN_COUNT];

long WlanScan(void *pvParameters)
{
    long lRetVal = -1;
    unsigned short ucIndex;
    unsigned char ucpolicyOpt;
    union
    {
        unsigned char ucPolicy[4];
        unsigned int uiPolicyLen;
    }policyVal;

    //
    // make sure the connection policy is not set (so no scan is run in the
    // background)
    //
    ucpolicyOpt = SL_CONNECTION_POLICY(0, 0, 0, 0,0);
    lRetVal = sl_WlanPolicySet(SL_POLICY_CONNECTION , ucpolicyOpt, NULL, 0);
    if(lRetVal != 0)
    {
        //GPIO_IF_LedOn(MCU_EXECUTE_FAIL_IND);
        UART_PRINT("Unable to clear the Connection Policy\n\r");
        return lRetVal;
    }

    //
    // enable scan
    //
    ucpolicyOpt = SL_SCAN_POLICY(1);
    //
    // set scan cycle to 10 seconds
    //
    policyVal.uiPolicyLen = 10;
    //
    // set scan policy - this starts the scan
    //
    lRetVal = sl_WlanPolicySet(SL_POLICY_SCAN , ucpolicyOpt,
                               (unsigned char*)(policyVal.ucPolicy), sizeof(policyVal));
    if(lRetVal!=0)
    {
        //GPIO_IF_LedOn(MCU_EXECUTE_FAIL_IND);
        UART_PRINT("Unable to set the Scan Policy\n\r");
        return lRetVal;
    }
    MAP_UtilsDelay(8000000);
    //
    // get scan results - all 20 entries in one transaction
    //
    ucIndex = 0;
    //
    // retVal indicates the valid number of entries
    // The scan results are occupied in netEntries[]
    //
    lRetVal = sl_WlanGetNetworkList(ucIndex, (unsigned char)WLAN_SCAN_COUNT,
    	                                    &netEntries[ucIndex]);
    if(lRetVal==0)
    {
    	//GPIO_IF_LedOn(MCU_EXECUTE_FAIL_IND);
    	UART_PRINT("Unable to retreive the network list\n\r");
    	return lRetVal;
    }
    ucpolicyOpt = SL_SCAN_POLICY(0);
    lRetVal = sl_WlanPolicySet(SL_POLICY_SCAN , ucpolicyOpt, NULL, 0);
    return SUCCESS;
}
