#include <htc.h>

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

void retardo( unsigned char retar );

void derecha( unsigned char tm1);
void izquierda( unsigned char tm2);

unsigned char RET=0x00;

unsigned char TEMP1=0x00;
unsigned char TEMP2=0x00;

unsigned char VEL=0x00;
unsigned char ROT=0x00;


void main(void)
{
	ANSEL  = 0x00;
	ANSELH = 0x00;
	
	TRISA = 0x00;
	TRISB = 0xFF;
	TRISC = 0xFF;
	TRISD = 0x00;
	TRISE = 0x03;

	while (1)
	{
	
	TEMP1 = PORTB;
	TEMP2 = PORTB;

	VEL = TEMP1 >>4;

	TEMP2 = TEMP2<<6;
	ROT = TEMP2>>6;	


	switch(VEL){
	
	case (0x01):
	while(VEL==0x01){
	RET =0x01;
	if(ROT == 0x01){
	derecha(RET);
	}else if(ROT == 0x02){
	izquierda(RET);
	}
	}	
	break;

	case (0x03):
	while(VEL==0x02){
	RET =0x01;
	if(ROT == 0x01){
	derecha(RET);
	}else if(ROT == 0x02){
	izquierda(RET);
	}
	}	
	break;

	case (0x07):
	while(VEL==0x04){
	RET =0x01;
	if(ROT == 0x01){
	derecha(RET);
	}else if(ROT == 0x02){
	izquierda(RET);
	}
	}	
	break;

	case (0x0F):
	while(VEL==0x08){
	RET =0x01;
	if(ROT == 0x01){
	derecha(RET);
	}else if(ROT == 0x02){
	izquierda(RET);
	}
	}	
	break;
	}		
	}	
}

void derecha(unsigned char tm1){
PORTA = 0x0C;
retardo(tm1);
PORTA = 0x06;
retardo(tm1);
PORTA = 0x03;
retardo(tm1);
PORTA = 0x09;
retardo(tm1);
}

void izquierda(unsigned char tm2)
{
PORTA = 0x09;
retardo(tm2);
PORTA = 0x06;
retardo(tm2);
PORTA = 0x03;
retardo(tm2);
PORTA = 0x0C;
retardo(tm2);
}


void retardo(unsigned char retar){
/*
	unsigned char VC = retar;
	unsigned char VB = 0xFA;
	unsigned char VA = 0xF9;
*/
	
	for(char VA = 0xF9;VA<=0x00; VA--);
	for(char VB = 0xFA;VB<=0x00; VB--);
	for(char VC = retar;VC<=0x00; VC--);

	/*
	while(VA >= 0x00){
	VA--;
	}
	while(VB >= 0x00){
	VB--;
	}
	while(VC >= 0x00){
	VC--;
	}
*/

}