#include <htc.h>

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_ON& CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

void pause (unsigned short usvalue);
void msecbase(void);

void POSX(unsigned char x1);
void POSY(unsigned char x2);

unsigned char ADC1=0;
unsigned char ADC2=0;

unsigned char PX[8] = {0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};

void POSX(unsigned char x1){
if(x1<=0x29){
PORTA=PX[1];
}else if(x1<=0x48){
PORTA=PX[2];
}else if(x1<=0x66){
PORTA=PX[3];
}else if(x1<=0x85){
PORTA=PX[4];
}else if(x1<=0xA3){
PORTA=PX[5];
}else if(x1<=0xC2){
PORTA=PX[6];
}else if(x1<=0xE1){
PORTA=PX[7];
}else if(x1<=0xFF){
PORTA=PX[8];
}
}

void POSY(unsigned char x2){
if(x2<=0x29){
PORTC=PX[1];
}else if(x2<=0x48){
PORTC=PX[2];
}else if(x2<=0x66){
PORTC=PX[3];
}else if(x2<=0x85){
PORTC=PX[4];
}else if(x2<=0xA3){
PORTC=PX[5];
}else if(x2<=0xC2){
PORTC=PX[6];
}else if(x2<=0xE1){
PORTC=PX[7];
}else if(x2<=0xFF){
PORTC=PX[8];
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
     
	 POSX(ADC1);
	
	 POSY(ADC2);
     
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