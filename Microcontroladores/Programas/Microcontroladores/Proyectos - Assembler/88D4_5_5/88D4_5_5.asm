PROCESSOR P16F887
	INCLUDE <P16F887.INC>
    
	__CONFIG _CONFIG1, (_INTRC_OSC_NOCLKOUT & _WDT_OFF & _PWRTE_OFF & _MCLRE_OFF & _CP_OFF & _CPD_OFF & _BOR_OFF & _IESO_OFF & _FCMEN_OFF & _LVP_OFF & _DEBUG_OFF)
	__CONFIG _CONFIG2, (_WRT_OFF & _BOR40V)
    


NX		EQU		0x29
V1		EQU		0x30
V2		EQU		0x31
V3		EQU		0x32
V4		EQU		0X33
V5		EQU		0x34
V6		EQU		0x35
V7		EQU		0x36
V8		EQU		0X37
IX		EQU		0x39
DX		EQU		0x40	
	
	ORG	    0x00	

	BANKSEL	    ANSEL	
	CLRF	    ANSEL
	CLRF	    ANSELH

	BANKSEL	    TRISA	
	MOVLW	    0xFF
	MOVWF	    TRISB
	CLRF	    TRISA
	CLRF	    TRISC
	CLRF		TRISD
	CLRF	    TRISE
	MOVLW	    0XD4
	MOVWF	    OPTION_REG

	BANKSEL	    PORTA	
	CLRF	    PORTA
	CLRF	    TMR0

		MOVLW	0x00	;Aqui se limpian las variables a usar
		MOVWF	V1		;1 por cada columna
		MOVLW	0x00
		MOVWF	V2
		MOVLW	0x00
		MOVWF	V3
		MOVLW	0x00
		MOVWF	V4
		MOVLW	0x00
		MOVWF	V5
		MOVLW	0x00
		MOVWF	V6
		MOVLW	0x00
		MOVWF	V7
		MOVLW	0x00
		MOVWF	V8

RIX		MOVLW	0x00	;Aqui se limpian los contadores que identifica el sigueinte
		MOVWF	IX		;valor de la columna 8
RDX		MOVLW	0x15
		MOVWF	DX


RNX		MOVLW	0x3C
		MOVWF	NX		

C_P		
		MOVF	V1,W
		MOVWF	PORTA
		MOVLW	0x01
		MOVWF	PORTC
		CALL	RET
		
		
		MOVF	V2,W
		MOVWF	PORTA
		MOVLW	0x02
		MOVWF	PORTC
		CALL	RET

	
		MOVF	V3,W
		MOVWF	PORTA
		MOVLW	0x04
		MOVWF	PORTC		
		CALL	RET	

	
		MOVF	V4,W
		MOVWF	PORTA
		MOVLW	0x08
		MOVWF	PORTC	
		CALL	RET	

	
		MOVF	V5,W
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC		
		CALL	RET	

	
		MOVF	V6,W
		MOVWF	PORTA
		MOVLW	0x20
		MOVWF	PORTC	
		CALL	RET	

	
		MOVF	V7,W
		MOVWF	PORTA
		MOVLW	0x40
		MOVWF	PORTC	
		CALL	RET	

	
		MOVF	V8,W
		MOVWF	PORTA
		MOVLW	0x80
		MOVWF	PORTC
		CALL RET

		DECFSZ	NX,F
		GOTO	C_P
		
		MOVF	V2,W	;este es el ciclo de desplazamiento
		MOVWF	V1
		MOVF	V3,W
		MOVWF	V2
		MOVF	V4,W
		MOVWF	V3	
		MOVF	V5,W
		MOVWF	V4
		MOVF	V6,W
		MOVWF	V5
		MOVF	V7,W
		MOVWF	V6
		MOVF	V8,W
		MOVWF	V7
		MOVF	IX,W
		CALL	TM8
		MOVWF	V8
		INCF	IX
		DECFSZ	DX
		GOTO 	RNX
		GOTO	RIX

TM8		ADDWF	PCL,F	;aqui se ponen los valores para formar
		RETLW	0x7E	;las letras
		RETLW	0x48
		RETLW	0x48
		RETLW	0x48
		RETLW	0x7E
		RETLW	0x00
		RETLW	0x00
		RETLW	0x78
		RETLW	0x04
		RETLW	0x02
		RETLW	0x04
		RETLW	0x78
		RETLW	0x00
		RETLW	0x00
		RETLW	0x3C
		RETLW	0x5A
		RETLW	0x5A
		RETLW	0x7E
		RETLW	0x00
		RETLW	0x00
		RETLW	0x00
	
RET		MOVLW	0XBF
		MOVWF	TMR0
E_T0X	BTFSS	INTCON,T0IF
		GOTO	E_T0X
		BCF	INTCON,T0IF
		RETURN
		END