#include <htc.h>

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

void pause(unsigned short usvalue);
void msecbase(void);
void digitos(unsigned char x);

const unsigned short DP7[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67};	
//const unsigned short DP7[10]={0x67,0x7F,0x07,0x7D,0x6D,0x66,0x4F,0x5B,0x06,0X3F}; //Inverso

short int NUM = 0;

//short int NM = 0;
short int NC = 0;
short int ND = 0;
short int NU = 0;

void digitos(unsigned char x){

NC = 0;
ND = 0;
NU = 0;

while(x>=0x33){
x=x-0x33;
NC++;
}
while(x>=0x05){
x=x-0x05;
ND=ND;
}
while(x>=0x01){
x=x-0x01;
NU++;
}

}

void main(void)
{
	ANSEL  = 0x60;
	ANSELH = 0x00;
	
	TRISA = 0x00;
	TRISB = 0x00;
	TRISC = 0x00;
	TRISD = 0x00;
	TRISE = 0x03;	
	ADCON1 = 0x00;

	while (1)
	{
	
 	ADCON0=0XD5;
 	GO_DONE=1;       
 	while(GO_DONE);   

 	NUM=(ADRESH<<2)|(ADRESL>>6);

	digitos(NUM);

	PORTC = 0x01;
	PORTA = DP7[NU];
	pause(1);

	PORTC = 0x02;
	PORTA = DP7[ND];
	pause(1);

	PORTC = 0x04;
	PORTA = DP7[NC];
	pause(1);
/*
	PORTC = 0x08;
	PORTA = DP7[NM];
	pause(1);
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
	OPTION_REG = 0b11010110;
	TMR0 = 0x7A;
	while(!T0IF);
	T0IF = 0;
}
