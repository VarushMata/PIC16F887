#include <htc.h>

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

void pause( unsigned short usvalue );
void msecbase(void);

unsigned char VPA=0x00;


void main(void)
{
	//OSCCON = 0x70;	//OSCILADOR INTERNO 8MHZ 

	ANSEL  = 0x00;
	ANSELH = 0x00;
	
	TRISA = 0x00;
	TRISB = 0xFF;
	TRISC = 0x00;
	TRISD = 0x00;
	TRISE = 0x03;

	while (1)			//C_P
	{
		VPA = PORTB;
		PORTA = VPA;
		pause (10);
		NOP();
		//x=255;
		NOP();
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