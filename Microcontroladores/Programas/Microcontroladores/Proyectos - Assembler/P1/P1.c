#include <htc.h>
#include <stdio.h>

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

#define BAUD 2400      
#define FOSC 4000000L
#define baudsetting ((int)(FOSC/(64UL * BAUD) -1))

#define RX_PIN TRISC6
#define TX_PIN TRISC7

/* Prototypes */
void putch(unsigned char);
unsigned char getch(void);
unsigned char getche(void);
void init_comms(void);

void main(void){
	unsigned char input;
	
	ANSEL = 0; 		//Analog ports set to digital		
	ANSELH = 0;
	CM1CON0 = 0;	//Comparators Shut off
	CM2CON0 = 0;

	INTCON=0;	// purpose of disabling the interrupts.
	
	init_comms();	// set up the USART - settings defined in usart.h

	// *** Serial Communication Main Loop	

	while(1)
		{
	unsigned char count;
	for (count = 0x31; count <= 0x39; count = count +1)	
			{
			putch(count);		// Send Count in ASCII
			input = getch();	// Read a response from the user
			putch(input);		// Echo back response
			}	
		while(1)
			{	
			printf("Press a key and I will echo it back:\r\n");
			input = getch();	// read a response from the user
			printf("I detected [%c]\r\n",input);	// echo it back
			}
		}
}


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
SPBRG = baudsetting;     	
//Continuous 8 bit asynchronous non inverted low speed communication
RCSTA = 0x90; // SPEN and CREN bit = 1, RX9EN = 0
TXSTA = 0x20;//TXEN = 1, BRGH, SYNC = 0
BAUDCTL = 0; //BRG16 = 0 
}

	