/*
 * socket_send.c
 *
 *  Created on: 2015年8月2日
 *      Author: Administrator
 */
#include "socket_send.h"
#include "Scan.h"

char g_cBsdBuf[BUF_SIZE];

/*****************************************************************************
 * 功能：连接服务器
 * 参数：port_num   服务器端口号
 *       ip_addr    服务器IP地址
 *       iSockID    SocketCreat的返回值
 *返回值：
 *****************************************************************************/
int ServerConnect(unsigned short port_num,unsigned int ip_addr,int iSockID)
{
    SlSockAddrIn_t  sAddr;
    int             iAddrSize;
    int             iStatus;
    //filling the TCP server socket address
	sAddr.sin_family = SL_AF_INET;
	sAddr.sin_port = sl_Htons(port_num);
	sAddr.sin_addr.s_addr = sl_Htonl(ip_addr);

	iAddrSize = sizeof(SlSockAddrIn_t);
	iStatus = sl_Connect(iSockID, ( SlSockAddr_t *)&sAddr, iAddrSize);
	if( iStatus < 0 )
	{
		UART_PRINT("error in server connecting");
		return 1;
	}
	else
		return 0;
}
/*****************************************************************************
 * 功能：TCP发送扫描到的AP参数
 * 参数：DeciceID   设备自己的Mac地址
 *       iSockID    SocketCreat的返回值
 *返回值：
 *****************************************************************************/
int SocketSend(int iSockID, _u16 DeviceID)
{

    int             iStatus;
    int             ScanNum;

       //填充说明热点信息的字符数组
	    for( ScanNum=0; ScanNum<AP_NUM; ScanNum++)
	    {
	    	if(strlen(netEntries[ScanNum].ssid)>0)
	    	{
		    	char MacAddr[18];
		    	int  i,j=0;
		    	//将bssid转换为ascll字符并以AA-AA-AA-AA-AA-AA的形式存储在字符数组MacAddr
		    	for(i=0;i<6;i++)
		    	{
		    		if((((netEntries[ScanNum].bssid[i])&(0xf0))>>4)<10)
		    		    MacAddr[j]=0x30+(((netEntries[ScanNum].bssid[i])&(0xf0))>>4);
		    		else
		    			MacAddr[j]=0x40+((((netEntries[ScanNum].bssid[i])&(0xf0))>>4)-9);
		    		j++;
		    		if(((netEntries[ScanNum].bssid[i])&(0x0f))<10)
		    		    MacAddr[j]=0x30+((netEntries[ScanNum].bssid[i])&(0x0f));
		    		else
		    			MacAddr[j]=0x40+(((netEntries[ScanNum].bssid[i])&(0x0f))-9);
		    		j++;
		    		if(i<5)
		    		{
		        		MacAddr[j]='-';
		        		j++;
		    		}
		    		else
		    			;
		    	}
		    	MacAddr[17]=0;
		    	//fill the buffer
		    	sprintf(g_cBsdBuf,WIFI_INF,DeviceID,netEntries[ScanNum].ssid,MacAddr,netEntries[ScanNum].rssi);
		    	strcat(g_cBsdBuf,"\n");

		        // sending packet
		        iStatus = sl_Send(iSockID, g_cBsdBuf,BUF_SIZE, 0 );
		        if( iStatus <= 0 )
		        {
		        	UART_PRINT("error in socket send");
		        	ServerConnect(SERVER_PORT,SERVER_IP,iSockID);
		        	//ServerConnect(5021,0xc0a8c8d3,iSockID);
		        }
		        memset(g_cBsdBuf,NULL,BUF_SIZE);
		        //延时90ms
		        MAP_UtilsDelay(2400000);

	    	}

	    }

    return SUCCESS;
}

