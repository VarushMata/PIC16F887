PROCESSOR	P16F887
		INCLUDE		<P16F887.INC>

		__CONFIG _CONFIG1, (_INTRC_OSC_NOCLKOUT & _WDT_OFF & _PWRTE_OFF & _MCLRE_OFF & _CP_OFF & _CPD_OFF & _BOR_OFF & _IESO_OFF & _FCMEN_OFF & _LVP_OFF & _DEBUG_OFF)
		__CONFIG _CONFIG2, (_WRT_OFF & _BOR40V)

		ORG	0x00	

CON		EQU	0x20

        BANKSEL ANSEL	;CAMBIO BANCO 3
		CLRF 	ANSEL
		CLRF 	ANSELH
	
		BANKSEL	TRISA	;CAMBIO BANCO 1
		CLRF	TRISA	
		CLRF	TRISB
		CLRF	TRISC
		CLRF	TRISD
		CLRF	TRISE

		MOVLW 	0xD1
		MOVWF	OPTION_REG
		
; 		CLRF    ADRESH
;    	CLRF    ADRESL
;    	MOVLW 	0XD5
;    	MOVWF 	ADCON0
;    
;   	BANKSEL ADCON1
;    	CLRF    ADCON1

		BANKSEL	PORTA	;CAMBIO BANCO 0	

INI		MOVLW	0x1E
		MOVWF	CON
		GOTO	FR1

FR1		MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		DECFSZ	CON,1
		GOTO	FR1

	MOVLW	0x1E
	MOVWF	CON

FR2		MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x11
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x01
		MOVWF	PORTC
		CALL	RET

		DECFSZ	CON,1
		GOTO	FR2

	MOVLW	0x1E
	MOVWF	CON

FR3		MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x03
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x13
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR3

	MOVLW	0x1E
	MOVWF	CON

FR4		MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x07
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x07
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR4

	MOVLW	0x1E
	MOVWF	CON

FR5		MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x0E
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x0E
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR5

	MOVLW	0x1E
	MOVWF	CON

FR6		MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x1D
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x1D
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x01
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR6

	MOVLW	0x28
	MOVWF	CON

FR7		MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x3B
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x3B
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x13
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR7

	MOVLW	0x1E
	MOVWF	CON


		
FR8		MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x77
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x77
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x07
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR8

	MOVLW	0x1E
	MOVWF	CON

FR9		MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0xEE
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0xEE
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x0E
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR9

	MOVLW	0x1E
	MOVWF	CON

FR10	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0xDD
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0xDD
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x1D
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x01
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR10

	MOVLW	0x1E
	MOVWF	CON

FR11	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0xBB
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0xBB
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x3B
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x13
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR11

	MOVLW	0x1E
	MOVWF	CON

FR12	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x77
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x77
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x77
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x07
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR12

	MOVLW	0x1E
	MOVWF	CON

FR13	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0xEE
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0xEE
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0xEE
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x0E
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR13

	MOVLW	0x1E
	MOVWF	CON

FR14	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0xDD
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0xDD
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0xDC
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x1C
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR14

	MOVLW	0x1E
	MOVWF	CON

FR15	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0xBB
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0xBB
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0xB8
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x38
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR15

	MOVLW	0x1E
	MOVWF	CON

FR16	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x77
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x77
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x70
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x70
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR16

	MOVLW	0x1E
	MOVWF	CON

FR17	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0xEE
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0xEE
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0xE0
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0xE0
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR17

	MOVLW	0x1E
	MOVWF	CON

FR18	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0xDD
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0xDD
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0xC1
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0xD0
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR18

	MOVLW	0x1E
	MOVWF	CON

FR19	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0xBB
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0xBB
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x93
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x80
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR19

	MOVLW	0x1E
	MOVWF	CON

FR20	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x77
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x77
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x07
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR20

	MOVLW	0x1E
	MOVWF	CON

FR21	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0xEE
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0xEE
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x0E
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR21

	MOVLW	0x1E
	MOVWF	CON

FR22	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0xDC
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0xDC
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x1C
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x01
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x11
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x01
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR22

	MOVLW	0x1E
	MOVWF	CON

FR23	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0xB8
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0xB8
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x38
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x12
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x02
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x02
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR23

	MOVLW	0x1E
	MOVWF	CON

FR24	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x70
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x71
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x70
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x04
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x14
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x04
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x01
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR24

	MOVLW	0x1E
	MOVWF	CON

FR25	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0xE0
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0xE2
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0xE0
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x08
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x18
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x08
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x02
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR25

	MOVLW	0x1E
	MOVWF	CON

FR26	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0xC0
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0xC4
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0xC0
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x18
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x04
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR26

	MOVLW	0x1E
	MOVWF	CON

FR27	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x80
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x88
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x80
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x20
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x38
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x20
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x08
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR27

	MOVLW	0x1E
	MOVWF	CON

FR28	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x01
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x40
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x59
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x40
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR28

	MOVLW	0x1E
	MOVWF	CON

FR29	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x02
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x20
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x88
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x92
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x80
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x20
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR29

	MOVLW	0x1E
	MOVWF	CON

FR30	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x04
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x40
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x18
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x04
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x40
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR30

	MOVLW	0x1E
	MOVWF	CON

FR31	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x08
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x80
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x08
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x08
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x80
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR31

	MOVLW	0x1E
	MOVWF	CON

FR32	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x18
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR32

	MOVLW	0x1E
	MOVWF	CON

FR33	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x20
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x01
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x19
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x01
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x20
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR33

	MOVLW	0x1E
	MOVWF	CON

FR34	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x40
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x02
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x1A
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x02
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x40
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR34

	MOVLW	0x1E
	MOVWF	CON

FR35	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x80
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x04
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x1C
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x04
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x80
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR35

	MOVLW	0x1E
	MOVWF	CON

FR36	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x08
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x18
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x08
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR36

	MOVLW	0x1E
	MOVWF	CON

FR37	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR37

	MOVLW	0x1E
	MOVWF	CON

FR38	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x20
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x30
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x20
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR38

	MOVLW	0x1E
	MOVWF	CON

FR39	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x50
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x40
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x40
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR39

	MOVLW	0x1E
	MOVWF	CON

FR40	MOVLW	0xFE
		MOVWF	PORTA
		MOVLW	0x10
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFD
		MOVWF	PORTA
		MOVLW	0x80
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xFB
		MOVWF	PORTA
		MOVLW	0x80
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xF7
		MOVWF	PORTA
		MOVLW	0x80
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xEF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xDF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET

		MOVLW	0xBF
		MOVWF	PORTA
		MOVLW	0x00
		MOVWF	PORTC
		CALL	RET
		
		DECFSZ	CON,1
		GOTO	FR40

	MOVLW	0x1E
	MOVWF	CON

GOTO	INI

RET		MOVLW 	0x9F
		MOVWF	TMR0
ET0IFX	BTFSS	INTCON,T0IF
		GOTO	ET0IFX
		BCF		INTCON,T0IF
		RETURN

		END