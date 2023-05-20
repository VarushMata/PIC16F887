#include <htc.h>

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_ON& CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

void pause (unsigned short usvalue);
void msecbase(void);

void POSX(int x1);

unsigned int ADC1=0;
unsigned int ADC2=0;

unsigned char PX[8] = {0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};

void POSX(int x1){

if(0x00=<x<=0x29){

}else if(0x29<x<=0x48){

}else if(0x48<x<=0x66){

}else if(0x66<x<=0x85){

}else if(0x85<x<=0xA3){

}else if(0xA3<x<=0xC2){

}else if(0xC2<x<=0xE1){

}else if(0xE1<x<=0xFF){

}

}


void main(void){
    
	ANSEL = 0x60;
    ANSELH = 0x00;
    TRISB = 0xFF;
    TRISA = 0x00;
    TRISD =0x00;	
    TRISC =0x00;
    TRISE = 0x07;
    
    while(1){
   
	 ADCON0 = 0xD5;
	 GO_DONE = 1;       
	 while(GO_DONE);   	
	 ADC1 = (ADRESH<<2)|(ADRESL>>6);
	 pause(1);


	 ADCON0 = 0xD9;
	 GO_DONE = 1;       
	 while(GO_DONE); 
	 ADC2 = (ADRESH<<2)|(ADRESL>>6); 

	 pause(1);
              
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