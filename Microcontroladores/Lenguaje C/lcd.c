#define _LEGACY_HEADERS //Added for compiler versions 9.81+
#include	<htc.h>
#include	"lcd.h"

void pause( unsigned short usvalue );		//Establish pause routine function

#define	LCD_RS RD2
#define	LCD_RW RD4
#define LCD_EN RD1

#define LCD_DATA	PORTC

#define	LCD_STROBE()	((LCD_EN = 1),(LCD_EN=0))

/* write a byte to the LCD in 4 bit mode */

void
lcd_write(unsigned char c)
{
	pause (1);
	LCD_DATA = ( ( c >> 4 ) & 0x0F );
	LCD_STROBE();
	LCD_DATA = ( c & 0x0F );
	LCD_STROBE();
	
}

/*
 * 	Clear and home the LCD
 */

void
lcd_clear(void)
{
	LCD_RS = 0;
	lcd_write(0x1);
	pause (2);
}

/* write a string of chars to the LCD */

void
lcd_puts(const char * s)
{
	LCD_RS = 1;	// write characters
	while(*s)
		lcd_write(*s++);
}

/* write one character to the LCD */

void
lcd_putch(char c)
{
	LCD_RS = 1;	// write characters
	lcd_write( c );
}


/*
 * Go to the specified position
 */

void
lcd_goto(unsigned char pos)
{
	LCD_RS = 0;
	lcd_write(0x80+pos);
}
	
/* initialize the LCD - put into 4 bit mode */
void
lcd_init()
{
	char init_value;

	ANSEL = 0;			// Disable analog pins on PORTA
	
	init_value = 0x3;
	TRISA=0;
	TRISC=0;
	LCD_RS = 0;
	LCD_EN = 0;
	LCD_RW = 0;
	
	pause (15);				// wait 15mSec after power applied,
	LCD_DATA	 = init_value;
	LCD_STROBE();
	pause(10);
	LCD_STROBE();
	pause(10);
	LCD_STROBE();
	pause(10);
	LCD_DATA = 2;	// Four bit mode
	LCD_STROBE();
	
	lcd_write(0x28); // Set interface length
//	lcd_write(0xC); // Display On, Cursor Off, Blink Off
	lcd_write(0xF); // Display On, Cursor On, Cursor Blink
	lcd_clear();	// Clear screen
	lcd_write(0x6); // Set entry Mode
}
