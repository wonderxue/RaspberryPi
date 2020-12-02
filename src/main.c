#include "GY_521.h"
#include <stdio.h>
int main()
{
float x,y,z;
  GY_Init();
while(1)
{x=GY_Read_Data(Data_Read.ACCEL_XOUT_H)/16384.0;
y=GY_Read_Data(Data_Read.ACCEL_YOUT_H)/16384.0;
z=GY_Read_Data(Data_Read.ACCEL_ZOUT_H)/16384.0;
printf("x=%f  y=%f  z=%f\n",x,y,z);
}}
  
