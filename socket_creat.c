/*
 * socket_creat.c
 *
 *  Created on: 2015年8月2日
 *      Author: Administrator
 */

#include "socket_creat.h"

/*****************************************************************************
 * 功能：建立socket
 * 参数：无
 *返回值：iSoceID,被发送函数sl_send()调用
 *****************************************************************************/
int SocketCreat()
{
    int             iSockID;
	iSockID = sl_Socket(SL_AF_INET,SL_SOCK_STREAM, 0);
	if( iSockID < 0 )
	{
		UART_PRINT("error in socket creating!");
	}

	return iSockID;
}

