#include <htc.h>

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

void pause(unsigned short usvalue);
void msecbase(void);
void digitos(int x);

const unsigned short DP7[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67};	
//const unsigned short DP7[10]={0x67,0x7F,0x07,0x7D,0x6D,0x66,0x4F,0x5B,0x06,0X3F}; //Inverso

short int NM = 0;
short int NC = 0;
short int ND = 0;
short int NU = 0;

void digitos(int x){
NM = 0;
NC = 0;
ND = 0;
NU = 0;

while(x>=1000){
x-=1000;
NM++;
}
while(x>=100){
x-=100;
NC++;
}
while(x>=10){
x-=10;
ND++;
}
while(x>=1){
x-=1;
NU++;
}

}

void main(void)
{

	short int CON = 0;
  //short int CON = 9999; //PARA CONTADOR DESCENDENTE

	ANSEL  = 0x60;
	ANSELH = 0x00;
	
	TRISA = 0x00;
	TRISB = 0xFF;
	TRISC = 0x00;
	TRISD = 0x00;
	TRISE = 0x00;

	while (1)
	{
	
	digitos(CON);

	PORTC = 0x01;
	PORTA = DP7[NU];
	pause(1);

	PORTC = 0x02;
	PORTA = DP7[ND];
	pause(1);

	PORTC = 0x04;
	PORTA = DP7[NC];
	pause(1);

	PORTC = 0x08;
	PORTA = DP7[NM];
	pause(1);

	if(CON==9999){		//CONTADOR ASCENDENTE
	CON=0;
	}else{
	CON++;
	}

/*
	if(CON==0){		//CONTADOR DESCENDENTE
	CON=9999;
	}else{
	CON--;
	}
*/

/*
	if(CON==1234){		//CONTADOR ESPECIFICO
	CON=1234;
	}else{
	CON++;
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
	OPTION_REG = 0b11010110;
	TMR0 = 0x7A;
	while(!T0IF);
	T0IF = 0;
}
