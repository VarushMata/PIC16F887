
#include<htc.h>
#include<stdio.h>
#include "lcd.h"

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

void pause (unsigned short usvalue);
void msecbase(void);

unsigned int VAD;
float num;
unsigned char carac[5]; 

void main(){
	ANSEL  = 0xE0;
	ANSELH = 0x00;

	ADCON1 = 0x80;
	
	TRISA = 0x00;
	TRISB = 0xFF;
	TRISC = 0x00;
	TRISD = 0x00;
	TRISE = 0x07;
	
	lcd_init();
	lcd_goto(0x00);
	lcd_puts("V1:");
	lcd_goto(0x08);
	lcd_puts("V2:");
	lcd_goto(0x44);
	lcd_puts("V3:");

	while (1)			//C_P
	{
		ADCON0 = 0xD5;
		GO_DONE = 1;
		while(GO_DONE);
		VAD = (ADRESH<<8)|ADRESL;
		num = VAD * 0.0048875855327468;
		sprintf(carac,"%.3f",num);
		lcd_goto(0x03);
		lcd_puts(carac);
	

		ADCON0 = 0xD9;
		GO_DONE = 1;
		while(GO_DONE);
		VAD = (ADRESH<<8)|ADRESL;
		num = VAD * 0.0048875855327468;
		sprintf(carac,"%.3f",num);
		lcd_goto(0x0B);
		lcd_puts(carac);
		

		ADCON0 = 0xDD;
		GO_DONE = 1;
		while(GO_DONE);
		VAD = (ADRESH<<8)|ADRESL;
		num = VAD * 0.0048875855327468;
		sprintf(carac,"%.3f",num);
		lcd_goto(0x47);
		lcd_puts(carac);

		pause(500);

		

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
