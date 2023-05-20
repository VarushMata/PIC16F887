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

unsigned int vportb=0x00;
unsigned int vporta=0x00;
unsigned char PA[4];

unsigned int vadc1=0x00;
unsigned int vadc2=0x00;

unsigned int pwm1=0x00;
unsigned int pwm2=0x00;

unsigned char PA1[5];
unsigned char PA2[5];

unsigned char carac1[4];
unsigned char carac2[5];
unsigned char carac3[5];

unsigned int op=0;

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
    
	PORTA=0xFF;

    while(1){
	
	op=getch();

	switch(op){	
	
	case '1':	//OPCION LECTURA 

		vportb = PORTB;

        ADC();  		
		
		printf("Valores ADC:\N");

 		printf("%d ",vadc1);
		printf("%d ",vadc2);	
//		printf("%d ",vportb);
		break;
	
	case '2':	//OPCION ESCRITURA PUERTOA
		
		for(int i=0;i<=2;i++){
        PA[i]=getch();}         
		vporta=atoi(PA);

		PORTA=0x00;
		PORTA = vporta;

		lcd_clear();

		sprintf(carac1, "%d",vporta);
		lcd_goto(0x00);
		lcd_puts("porta:");
		lcd_puts(carac1);

		break;
	


	case '3':	//OPCION ESCRITURA PWM

		printf("Escriba PWM1:\n");

		for(int i=0;i<=3;i++){
        PA1[i]=getch();}           
		pwm1=atoi(PA1);

		printf("Escriba PWM2:\n");

		for(int i=0;i<=3;i++){
        PA2[i]=getch();}           
		pwm2=atoi(PA2);

		lcd_clear();
		
		printf("%d ",pwm1);
		printf("%d ",pwm2);

		sprintf(carac2, "%d",pwm1);
		lcd_goto(0x00);
		lcd_puts("pwm1:");
		lcd_puts(carac2);

		sprintf(carac3, "%d",pwm2);
		lcd_goto(0x40);
		lcd_puts("pwm2:");
		lcd_puts(carac3);

		PWM();

	break;

 	}                    
    }
}

//FUNCIONES PRINCIPALES
void ADC(){       //ADC
 ADCON0=0xD5;
 GO_DONE=1;       
 while(GO_DONE);   
 vadc1=(ADRESH<<2)|(ADRESL>>6);
 
 ADCON0=0xD9;
 GO_DONE=1;       
 while(GO_DONE); 
 vadc2=(ADRESH<<2)|(ADRESL>>6); 
      
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