/*
 * socket_creat.c
 *
 *  Created on: 2015��8��2��
 *      Author: Administrator
 */

#include "socket_creat.h"

/*****************************************************************************
 * ���ܣ�����socket
 * ��������
 *����ֵ��iSoceID,�����ͺ���sl_send()����
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

