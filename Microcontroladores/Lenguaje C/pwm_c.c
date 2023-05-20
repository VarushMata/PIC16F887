#include<htc.h>
#include<stdio.h>
#include "lcd.h"

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

void pause (unsigned short usvalue);
void msecbase(void);

void main(){
	ANSELH = 0x00;
	ANSEL = 0x60;
	
	TRISB = 0x00;
	TRISA = 0x00;
	TRISC = 0xFF;
	TRISD = 0x00
	TRISE = 0x03;
	
	PR2 = 0xFF;
	SSPCON2 = 0x00;
	SSPSTAT = 0x40;

	CCP1CON = 0x80;
	CCP2CON = 0x80;

	CCP1CON = 0x0C;
	CCP2CON = 0x0C;

	T2CKPS0 = 0;
	T2CKPS1 = 0;
	TME2IF = 0;
	TMR2ON = 0;
	while(TMR2IF);
	lcd_init();
	lcd_goto(0x00);
while(1){		//C_P

	ADCON0 = 0xD5;
	GO_DONE = 1;
	while(GO_DONE);
	
	CCPR1L = ADRESL;
	CCP1CON = 0x0C|(ADRESL>>2);
	pause(1);

	ADCON0 = 0xD9;
	GO_DONE = 1;
	while(GO_DONE);
	
	CCPR2L = ADRESL;
	CCP2CON = 0x0C|(ADRESL>>2);
	pause(1);
	
}


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

void msecbase(void){
	OPTION_REG = 0b00000001;		//Set prescaler to TMRO 1:4
	TMR0 = 0xD;					//Preset TMRO to overflow on 250 counts
	while(!T0IF);				//Stay until TMRO overflow flag equals 1
	T0IF = 0;					//Clear the TMR0 overflow flag
}
