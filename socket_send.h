/*
 * socket_send.h
 *
 *  Created on: 2015��8��2��
 *      Author: Administrator
 */

#ifndef SOCKET_SEND_H_
#define SOCKET_SEND_H_

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

#define BUF_SIZE            100                  //���ڴ洢AP��Ϣ�������С
#define AP_NUM              20                    //Ҫ���͵�AP����
#define WIFI_INF   "{\"wifi\":{\"id\":%d,\"ap\":\"%s\",\"mac\":\"%s\",\"rssi\":%d}}"
#define SERVER_PORT             8074         //�������˿�
#define SERVER_IP               0xc0a8c81d   //��������ַ

extern int ServerConnect(unsigned short port_num,unsigned int ip_addr,int iSockID);
extern int SocketSend(int iSockID, _u16 DeviceID);

#endif /* SOCKET_SEND_H_ */
