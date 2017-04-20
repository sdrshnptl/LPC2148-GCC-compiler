/*
20/4/2017 added header
*/
#include"lpc214x.h"

#define Output_1 	21//p0.21

#define GPIO1_ON()	IO0PIN &= ~(1<<Output_1);  		//ON
#define GPIO1_OFF()	IO0PIN |= (1<<Output_1);		//OFF


void delay()
{
	int i;
	for(i=0;i<100000;i++);
}

void main()
{
	IO0PIN = 0xFFFFFFFF; // IO0PIN = 0X00000000;
	IO0DIR |= (1<<Output_1);

	while(1)
	{
		GPIO1_ON();
		delay();
		GPIO1_OFF();
		delay();
	}
}
