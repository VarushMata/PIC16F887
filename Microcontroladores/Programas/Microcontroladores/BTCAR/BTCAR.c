//LIBRERIAS 
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <htc.h>
#define _LEGACY_HEADERS 
__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_ON& CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);
//COM SETTINGS
#define BAUD 9600     
#define _XTAL_FREQ 4000000
#define baudsetting ((int)(FOSC/(64UL * BAUD) -1))
//PUERTOS USART
#define RX_PIN TRISC7
#define TX_PIN TRISC6
//PUERTOS HC-SR04
#define PIN_ECHO RB0
#define PIN_TRIG RB1
//PUERTOS LINE
#define PIN_OUT1 RB7
#define PIN_OUT2 RB6
//PUERTOS MOTOR
#define OUT1 RA0
#define OUT2 RA1
#define OUT3 RA2
#define OUT4 RA3
//TMR0 CONFIGURACION
void pause (unsigned short usvalue);
void msecbase(void);
//USART CONFIGURACION
void putch(unsigned char);
unsigned char getch(void);
void init_comms(void);
//MOTOR/PWM/ADC CONFIGURACION
void PWM();
//ULTRASONIC CONFIGURACION
void SR();
//RUTINA CONFIGURACION
void rutina();
//LINE CONFIGURACION
void line();
//USART FUNCIONES
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

//HC-SR04 VARIABLES
unsigned char carac1[4];
int dato;
unsigned int dist=0x00;

//MOTOR/PWM/ADC VARIABLES
unsigned int pwm1=0;
unsigned int pwm2=0;

//GENERAL VARIABLES
unsigned char op;
unsigned char vel;
unsigned char dir=1;

//INICIO CODIGO
void main(void){

	ANSEL = 0x60;
    ANSELH = 0x00;
	TRISB = 0xFF;
	TRISB0 = 1;
	TRISB1 = 0;
	TRISB7 = 1;
	TRISB6 = 1;
    TRISA = 0x00;
    TRISD = 0x00;	
    TRISC = 0x00;
    TRISE = 0x07;
	ADCON1 = 0xFF;
	//INICIO DE TMR1 PARA HC-SR04
	T1CON = 0x00;
	TMR1H=0x00;
	TMR1L=0x00;
	//INICIO DE TMR2 PARA MOTOR/PWM
    T2CON = 0x07;
	PR2 = 0xFF;
    CCPR1L = 0x80;
    CCP1CON = 0x0C;
    ADFM = 0;
	//LIMPIEZA PUERTOS
	PIN_TRIG=0;
	PIN_ECHO=0;
	//INICIO COMUNICACION USART
	init_comms();	
	//INICIO CICLO PRINCIPAL
    while(1){
	//LIMPIEZA PUERTOS
	OUT1 = 0;
	OUT2 = 0;
	OUT3 = 0;
	OUT4 = 0;
	TMR1H=0x00;
	TMR1L=0x00;
	dist=0;
	dir=1;

	op = getch();
	//ELLECCION OPCIONES
	switch(op){

	case '1':	//MEDICION DISTANCIA
	
	SR();

	break;

	case '2':	//RUTINA

	rutina();

	break;

	case '3':	//MOVIMIENTO BT

	while(dir!='0'){

	dir=getch();
	vel=getch();
	
	if(vel=='1'){
	pwm1=500;
	pwm2=500;
	PWM();
	}else if(vel=='2'){
	pwm1=765;
	pwm2=765;
	PWM();
	}else if(vel=='3'){
	pwm1=1023;
	pwm2=1023;
	PWM();
	}

	if(dir=='1'){
	OUT1 = 1;
	OUT3 = 1;
	__delay_ms(300);
	OUT1 = 0;
	OUT3 = 0;
	}else if(dir=='2'){
	OUT2 = 1;
	OUT4 = 1;
	__delay_ms(300);
	OUT2 = 0;
	OUT4 = 0;
	}else if(dir=='3'){
	OUT1 = 1;
	OUT3 = 0;
	__delay_ms(300);
	OUT1 = 0;
	OUT3 = 0;
	}else if(dir=='4'){
	OUT1 = 0;
	OUT3 = 1;
	__delay_ms(300);
	OUT1 = 0;
	OUT3 = 0;
	}
	}
	
	break;

	case '4':	//SEGUIDOR DE LINEAS

	for(int x=0;x<1000;x++){

	line();
	__delay_ms(50);
	OUT1 = 0;
	OUT2 = 0;
	OUT3 = 0;
	OUT4 = 0;

	}

	break;

	default:
	op = 0;		//OPCION DEFAULT SI NO ES OPCION
	break;

	}
	__delay_us(50);	
    }
}

//FUNCIONES LINEA
void line(){

	if((PIN_OUT1 == 0) && (PIN_OUT2 == 0)){

	pwm1=700;
	pwm2=700;
	PWM();
	OUT1 = 1;
	OUT3 = 1;

	}else{
		if((PIN_OUT1 == 1) && (PIN_OUT2 == 0)){

		pwm1=700;
		pwm2=100;
		PWM();
		OUT1 = 1;
		OUT3 = 1;

		}else{
			if((PIN_OUT1 == 0) && (PIN_OUT2 == 1)){

			pwm1=100;
			pwm2=700;
			PWM();
			OUT1 = 1;
			OUT3 = 1;

			}else{

			pwm1=700;
			pwm2=700;
			PWM();
			OUT2 = 1;
			OUT4 = 1;

			}
		}
	}

}
//FUNCIONES ULTRASONICO
void SR(){
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
	}else{
	dist=0;
	TMR1IF=0;
	}
	
	dist = (dist)/58;

	if(dist<3 || 390<dist){
	dato = 0;
	printf("%d",dato);
	}else if(3<dist || dist<390){
	sprintf(carac1, "%d",dist);
	dato = atoi(carac1);
	printf(" %d ",dato);
	}
}

//FUNCION RUTINA
void rutina(){
	pwm1=700;
	pwm2=700;
	PWM();
	OUT1 = 1;
	OUT3 = 1;
	__delay_ms(2000);
	OUT1 = 0;
	OUT3 = 0;
	__delay_ms(500);
	OUT2 = 1;
	OUT4 = 1;
	__delay_ms(2000);
	OUT2 = 0;
	OUT4 = 0;
	__delay_ms(500);
	OUT1 = 1;
	OUT3 = 0;
	__delay_ms(2000);
	OUT1 = 0;
	OUT3 = 0;
	__delay_ms(500);
	OUT2 = 1;
	OUT4 = 0;
	__delay_ms(2000);
	OUT2 = 0;
	OUT4 = 0;
	__delay_ms(500);
	OUT1 = 0;
	OUT3 = 1;
	__delay_ms(2000);
	OUT1 = 0;
	OUT3 = 0;
	__delay_ms(500);
	OUT2 = 0;
	OUT4 = 1;
	__delay_ms(2000);
	OUT2 = 0;
	OUT4 = 0;
	__delay_ms(500);
}
//FUNCIONES MOTOR/ADC/PWM
void PWM(){		//PWM
 ADRESH=pwm1>>2;
 ADRESL=pwm1<<8;
 CCPR1L=ADRESH;
 CCP1CON=0X0C|(ADRESL>>2);
 __delay_us(10);
 
 ADRESH=pwm2>>2;
 ADRESL=pwm2<<8;
 CCPR2L=ADRESH;
 CCP2CON=0X0C|(ADRESL>>2);
 __delay_us(10);

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
