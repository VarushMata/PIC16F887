#include <htc.h>

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

void pause( unsigned short usvalue );
void msecbase(void);

unsigned char VPA=0x00;
unsigned char VPB=0x00;

unsigned char NA=0x0F;
unsigned char NB=0xF0;

unsigned char OP=0x00;
unsigned char RS=0x00;
void main(void)
{

	ANSEL  = 0x00;
	ANSELH = 0x00;
	
	TRISA = 0x00;
	TRISB = 0xFF;
	TRISC = 0xFF;
	TRISD = 0x00;
	TRISE = 0x00;

	while (1)			//C_P
	{
	
	NA = PORTB;
	NB = PORTB;
	
	VPA=NA>>4;

	NB=NB<<4;
	VPB=NB>>4;

	OP = PORTC;	

	switch(OP){

		case (0x00):
		RS = VPA + VPB;
		PORTA = RS;	
		break;	

		case (0x01):
		RS = VPA - VPB;
		PORTA = RS;	
		break;

		case (0x02):
		RS = VPA * VPB;
		PORTA = RS;	
		break;

		case (0x03):
		RS = VPB / VPA;
		PORTA = RS;	
		break;

		default:
		RS = 0xFF;
		PORTA = RS;
		break;
	}
/*
	if(OP == (0x00)){
	RS = VPA + VPB;
	PORTA = RS;	
	}
	else if(OP == (0x01)){
	RS = VPB - VPA;
	PORTA = RS;	
	} 
	else if(OP == (0x02)){
	RS = VPA * VPB;
	PORTA = RS;	
	} 
	else if(OP == (0x03)){
	RS = VPB / VPA;
	PORTA = RS;	
	} 
*/
	}	
}

void pause(unsigned short usvalue)
{
	unsigned short x;
	for (x=0; x<usvalue; x++)
	{
		msecbase();
	}
}

void msecbase(void)
{
	OPTION_REG = 0b11010001;
	TMR0 = 0x0F;
	while(!T0IF);
	T0IF = 0;
}