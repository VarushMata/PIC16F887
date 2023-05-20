//write a byte to the LCD in 4 bit mode
extern void lcd_write(unsigned char);

//Clear and home the LCD
extern void lcd_clear(void);

//write a string of characters to the LCD
extern void lcd_puts(const char * s);

//Go to the specified position
extern void lcd_goto(unsigned char pos);

//Initialize the LCD - call before everything else
extern void lcd_init(void);

//Write a character to the LCD
extern void lcd_putchar(char);