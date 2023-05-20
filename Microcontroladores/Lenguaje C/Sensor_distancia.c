#include<htc.h>
#include<stdio.h>
#include "lcd.h"
#define TRIGGER RB0
#define ECHO RB1
__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

void pause (unsigned short usvalue);
void msecbase(void);
unsigned int espera_sensor(void);
unsigned int obten_dist(unsigned int *pulsos);
char texto[13];

void main(){
	ANSEL = 0;
	ANSELH = 0;
	TRISA = 0;
	TRISB = 0x02;
	T1CON = 0x10;
	TMR1H = TMR1L = 0;
	lcd_init();
	while(1){
		lcd_clear();
		lcd_goto(0x03);
		lcd_puts("Distancia: ");
		TRIGGER = 0;
		pause(2);
		TRIGGER = 1;
		if(espera_sensor())
		{
			unsigned int distancia;
			if(obten_dist(&distancia))
			{
				lcd_goto(0x43);
				lcd_puts("Fuera de rango");
			}
			else
			{
				distancia = distancia/29;
				lcd_goto(0x43);
				sprintf(texto, " %3u cm", distancia);
				lcd_puts(texto);
			}

		}
		else
		{
			lcd_goto(0x43);
			lcd_puts("No hay nada");
		}
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
	T0IF = 0;	
}

unsigned int espera_sensor(void){
	unsigned int i=0;
	TMR1H = TMR1L = 0;
	TMR1ON = 1;
	while(!ECHO && (i<1000));
		i = (TMR1H << 8) | TMR1L;

	if(i >= 1000)
		return 0;

	else
		return 1;
}

unsigned int obten_dist(unsigned int *pulsos){
	*pulsos = 0;
	TMR1H = TMR1L = 0;
	while(ECHO && (*pulsos < 23200));
		*pulsos = (TMR1H << 8) | TMR1L;

	TMR1ON = 0;	

	if(*pulsos >= 23200)
		return 1;

	else
		return 0;
}