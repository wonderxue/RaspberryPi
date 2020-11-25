#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
float getTemp()
{
	int fid;
	char *buffer;
	float temp;
	buffer=(char *)malloc(10);
	fid=open("/sys/class/thermal/thermal_zone0/temp",O_RDONLY);
	read(fid,buffer,10);
	close(fid);
	temp=atof(buffer)/1000;
	printf("CPU temperature:%3.2f\n",temp);
	free(buffer);
	return temp;
}

