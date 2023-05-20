#include <htc.h>
#include <stdio.h>

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

void pause (unsigned short usvalue);
void msecbase(void);

void ADC();
void PWM();

unsigned int vadc1=0x00;
unsigned int vadc2=0x00;

unsigned char dato=0x00;

void main(void)
{ 	

	ANSEL = 0x00;
	ANSELH = 0x00;
	TRISA= 0x00;
	TRISB = 0xFF;
	TRISC = 0x00;
	TRISD = 0x0F;
	TRISE = 0x07;
	ADCON1 = 0x80;	

    T2CON = 0x07;
    PR2 = 0xFF;
    CCPR1L = 0x80;
    CCP1CON = 0x0C;
    CCP2CON = 0x0C;

	while(1)
	{

	dato = PORTB;
	pause(10);
	PORTA = dato;

	ADC();

	PWM();
	
	}
}	

void ADC(){       //ADC
 ADCON0=0xD5;
 GO_DONE=1;       
 while(GO_DONE);   
 vadc1=(ADRESH<<2)|(ADRESL>>6);
 
 ADCON0=0xD9;
 GO_DONE=1;       
 while(GO_DONE); 
 vadc2=(ADRESH<<2)|(ADRESL>>6); 
      
 }

void PWM(){		//PWM
 ADRESH=vadc1>>2;
 ADRESL=vadc1<<8;
 CCPR1L=ADRESH;
 CCP1CON=0X0C|(ADRESL>>2);
 pause(1);
 
 ADRESH=vadc2>>2;
 ADRESL=vadc2<<8;
 CCPR2L=ADRESH;
 CCP2CON=0X0C|(ADRESL>>2);
 pause(1);

}

void pause (unsigned short usvalue)
{
	unsigned short x;

	for (x=0; x<=usvalue; x++)
	{
    	msecbase();
    }
}

void msecbase(void)
{
	OPTION_REG = 0b11010001;
	TMR0 = 0x0E;
//  TMR0 = 0x8E;
	while(!T0IF);
	T0IF = 0;
}