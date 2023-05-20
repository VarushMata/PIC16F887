
PROCESSOR	P16F887
		INCLUDE		<P16F887.INC>

		__CONFIG _CONFIG1, (_INTRC_OSC_NOCLKOUT & _WDT_OFF & _PWRTE_OFF & _MCLRE_OFF & _CP_OFF & _CPD_OFF & _BOR_OFF & _IESO_OFF & _FCMEN_OFF & _LVP_OFF & _DEBUG_OFF)
		__CONFIG _CONFIG2, (_WRT_OFF & _BOR40V)

CT		EQU		0x20

		ORG	0x00	

NX		EQU	0x20	
XM		EQU	0x24
XC		EQU	0x23
XD		EQU	0x22
XU		EQU	0x21

        BANKSEL ANSEL	;CAMBIO BANCO 3
		CLRF 	ANSEL
		CLRF 	ANSELH
	
		BANKSEL	TRISA	;CAMBIO BANCO 1
		CLRF	TRISA	
		MOVLW	0xFF
		MOVWF	TRISB
		CLRF	TRISC
		CLRF	TRISD
		CLRF	TRISE

		MOVLW 	0xD3
		MOVWF	OPTION_REG
	
		BANKSEL	PORTA	;CAMBIO BANCO 0	

RXM		CLRF 	XM
RXC		CLRF	XC
RXD		CLRF	XD
RXU		CLRF	XU
	
RNX		MOVLW	0x78
		MOVWF	NX
C_P		MOVF	XU,W
		CALL	T7S
		MOVWF	PORTA
		MOVLW	0x01
		MOVWF	PORTC
		CALL 	RET		;6.25ms
	
		MOVF	XD,W
		CALL	T7S
		MOVWF	PORTA
		MOVLW	0x02
		MOVWF	PORTC
		CALL 	RET		;6.25ms	

		MOVF	XC,W
		CALL	T7S
		MOVWF	PORTA
		MOVLW	0x04
		MOVWF	PORTC
		CALL 	RET		;6.25ms

		MOVF	XM,W
		CALL	T7S
		MOVWF	PORTA
		MOVLW	0x08
		MOVWF	PORTC
		CALL 	RET		;6.25ms

		DECFSZ	NX,F
		GOTO 	C_P

		INCF	XU,F
		MOVLW	0x0A
		SUBWF	XU,W
		BTFSS	STATUS,Z
		GOTO	RNX
	
		INCF	XD,F
		MOVLW	0x06
		SUBWF	XD,W
		BTFSS	STATUS,Z
		GOTO	RXU
	
		INCF	XC,F
		MOVLW	0x0A
		SUBWF	XC,W
		BTFSS	STATUS,Z
		GOTO	RXD

		INCF	XM,F
		MOVLW	0x06
		SUBWF	XM,W
		BTFSS	STATUS,Z
		GOTO	RXC
		GOTO	RXM

T7S		ADDWF	PCL,F

		RETLW	0x3F
		RETLW	0x06
		RETLW	0x5B
		RETLW	0x4F
		RETLW	0x66
		RETLW	0x6D
		RETLW	0x7D
		RETLW	0x07
		RETLW	0x7F
		RETLW	0x67

RET		MOVLW 	0x7D
		MOVWF	TMR0
ET0IFX	BTFSS	INTCON,T0IF
		GOTO	ET0IFX
		BCF		INTCON,T0IF
		RETURN

		END