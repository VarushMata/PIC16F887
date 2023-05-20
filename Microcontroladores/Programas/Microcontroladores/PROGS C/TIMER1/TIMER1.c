#include <htc.h>

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

unsigned char VPA=0x00;

void main(void)
{
	ANSEL  = 0x00;
	ANSELH = 0x00;
	
	TRISA = 0x00;
	TRISB = 0x10;
	TRISC = 0x00;
	TRISD = 0x00;
	TRISE = 0x00;
	
	OPTION_REG = 0b11110000;

	while (1)			//C_P
	{
	
	VPA = TMR0;
	PORTA = TMR0;

	}	
}

