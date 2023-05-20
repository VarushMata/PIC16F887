#include <htc.h>

#define NUM 32

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_ON& CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

void pause (unsigned short usvalue);
void msecbase(void);

unsigned char POS[] = {0x00,0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};

unsigned char LETRA1[NUM+4] ={0x00,0x22,0x42,0x42,0x42,0x3E,0x02,0x00, //J
							0x00,0x7C,0x12,0x12,0x12,0x12,0x7C,0x00,	//A
							0x00,0x00,0x3C,0x42,0x42,0x42,0x00,0x00,	//C
							0x00,0x22,0x42,0x42,0x42,0x3E,0x02,0x00};
unsigned int i=0;
unsigned int j=0;
unsigned int k=0;

void main(void){
    
	ANSEL = 0x60;
    ANSELH = 0x00;
    TRISB = 0xFF;
    TRISA = 0x00;
    TRISD =0x00;	
    TRISC =0x00;
    TRISE = 0x07;
    
    while(1){
  	
	for(i=0;i<=NUM+4;i++){

	for(k=1;k<=50;k++){	

	for(j=0;j<=9;j++){

	PORTC=POS[j];

	PORTA = LETRA1[j+i];

	pause(10);

	}

	}

	}

    }
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
    TMR0 = 0x8E;
	while(!T0IF);
	T0IF = 0;
}