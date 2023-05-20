#include <htc.h>
	__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_ON & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
	__CONFIG (BOR4V_BOR40V & WRT_OFF);

	#define _LEGACY_HEADERS //Added for compiler versions 9.81+
	#include <stdio.h>


	#define BAUD 9600    
	#define FOSC 4000000L
	#define baudsetting ((int)(FOSC/(64UL * BAUD) -1))

	#define RX_PIN TRISC7
	#define TX_PIN TRISC6

	
	#define LCD_EN RC0
	#define LCD_RW RC4
	#define LCD_RS RC3
	#define LCD_DATA PORTD
	#define LCD_STROBE() ((LCD_EN = 1),(LCD_EN=0))

	#define number 0x30

void lcd_write(unsigned char c);
void lcd_clear(void);
void lcd_puts(const char * s);
void lcd_putch(char c);
void lcd_goto(unsigned char pos);
void lcd_init();
void pause (unsigned short usvalue);
void msecbase(void);
float num;
unsigned char carac[5];

/* Prototypes */
void putch(unsigned char);
unsigned char getch(void);
unsigned char getche(void);
void init_comms(void);

void 
putch(unsigned char byte) 
{
	/* output one byte */
	while(!TXIF)	/* set when register is empty */
		continue;
	TXREG = byte;
}

unsigned char 
getch() {
	/* retrieve one byte */
	while(!RCIF)	/* set when register is not empty */
		continue;
	return RCREG;	
}

void init_comms(void)
{	
RX_PIN = 1;	
TX_PIN = 0;		  
SPBRG = 0x19;     	
//Continuous 8 bit asynchronous non inverted low speed communication
RCSTA = 0x90; // SPEN and CREN bit = 1, RX9EN = 0
TXSTA = 0x26;//TXEN = 1, BRGH, SYNC = 0
BAUDCTL = 0; //BRG16 = 0 
}

//Internal clock, Watchdog off, MCLR internal, 
// Code Unprotected, Clock Switch Disabled

void main(void){

	ANSEL = 0x00;
	ANSELH = 0x00;

	TRISA = 0x00;
	TRISB = 0x00;
	TRISC = 0x00;
	TRISD = 0x00;
	TRISE = 0x07;
	ADCON1 = 0x80;
    PORTA = 0X00;
	lcd_init();
	lcd_clear();

	unsigned char input;
	
	// purpose of disabling the interrupts.
	
	init_comms();	// set up the USART - settings defined in usart.h
    pause(10);
     while(1)
		{
   unsigned char count;
	for (count = 0x31; count <= 0x39; count = count +1)	
			{
			putch(count);		// Send Count in ASCII
            pause(300);
			lcd_goto(0x00);
			}
        printf("\r\n\n");
    
    for (count = 0x61; count <= 0x7A; count = count +1)	
			{
			putch(count);		// Send Count in ASCII
            pause(300);
			}	
        printf("\r\n\n");
     for (count = 0x41; count <= 0x5A; count = count +1)	
			{
			putch(count);		// Send Count in ASCII
            
			}	
       
    
    while(1)
		{	
    
	// * Serial Communication Main Loop	

    
			printf("\r\n\n");
			printf("Teclea:\r\n");
			input = getch();	// read a response from the user
			printf("Letra: [%c]\r\n",input);	// echo it back
            lcd_goto(0x00);
            lcd_puts("Letra:");
            lcd_goto(0x06);
            lcd_putch(input);
            
			
		}
     }
}



void lcd_write(unsigned char c)
{
	pause(1);
	LCD_DATA = ( ( c >> 4) & 0x0F);
	LCD_STROBE();
	LCD_DATA = (c & 0x0F);
	LCD_STROBE();
}

void lcd_clear(void)
{
	LCD_RS = 0;
	lcd_write(0x01);
	pause (2);
}

void lcd_puts(const char * s)
{
	LCD_RS = 1;
	while(*s)
		lcd_write(*s++);
}

void lcd_putch(char c)
{
	LCD_RS = 1;	// write characters
	lcd_write( c );
}

void lcd_goto(unsigned char pos)
{
	LCD_RS = 0;
	lcd_write(0x80 + pos);
}

void lcd_init()
{
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