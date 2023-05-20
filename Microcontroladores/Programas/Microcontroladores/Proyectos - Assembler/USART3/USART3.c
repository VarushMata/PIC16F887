#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <htc.h>
#define _LEGACY_HEADERS 

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_ON& CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

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


unsigned char carac[5];
unsigned int vadc1=512;
unsigned int vadc2=512;
unsigned char PA[6];
unsigned int a;
int i;

void valadc();
void pwm();

void main(void){
    
    
	ANSEL = 0X60;		// Set PORTA all Digital
    ANSELH = 0;
    TRISB=0XFF;
    TRISA=0;
    
    TRISD =0;	
    TRISC =0;
    TRISE=0X07;
    T2CON=0X07;
    PR2=0XFF;

    CCPR1L=0X80;
    CCP1CON=0X0C;
    lcd_init();		// Initialize LCD Display
    init_comms();
    ADFM=0;
    
    while(1){
    
    printf("\f");
    printf("\r\n");
    printf("\r\n1.- Valores ADC");
    printf("\r\n2.- Valor puerto B");
    printf("\r\n3.- Enviar puerto A");
    printf("\r\n4.- Enviar a PWM");
    printf("\r\n\nElige una opcion:");
    
    switch(a=getch()){
        
        case '1':
            
            printf("%c",a);
            valadc();
            getch();
            break;
        
        case '2':
            
            printf("%c",a);
            a=PORTB;
            printf("\r\n\nValor del puerto B:%d",a);
            getch();
            break;
            
        case '3':
            
             printf("%c",a);
             printf("\n\r");
            printf("\n\rElige un valor a mostrar en el puerto A:");
           
            for(int i=0;i<=2;i++){
            PA[i]=getch();}
            
            a=atoi(PA);
            printf("%d",a);
            PORTA=0;
            PORTA=a;
            getch();
            break;
        
        case '4':
            
             printf("%c",a);
             printf("\n\r\nElige un valor entre 0 y 1023 para el PWM1:");
             
            for(int i=0;i<=3;i++){
            PA[i]=getch();}
            a=atoi(PA);
            printf("%d",a);
            vadc1=a;
            
           
             printf("\n\r\nElige un valor entre 0 y 1024 para el PWM2:");
             
            for(int i=0;i<=3;i++){
            PA[i]=getch();}
            a=atoi(PA);
            printf("%d",a);
            vadc2=a;
            
            pwm();
            
            getch();
            break;
            
        default:
            
         printf("\r\n\nOpcion no valida");
         pause(1000);
              
    }}
}

void pwm (){
        

 ADRESH=vadc1>>2;
 ADRESL=vadc1<<8;
 //PWM
 CCPR1L=ADRESH;
 CCP1CON=0X0C|(ADRESL>>2);

 pause(1);
 
  ADRESH=vadc2>>2;
 ADRESL=vadc2<<8;

 CCPR2L=ADRESH;
 CCP2CON=0X0C|(ADRESL>>2);
 
 getch();
      main();
  
}


void valadc(){
    
    
 ADCON0=0XD5;
 GO_DONE=1;       
 while(GO_DONE);   

 vadc1=(ADRESH<<2)|(ADRESL>>6);

 pause(1);
 
 ADCON0=0XD9;
 GO_DONE=1;       
 while(GO_DONE); 
 
 vadc2=(ADRESH<<2)|(ADRESL>>6); 
 
 pause(1);
       
 printf("\n\r");
     printf("\n\rValor del canal C5: %d ",vadc1);
     printf("\n\rValor del canal C6: %d ",vadc2);
     
     getch();
     main();
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