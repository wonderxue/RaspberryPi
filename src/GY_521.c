#include "GY_521.h"

struct GY_Config GY_Config={0x19,0x1a,0x1b,0x1c,0x6b};
struct Data_Read Data_Read={0x3b,0x3c,0x3d,0x3e,0x3f,0x40,0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48};
int fd;
void GY_Write_Cmd(unsigned char reg_address,unsigned char cmd)
{
  wiringPiI2CWriteReg8(fd,reg_address,cmd); 
}

unsigned char GY_Read_Byte(unsigned char reg_address)
{
  unsigned char data;
  data=wiringPiI2CReadReg8(fd,reg_address);
  return data;
}

void GY_Init()
{
  wiringPiSetup();
  fd=wiringPiI2CSetup(GY_Adress);
  GY_Write_Cmd(GY_Config.Pow_Manage,0x80);
  delay(100);
  GY_Write_Cmd(GY_Config.Pow_Manage,0x00);
  GY_Write_Cmd(GY_Config.Sample_Rate,0x07);
  GY_Write_Cmd(GY_Config.AC_Self_Check,0x01);//+/-2g
  GY_Write_Cmd(GY_Config.GY_Self_Check,0x18);//+/-2000/s
  GY_Write_Cmd(GY_Config.Low_Filter_Freq,0x06);
}

short int GY_Read_Data(unsigned char reg_address)
{
  unsigned char H,L;
  short int temp;
  H=GY_Read_Byte(reg_address);
  L=GY_Read_Byte(reg_address+1);
  temp=(H<<8)+L;
  return temp;
}
