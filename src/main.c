#include <wiringPi.h>
#include <wiringPiI2C.h>
#include "oled.h"
#include <stdio.h>
#include "ip.h"
#include "string.h"
#include "temp.h"
#include <stdlib.h>
extern int fd;
int main()
{	char ip[32];
	char string[64];
	strcpy(string,"IP:");
	oled_init();
	oled_write_cmd(0xDA);//pin configuartion
	oled_write_cmd(0x00);
	oled_write_cmd(0xA8);//ratio 1-64
	oled_write_cmd(0x1F);
	oled_on();
	oled_cls();
	oled_display_mode(0);
	oled_write_cmd(0xA6);
	delay(1000);
	//printf("%s\n",ip);
	//oled_ShowString()
	while (1)
	{
	getip(ip);
	strcat(string,ip);
	OLED_ShowString(0,0,string,8);
	gcvt(getTemp(),4,ip);
	strcpy(string,"CPU-F:");
	strcat(string,ip);
	OLED_ShowString(0,1,string,8);
	strcpy(string,"IP:");
	delay(5000);
	oled_set_pos(0,0);
	oled_cls();
	}
	return 0;
}
	
