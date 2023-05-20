#include <htc.h>

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_ON& CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

void pause (unsigned short usvalue);
void msecbase(void);

unsigned char POS[] = {0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80}; //ANIMACION CORAZON

unsigned char A1[] ={0x00,0x00,0x00,0x18,0x18,0x00,0x00,0x00}; //J

unsigned char A2[] ={0x00,0x38,0x44,0x22,0x22,0x44,0x38,0x00};	//A

unsigned char A3[] ={0x78,0x84,0x82,0x41,0x41,0x82,0x84,0x78};	//C

unsigned char A4[] ={0x06,0x01,0x01,0x80,0x80,0x01,0x01,0x06};	//C

unsigned int i=0;
unsigned int j=1;

void main(void){
    
	ANSEL = 0x60;
    ANSELH = 0x00;
    TRISB = 0xFF;
    TRISA = 0x00;
    TRISD =0x00;	
    TRISC =0x00;
    TRISE = 0x07;
    
    while(1){
  	
	for(j=1;j<=50;j++){
	
	for(i=0;i<=8;i++){
	PORTA=A1[i];
	PORTC=POS[i];
	pause(10);
	}
	}

	for(j=1;j<=50;j++){
		
	for(i=0;i<=8;i++){
	PORTA=A2[i];
	PORTC=POS[i];
	pause(10);
	}
	}

	for(j=1;j<=50;j++){
		
	for(i=0;i<=8;i++){
	PORTA=A3[i];
	PORTC=POS[i];
	pause(10);
	}
	}

	for(j=1;j<=50;j++){
		
	for(i=0;i<=8;i++){
	PORTA=A4[i];
	PORTC=POS[i];
	pause(10);
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