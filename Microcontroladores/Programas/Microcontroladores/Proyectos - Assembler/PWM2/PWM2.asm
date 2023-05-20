PROCESSOR	P16F887
	INCLUDE	    <P16F887.INC>

	__CONFIG _CONFIG1, (_INTRC_OSC_NOCLKOUT & _WDT_OFF & _PWRTE_OFF & _MCLRE_OFF & _CP_OFF & _CPD_OFF & _BOR_OFF & _IESO_OFF & _FCMEN_OFF & _LVP_OFF & _DEBUG_OFF)
	__CONFIG _CONFIG2, (_WRT_OFF & _BOR40V)

	ORG	    0x00
T_AL	EQU	0x00	

	BANKSEL	ANSEL
	MOVLW	0x60
	MOVWF	ANSEL
	CLRF	ANSELH

	BANKSEL	TRISA
	MOVLW	0xFF
	MOVWF	TRISA
	CLRF	TRISB
	CLRF	TRISC
	CLRF	TRISD
	MOVLW	0x03
	MOVWF	TRISE

	CLRF	ADCON1
	MOVLW	0xFF
	MOVWF	PR2

	BANKSEL	PORTA

	MOVLW	0x80
	MOVWF	CCPR1L
	MOVWF	CCPR2L
	MOVLW	0x0C
	MOVWF	CCP1CON
	MOVWF	CCP2CON
	BSF	T2CON,0
	BSF	T2CON,1
	BSF	T2CON, TMR2ON
E_IP	BTFSS	PIR1, TMR2IF
	GOTO	E_IP

C_P	MOVLW	0xD5	;SELECCIONAR C0
	MOVWF	ADCON0
	BSF	ADCON0, GO_DONE
E_C5	BTFSC	ADCON0, GO_DONE
	GOTO	E_C5
	MOVF	ADRESH, W
	MOVWF	CCPR1L
	CALL	R_AL
	MOVWF	CCP1CON
	BCF	ADCON0, ADON

	MOVLW	0xD9
	MOVWF	ADCON0
	
	BSF	ADCON0, GO_DONE
E_C6	BTFSC	ADCON0, GO_DONE
	GOTO	E_C6
	MOVF	ADRESH, W
	MOVWF	CCPR2L
	CALL	R_AL
	MOVWF	CCP2CON
	BCF	ADCON0, ADON

	GOTO	C_P

R_AL
	BANKSEL	TRISA
	MOVF	ADRESL,W
	BANKSEL	PORTA
	MOVWF	T_AL
	BCF	STATUS,C
	RRF	T_AL,F
	RRF	T_AL,F
	MOVLW	0X0C
	IORWF	T_AL,W
	RETURN


	END