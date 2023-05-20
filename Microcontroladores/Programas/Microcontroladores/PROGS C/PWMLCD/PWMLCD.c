#include <htc.h>
#include <stdio.h>

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

#define LCD_EN RC0
#define LCD_RS RC3
#define LCD_RW RC4
#define LCD_DATA PORTD
#define LCD_STROBE()	((LCD_EN = 1 , LCD_EN = 0))

#define number 0x30

void lcd_write (unsigned char c);
void lcd_clear (void);
void lcd_puts (const char * s);
void lcd_putch (char c);
void lcd_goto (unsigned char pos);
void lcd_init();

void pause (unsigned short usvalue);
void msecbase(void);

float pwm;
int num;
int adc;
unsigned char carac[5];
unsigned char carac2[4];

void main(void)
{ 	

	ANSEL = 0x00;
	ANSELH = 0x00;
	TRISA= 0x00;
	TRISC = 0x00;
	TRISD = 0x0F;
	TRISE = 0x07;
	ADCON1 = 0x80;	

	lcd_init();
	lcd_clear();

	while(1)
	{
	ADCON0 = 0xD5;
	GO_DONE	= 1;
	while(GO_DONE);
	num = (ADRESH << 8)|ADRESL;
	adc=num;
	pwm = num*0.0048875855327468;
	sprintf(carac, "%1.1f",pwm);

	lcd_goto(0x00);
	lcd_puts("PWM1:");
	lcd_puts(carac);

	sprintf(carac2,"%d",adc);

	lcd_goto(0x09);
	lcd_puts("C5:");
	lcd_puts(carac2);

	ADCON0 = 0xD9;
	GO_DONE = 1;
	while(GO_DONE);
	num= (ADRESH<< 8)|ADRESL;
	adc=num;
	pwm = num*0.0048875855327468;
	sprintf(carac,"%1.1f",pwm);
	
	lcd_goto(0x40);
	lcd_puts("PWM2:");
	lcd_puts(carac);

	sprintf(carac2,"%d",adc);

	lcd_goto(0x49);
	lcd_puts("C6:");
	lcd_puts(carac2);

	pause(1);
	}
}	

void lcd_write(unsigned char c)
{
	pause(1);
	LCD_DATA = ( ( c >> 4) & 0x0F);
	LCD_STROBE ();
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
	lcd_write(0x80+pos);
}

void lcd_init()
{
	char init_value;

	init_value = 0x03;
	TRISC = 0;
	TRISD = 0;
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
	LCD_DATA=2;
	LCD_STROBE();

	lcd_write(0x28);
//	lcd_write(0x0C);
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
//  TMR0 = 0x8E;
	while(!T0IF);
	T0IF = 0;
}