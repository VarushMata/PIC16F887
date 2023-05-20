PROCESSOR	P16F887
	INCLUDE		<P16F887.INC>

__CONFIG _CONFIG1, (_INTRC_OSC_NOCLKOUT & _WDT_OFF & _PWRTE_OFF & _MCLRE_OFF & _CP_OFF & _CPD_OFF & _BOR_OFF & _IESO_OFF & _FCMEN_OFF & _LVP_OFF & _DEBUG_OFF)
__CONFIG _CONFIG2, (_WRT_OFF & _BOR40V)

VA   	EQU		0x20
VB   	EQU   	0x21
VC  	EQU   	0x22
RX   	EQU   	0x23
OPX 	EQU   	0x24
XA   	EQU   	0x25
XB   	EQU   	0x26
VX		EQU		0x27
     
		ORG	0x00	;VECTOR RESTAURACION
	
   		BANKSEL ANSEL	;CAMBIO BANCO 3
		CLRF 	ANSEL
		CLRF 	ANSELH
	
		BANKSEL	TRISA	;CAMBIO BANCO 1
		MOVLW	0xFF
		MOVF	TRISB
		CLRF	TRISA
		MOVLW	0x07
		CLRF	TRISC
		CLRF	TRISD
		CLRF	TRISE
	
		BANKSEL	PORTA	;CAMBIO BANCO 0
		
		
;Codigo2 100 A 0

VI		MOVLW	0x64
		MOVWF	VX

CP		MOVF	VX,W
		MOVWF	PORTA
		CALL	RET
		MOVLW	0x01
		SUBWF	VX,F
		BTFSC	STATUS,C
		GOTO	CP
		GOTO	VI

RET		MOVLW	0x04
		MOVWF	VC
C_VC	MOVLW	0xFA	;250
		MOVWF	VB
C_VB	MOVLW	0xF9	;249
		MOVWF	VA
C_VA	NOP				;1us
		DECFSZ	VA,F	;4+4+4+3
		GOTO	C_VA	;(4*n)-1 -> (4*249)-1=995

		DECFSZ	VB,F	;[(995+5)*250]-1=249,999
		GOTO	C_VB

		DECFSZ	VC,F	;[(249999+5)*4]-1=1,000,015+6
		GOTO	C_VC
		RETURN			;1,000,021 us

	
		END		;FIN