#include <stdio.h>
#include <stdlib.h>
//#include <stdint.h>
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

#define PIN_ECHO RB0
#define PIN_TRIG RB1

void pause (unsigned short usvalue);
void msecbase(void);

void lcd_write(unsigned char c);
void lcd_clear(void);
void lcd_puts(const char * s);
void lcd_putch(char c);
void lcd_goto(unsigned char pos);
void lcd_init();
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

unsigned char carac1[4];
int dato;
unsigned int dist=0x00;

void main(void){

	ANSEL = 0x00;		// Set PORTA all Digital
    ANSELH = 0x00;
	PORTB=0;
	TRISB1=0;
    TRISA = 0x00;
    TRISD = 0x00;	
    TRISC = 0x00;
    TRISE = 0x00;
	ADCON1 = 0xFF;
	T1CON = 0x00;
	TMR1H=0x00;
	TMR1L=0x00;

	PIN_TRIG=0;
	PIN_ECHO=0;

    lcd_init();	

	init_comms();	

	lcd_goto(0x00);
	lcd_puts("INICIANDO...");

	__delay_ms(1000);

    while(1){

	TMR1H=0x00;
	TMR1L=0x00;

	dist=0;

	getch();

	lcd_clear();

	PIN_TRIG=0;
	
	__delay_us(2);

	PIN_TRIG=1;

	__delay_us(10);

	PIN_TRIG=0;

	while(!PIN_ECHO);

	TMR1ON=1;

	while(PIN_ECHO && !TMR1IF);

	TMR1ON=0;	

	if(!TMR1IF){

	dist = (TMR1H<<8 | TMR1L);

//	unsigned int a1 =(TMR1H);
//	unsigned int a2 =(TMR1L);

//	printf("%d",a1);
//	printf("%d",a2);

	}else{
	dist=0;
	TMR1IF=0;
	}
	
	dist = (dist)/58;

	if(dist<3 || 350<dist){
	lcd_goto(0x00);
	lcd_puts("SIN RANGO");
	}else if(3<dist || dist<350){
	sprintf(carac1, "%d",dist);

	dato = atoi(carac1);
	printf(" %d ",dato);

	lcd_goto(0x00);
	lcd_puts("Dist:");
	lcd_puts(carac1);
	lcd_goto(0x0A);
	lcd_puts("cm");
	}

__delay_ms(200);
	
    }
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
	OPTION_REG = 0b11010010;
	TMR0 = 0x0E;
	TMR0 = 0x8E;
	while(!T0IF);
	T0IF = 0;
}