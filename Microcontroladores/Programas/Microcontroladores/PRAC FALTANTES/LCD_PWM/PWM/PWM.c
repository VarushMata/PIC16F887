#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <htc.h>
#define _LEGACY_HEADERS 

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_ON& CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

#define BAUD 9600     
#define _XTAL_FREQ 4000000
#define baudsetting ((int)(FOSC/(64UL * BAUD) -1))
#define RX_PIN TRISC7
#define TX_PIN TRISC6

#define LCD_EN RC0
#define LCD_RW RC4
#define LCD_RS RC3
#define LCD_DATA PORTD
#define LCD_STROBE() ((LCD_EN = 1),(LCD_EN=0))

void lcd_write(unsigned char c);
void lcd_clear(void);
void lcd_puts(const char * s);
void lcd_putch(char c);
void lcd_goto(unsigned char pos);
void lcd_init();

void pause (unsigned short usvalue);
void msecbase(void);

void putch(unsigned char);
unsigned char getch(void);
void init_comms(void);

void putch(unsigned char byte){
	/* output one byte */
	while(!TXIF)	/* set when register is empty */
		continue;
	TXREG = byte;
}

unsigned char getch(){
	/* retrieve one byte */
	while(!RCIF)	/* set when register is not empty */
		continue;
	return RCREG;	
}

void init_comms(void){	
	RX_PIN = 1;	
	TX_PIN = 0;		  
	SPBRG = 0x19;     	
	//Continuous 8 bit asynchronous non inverted low speed communication
	RCSTA = 0x90; // SPEN and CREN bit = 1, RX9EN = 0
	TXSTA = 0x26;//TXEN = 1, BRGH, SYNC = 0
	BAUDCTL = 0; //BRG16 = 0 
}

float vadc1=0;
float vadc2=0;

unsigned int pwm1=0;
unsigned int pwm2=0;

unsigned char carac1[5];
unsigned char carac11[5];
unsigned char carac2[5];
unsigned char carac22[5];

void ADC();
void PWM();

void main(void){
    
	ANSEL = 0x60;		// Set PORTA all Digital
    ANSELH = 0x00;
    TRISB = 0xFF;
    TRISA = 0x00;
    
    TRISD = 0x00;	
    TRISC = 0x00;
    TRISE = 0x07;
    T2CON = 0x07;
    PR2 = 0xFF;

    CCPR1L = 0x80;
    CCP1CON = 0x0C;

    lcd_init();	

    init_comms();

    ADFM = 0;
    
    while(1){



        ADC();  		

        PWM();
		
		__delay_ms(100);

		lcd_clear();

		__delay_ms(100);
                       
    }
}

//FUNCIONES PRINCIPALES
void ADC(){       //ADC
 ADCON0=0xD5;
 GO_DONE=1;       
 while(GO_DONE);   
 vadc1=(ADRESH<<2)|(ADRESL>>6);
 pwm1=vadc1;
 sprintf(carac11, "%d",pwm1);
	lcd_goto(0x47);
	lcd_puts("PWM1:");
	lcd_puts(carac11);
 vadc1 = vadc1*0.0048875855327468;
 sprintf(carac1, "%1.3f",vadc1);
	lcd_goto(0x00);
	lcd_puts("5:");
	lcd_puts(carac1);
 pause(1);
 
 ADCON0=0xD9;
 GO_DONE=1;       
 while(GO_DONE); 
 vadc2=(ADRESH<<2)|(ADRESL>>6); 
 pwm2=vadc2; 
 sprintf(carac22, "%d",pwm2);
	lcd_goto(0x07);
	lcd_puts("PWM2:");
	lcd_puts(carac22);
 vadc2 = vadc2*0.0048875855327468;
 sprintf(carac2, "%1.3f",vadc2);
	lcd_goto(0x40);
	lcd_puts("6:");
	lcd_puts(carac2);
 pause(1);
      
 }

void PWM(){		//PWM
 ADRESH=pwm1>>2;
 ADRESL=pwm1<<8;
 CCPR1L=ADRESH;
 CCP1CON=0X0C|(ADRESL>>2);
 pause(1);
 
 ADRESH=pwm2>>2;
 ADRESL=pwm2<<8;
 CCPR2L=ADRESH;
 CCP2CON=0X0C|(ADRESL>>2);
 pause(1);

}

//FUNCIONES LCD
 void lcd_write(unsigned char c){
	pause(1);
	LCD_DATA = ( ( c >> 4) & 0x0F);
	LCD_STROBE();
	LCD_DATA = (c & 0x0F);
	LCD_STROBE();
}

void lcd_clear(void){
	LCD_RS = 0;
	lcd_write(0x01);
	pause (2);
}

void lcd_puts(const char * s){
	LCD_RS = 1;
	while(*s)
		lcd_write(*s++);
}

void lcd_putch(char c){
	LCD_RS = 1;	// write characters
	lcd_write( c );
}

void lcd_goto(unsigned char pos){
	LCD_RS = 0;
	lcd_write(0x80 + pos);
}

void lcd_init(){
	char init_value;

	init_value = 0x03;

	LCD_RS = 0;
	LCD_EN = 0;
 	LCD_RW = 0;

	pause(15);
	LCD_DATA		= init_value;
	LCD_STROBE();
	pause(10);
	LCD_STROBE();
	pause(10);
	LCD_STROBE();
	pause(10);
	LCD_DATA= 2;
	LCD_STROBE();

	lcd_write(0x28);
	lcd_write(0x0C);
	lcd_write(0x0F);
	lcd_clear();
	lcd_write(0x06);
}

void pause (unsigned short usvalue){
	unsigned short x;
	for (x=0; x<=usvalue; x++)
	{
    	msecbase();
    }
}

void msecbase(void){
	OPTION_REG = 0b11010001;
	TMR0 = 0x0E;
    TMR0 = 0x8E;
	while(!T0IF);
	T0IF = 0;
}
	