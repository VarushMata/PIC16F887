opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 9453"

opt pagewidth 120

	opt pm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 7 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF& 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 8 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_init_comms
	FNCALL	_main,_printf
	FNCALL	_main,_valadc
	FNCALL	_main,_getch
	FNCALL	_main,_atoi
	FNCALL	_main,_pwm
	FNCALL	_main,_pause
	FNCALL	_lcd_init,_pause
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_init,_lcd_clear
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_pause
	FNCALL	_lcd_write,_pause
	FNCALL	_pwm,_pause
	FNCALL	_pwm,_getch
	FNCALL	_pwm,_main
	FNCALL	_valadc,_pause
	FNCALL	_valadc,_printf
	FNCALL	_valadc,_getch
	FNCALL	_valadc,_main
	FNCALL	_pause,_msecbase
	FNCALL	_atoi,___wmul
	FNCALL	_atoi,_isdigit
	FNCALL	_printf,_putch
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNROOT	_main
	global	_vadc1
	global	_vadc2
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	line	73

;initializer for _vadc1
	retlw	0
	retlw	02h

	line	74

;initializer for _vadc2
	retlw	0
	retlw	02h

	global	_dpowers
psect	stringtext,class=STRCODE,delta=2,reloc=256
global __pstringtext
__pstringtext:
;	global	stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
__stringbase:
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_a
	global	_PA
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR1L
_CCPR1L	set	21
	global	_CCPR2L
_CCPR2L	set	27
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_T2CON
_T2CON	set	18
	global	_TMR0
_TMR0	set	1
	global	_TXREG
_TXREG	set	25
	global	_GO_DONE
_GO_DONE	set	249
	global	_RC0
_RC0	set	56
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RCIF
_RCIF	set	101
	global	_T0IF
_T0IF	set	90
	global	_TXIF
_TXIF	set	100
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_PR2
_PR2	set	146
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_TXSTA
_TXSTA	set	152
	global	_ADFM
_ADFM	set	1279
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_BAUDCTL
_BAUDCTL	set	391
	global	_ADRESL
_ADRESL	set	158
	
STR_16:	
	retlw	10
	retlw	13
	retlw	10
	retlw	69	;'E'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	48	;'0'
	retlw	32	;' '
	retlw	121	;'y'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	51	;'3'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	87	;'W'
	retlw	77	;'M'
	retlw	49	;'1'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_18:	
	retlw	10
	retlw	13
	retlw	10
	retlw	69	;'E'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	48	;'0'
	retlw	32	;' '
	retlw	121	;'y'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	52	;'4'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	87	;'W'
	retlw	77	;'M'
	retlw	50	;'2'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	10
	retlw	13
	retlw	69	;'E'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_22:	
	retlw	10
	retlw	13
	retlw	86	;'V'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	53	;'5'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_23:	
	retlw	10
	retlw	13
	retlw	86	;'V'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	54	;'6'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	13
	retlw	10
	retlw	10
	retlw	86	;'V'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	66	;'B'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	13
	retlw	10
	retlw	51	;'3'
	retlw	46	;'.'
	retlw	45	;'-'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	118	;'v'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	13
	retlw	10
	retlw	10
	retlw	69	;'E'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	13
	retlw	10
	retlw	50	;'2'
	retlw	46	;'.'
	retlw	45	;'-'
	retlw	32	;' '
	retlw	86	;'V'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	66	;'B'
	retlw	0
psect	stringtext
	
STR_20:	
	retlw	13
	retlw	10
	retlw	10
	retlw	79	;'O'
	retlw	112	;'p'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	97	;'a'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	13
	retlw	10
	retlw	52	;'4'
	retlw	46	;'.'
	retlw	45	;'-'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	118	;'v'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	87	;'W'
	retlw	77	;'M'
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	13
	retlw	10
	retlw	49	;'1'
	retlw	46	;'.'
	retlw	45	;'-'
	retlw	32	;' '
	retlw	86	;'V'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	67	;'C'
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_12:	
	retlw	10
	retlw	13
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	37	;'%'
	retlw	99	;'c'
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	12
	retlw	0
psect	stringtext
STR_14	equ	STR_10+22
STR_17	equ	STR_10+22
STR_19	equ	STR_10+22
STR_9	equ	STR_8+0
STR_11	equ	STR_8+0
STR_15	equ	STR_8+0
STR_21	equ	STR_12+0
	file	"USART3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      2

_PA:
       ds      6

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	line	73
_vadc1:
       ds      2

psect	dataBANK0
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	line	74
_vadc2:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_valadc
?_valadc:	; 0 bytes @ 0x0
	global	?_pwm
?_pwm:	; 0 bytes @ 0x0
	global	?_pause
?_pause:	; 0 bytes @ 0x0
	global	?_msecbase
?_msecbase:	; 0 bytes @ 0x0
	global	??_msecbase
??_msecbase:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	??_putch
??_putch:	; 0 bytes @ 0x0
	global	??_getch
??_getch:	; 0 bytes @ 0x0
	global	?_init_comms
?_init_comms:	; 0 bytes @ 0x0
	global	??_init_comms
??_init_comms:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_getch
?_getch:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	global	_isdigit$2408
_isdigit$2408:	; 1 bytes @ 0x0
	global	pause@usvalue
pause@usvalue:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
	global	??_pause
??_pause:	; 0 bytes @ 0x2
	global	pause@x
pause@x:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??_pwm
??_pwm:	; 0 bytes @ 0x4
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x5
	ds	1
	global	?_atoi
?_atoi:	; 2 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x7
	ds	1
	global	??_atoi
??_atoi:	; 0 bytes @ 0x8
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	ds	1
	global	atoi@sign
atoi@sign:	; 1 bytes @ 0xA
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	global	atoi@a
atoi@a:	; 2 bytes @ 0xB
	ds	1
	global	??_printf
??_printf:	; 0 bytes @ 0xC
	ds	1
	global	atoi@s
atoi@s:	; 1 bytes @ 0xD
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_printf
?_printf:	; 2 bytes @ 0x0
	global	printf@f
printf@f:	; 2 bytes @ 0x0
	ds	4
	global	printf@flag
printf@flag:	; 1 bytes @ 0x4
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x5
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x6
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0x7
	ds	4
	global	printf@c
printf@c:	; 1 bytes @ 0xB
	ds	1
	global	??_valadc
??_valadc:	; 0 bytes @ 0xC
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0xD
	ds	2
	global	main@i_1838
main@i_1838:	; 2 bytes @ 0xF
	ds	2
	global	main@i_1841
main@i_1841:	; 2 bytes @ 0x11
	ds	2
;;Data sizes: Strings 346, constant 10, data 4, bss 8, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     19      31
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?_atoi	int  size(1) Largest target is 0
;;
;; atoi@s	PTR const unsigned char  size(1) Largest target is 6
;;		 -> PA(BANK0[6]), 
;;
;; printf@f	PTR const unsigned char  size(2) Largest target is 47
;;		 -> STR_23(CODE[26]), STR_22(CODE[26]), STR_21(CODE[3]), STR_20(CODE[20]), 
;;		 -> STR_19(CODE[3]), STR_18(CODE[47]), STR_17(CODE[3]), STR_16(CODE[47]), 
;;		 -> STR_15(CODE[3]), STR_14(CODE[3]), STR_13(CODE[43]), STR_12(CODE[3]), 
;;		 -> STR_11(CODE[3]), STR_10(CODE[25]), STR_9(CODE[3]), STR_8(CODE[3]), 
;;		 -> STR_7(CODE[21]), STR_6(CODE[19]), STR_5(CODE[22]), STR_4(CODE[21]), 
;;		 -> STR_3(CODE[18]), STR_2(CODE[3]), STR_1(CODE[2]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S1881$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_printf
;;   _main->_atoi
;;   _lcd_init->_lcd_write
;;   _lcd_clear->_lcd_write
;;   _lcd_write->_pause
;;   _pwm->_pause
;;   _valadc->_printf
;;   _atoi->___wmul
;;   _printf->___lwmod
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_valadc
;;   _valadc->_printf
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 6     6      0    2983
;;                                             13 BANK0      6     6      0
;;                           _lcd_init
;;                         _init_comms
;;                             _printf
;;                             _valadc
;;                              _getch
;;                               _atoi
;;                                _pwm
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             1     1      0     295
;;                                              5 COMMON     1     1      0
;;                              _pause
;;                          _lcd_write
;;                          _lcd_clear
;; ---------------------------------------------------------------------------------
;; (2) _lcd_clear                                            0     0      0     136
;;                          _lcd_write
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (3) _lcd_write                                            1     1      0      90
;;                                              4 COMMON     1     1      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _pwm                                                  2     2      0     250
;;                                              4 COMMON     2     2      0
;;                              _pause
;;                              _getch
;;                               _main
;; ---------------------------------------------------------------------------------
;; (1) _valadc                                               1     1      0    1025
;;                                             12 BANK0      1     1      0
;;                              _pause
;;                             _printf
;;                              _getch
;;                               _main
;; ---------------------------------------------------------------------------------
;; (1) _pause                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (1) _atoi                                                 8     6      2     388
;;                                              6 COMMON     8     6      2
;;                             ___wmul
;;                            _isdigit
;; ---------------------------------------------------------------------------------
;; (2) _printf                                              14    10      4     775
;;                                             12 COMMON     2     2      0
;;                                              0 BANK0     12     8      4
;;                              _putch
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (3) ___lwmod                                              5     1      4     159
;;                                              7 COMMON     5     1      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              7     3      4     162
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _init_comms                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _getch                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _putch                                                1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _pause
;;       _msecbase
;;     _lcd_write
;;       _pause
;;         _msecbase
;;     _lcd_clear
;;       _lcd_write
;;         _pause
;;           _msecbase
;;       _pause
;;         _msecbase
;;   _init_comms
;;   _printf
;;     _putch
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
;;   _valadc
;;     _pause
;;       _msecbase
;;     _printf
;;       _putch
;;       ___lwdiv
;;       ___lwmod
;;         ___lwdiv (ARG)
;;     _getch
;;   _getch
;;   _atoi
;;     ___wmul
;;     _isdigit
;;   _pwm
;;     _pause
;;       _msecbase
;;     _getch
;;   _pause
;;     _msecbase
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      32      12        0.0%
;;ABS                  0      0      2D       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       5       2        0.0%
;;BANK0               50     13      1F       5       38.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 82 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   17[BANK0 ] int 
;;  i               2   15[BANK0 ] int 
;;  i               2   13[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_init
;;		_init_comms
;;		_printf
;;		_valadc
;;		_getch
;;		_atoi
;;		_pwm
;;		_pause
;; This function is called by:
;;		_pwm
;;		_valadc
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	line	82
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [allreg]
	line	85
	
l3327:	
;USART3.c: 85: ANSEL = 0X60;
	movlw	(060h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	86
	
l3329:	
;USART3.c: 86: ANSELH = 0;
	clrf	(393)^0180h	;volatile
	line	87
	
l3331:	
;USART3.c: 87: TRISB=0XFF;
	movlw	(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	88
;USART3.c: 88: TRISA=0;
	clrf	(133)^080h	;volatile
	line	90
;USART3.c: 90: TRISD =0;
	clrf	(136)^080h	;volatile
	line	91
;USART3.c: 91: TRISC =0;
	clrf	(135)^080h	;volatile
	line	92
	
l3333:	
;USART3.c: 92: TRISE=0X07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	93
	
l3335:	
;USART3.c: 93: T2CON=0X07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	94
	
l3337:	
;USART3.c: 94: PR2=0XFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	96
	
l3339:	
;USART3.c: 96: CCPR1L=0X80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	97
	
l3341:	
;USART3.c: 97: CCP1CON=0X0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	98
	
l3343:	
;USART3.c: 98: lcd_init();
	fcall	_lcd_init
	line	99
	
l3345:	
;USART3.c: 99: init_comms();
	fcall	_init_comms
	line	100
	
l3347:	
;USART3.c: 100: ADFM=0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1279/8)^080h,(1279)&7
	line	104
	
l3349:	
;USART3.c: 104: printf("\f");
	movlw	low(STR_1|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_printf)
	movlw	high(STR_1|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	105
	
l3351:	
;USART3.c: 105: printf("\r\n");
	movlw	low(STR_2|8000h)
	movwf	(?_printf)
	movlw	high(STR_2|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	106
	
l3353:	
;USART3.c: 106: printf("\r\n1.- Valores ADC");
	movlw	low(STR_3|8000h)
	movwf	(?_printf)
	movlw	high(STR_3|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	107
	
l3355:	
;USART3.c: 107: printf("\r\n2.- Valor puerto B");
	movlw	low(STR_4|8000h)
	movwf	(?_printf)
	movlw	high(STR_4|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	108
	
l3357:	
;USART3.c: 108: printf("\r\n3.- Enviar puerto A");
	movlw	low(STR_5|8000h)
	movwf	(?_printf)
	movlw	high(STR_5|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	109
	
l3359:	
;USART3.c: 109: printf("\r\n4.- Enviar a PWM");
	movlw	low(STR_6|8000h)
	movwf	(?_printf)
	movlw	high(STR_6|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	110
	
l3361:	
;USART3.c: 110: printf("\r\n\nElige una opcion:");
	movlw	low(STR_7|8000h)
	movwf	(?_printf)
	movlw	high(STR_7|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	112
;USART3.c: 112: switch(a=getch()){
	goto	l3449
	line	116
	
l3363:	
;USART3.c: 116: printf("%c",a);
	movlw	low(STR_8|8000h)
	movwf	(?_printf)
	movlw	high(STR_8|8000h)
	movwf	((?_printf))+1
	movf	(_a+1),w
	movwf	1+(?_printf)+02h
	movf	(_a),w
	movwf	0+(?_printf)+02h
	fcall	_printf
	line	117
	
l3365:	
;USART3.c: 117: valadc();
	fcall	_valadc
	line	118
	
l3367:	
;USART3.c: 118: getch();
	fcall	_getch
	line	119
;USART3.c: 119: break;
	goto	l3349
	line	123
	
l3369:	
;USART3.c: 123: printf("%c",a);
	movlw	low(STR_9|8000h)
	movwf	(?_printf)
	movlw	high(STR_9|8000h)
	movwf	((?_printf))+1
	movf	(_a+1),w
	movwf	1+(?_printf)+02h
	movf	(_a),w
	movwf	0+(?_printf)+02h
	fcall	_printf
	line	124
	
l3371:	
;USART3.c: 124: a=PORTB;
	movf	(6),w	;volatile
	movwf	(_a)
	clrf	(_a+1)
	line	125
	
l3373:	
;USART3.c: 125: printf("\r\n\nValor del puerto B:%d",a);
	movlw	low(STR_10|8000h)
	movwf	(?_printf)
	movlw	high(STR_10|8000h)
	movwf	((?_printf))+1
	movf	(_a+1),w
	movwf	1+(?_printf)+02h
	movf	(_a),w
	movwf	0+(?_printf)+02h
	fcall	_printf
	goto	l3367
	line	131
	
l3377:	
;USART3.c: 131: printf("%c",a);
	movlw	low(STR_11|8000h)
	movwf	(?_printf)
	movlw	high(STR_11|8000h)
	movwf	((?_printf))+1
	movf	(_a+1),w
	movwf	1+(?_printf)+02h
	movf	(_a),w
	movwf	0+(?_printf)+02h
	fcall	_printf
	line	132
;USART3.c: 132: printf("\n\r");
	movlw	low(STR_12|8000h)
	movwf	(?_printf)
	movlw	high(STR_12|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	133
;USART3.c: 133: printf("\n\rElige un valor a mostrar en el puerto A:");
	movlw	low(STR_13|8000h)
	movwf	(?_printf)
	movlw	high(STR_13|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	135
	
l3379:	
;USART3.c: 135: for(int i=0;i<=2;i++){
	clrf	(main@i)
	clrf	(main@i+1)
	line	136
	
l3385:	
;USART3.c: 136: PA[i]=getch();}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	_PA&0ffh
	movwf	fsr0
	fcall	_getch
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	135
	
l3387:	
	incf	(main@i),f
	skipnz
	incf	(main@i+1),f
	
l3389:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u705
	movlw	low(03h)
	subwf	(main@i),w
u705:

	skipc
	goto	u701
	goto	u700
u701:
	goto	l3385
u700:
	line	138
	
l3391:	
;USART3.c: 138: a=atoi(PA);
	movlw	(_PA)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_a+1)
	movf	(0+(?_atoi)),w
	movwf	(_a)
	line	139
	
l3393:	
;USART3.c: 139: printf("%d",a);
	movlw	low(STR_14|8000h)
	movwf	(?_printf)
	movlw	high(STR_14|8000h)
	movwf	((?_printf))+1
	movf	(_a+1),w
	movwf	1+(?_printf)+02h
	movf	(_a),w
	movwf	0+(?_printf)+02h
	fcall	_printf
	line	140
	
l3395:	
;USART3.c: 140: PORTA=0;
	clrf	(5)	;volatile
	line	141
	
l3397:	
;USART3.c: 141: PORTA=a;
	movf	(_a),w
	movwf	(5)	;volatile
	goto	l3367
	line	147
	
l3401:	
;USART3.c: 147: printf("%c",a);
	movlw	low(STR_15|8000h)
	movwf	(?_printf)
	movlw	high(STR_15|8000h)
	movwf	((?_printf))+1
	movf	(_a+1),w
	movwf	1+(?_printf)+02h
	movf	(_a),w
	movwf	0+(?_printf)+02h
	fcall	_printf
	line	148
;USART3.c: 148: printf("\n\r\nElige un valor entre 0 y 1023 para el PWM1:");
	movlw	low(STR_16|8000h)
	movwf	(?_printf)
	movlw	high(STR_16|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	150
	
l3403:	
;USART3.c: 150: for(int i=0;i<=3;i++){
	clrf	(main@i_1838)
	clrf	(main@i_1838+1)
	line	151
	
l3409:	
;USART3.c: 151: PA[i]=getch();}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i_1838),w
	addlw	_PA&0ffh
	movwf	fsr0
	fcall	_getch
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	150
	
l3411:	
	incf	(main@i_1838),f
	skipnz
	incf	(main@i_1838+1),f
	
l3413:	
	movf	(main@i_1838+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u715
	movlw	low(04h)
	subwf	(main@i_1838),w
u715:

	skipc
	goto	u711
	goto	u710
u711:
	goto	l3409
u710:
	line	152
	
l3415:	
;USART3.c: 152: a=atoi(PA);
	movlw	(_PA)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_a+1)
	movf	(0+(?_atoi)),w
	movwf	(_a)
	line	153
	
l3417:	
;USART3.c: 153: printf("%d",a);
	movlw	low(STR_17|8000h)
	movwf	(?_printf)
	movlw	high(STR_17|8000h)
	movwf	((?_printf))+1
	movf	(_a+1),w
	movwf	1+(?_printf)+02h
	movf	(_a),w
	movwf	0+(?_printf)+02h
	fcall	_printf
	line	154
	
l3419:	
;USART3.c: 154: vadc1=a;
	movf	(_a+1),w
	movwf	(_vadc1+1)
	movf	(_a),w
	movwf	(_vadc1)
	line	157
	
l3421:	
;USART3.c: 157: printf("\n\r\nElige un valor entre 0 y 1024 para el PWM2:");
	movlw	low(STR_18|8000h)
	movwf	(?_printf)
	movlw	high(STR_18|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	159
	
l3423:	
;USART3.c: 159: for(int i=0;i<=3;i++){
	clrf	(main@i_1841)
	clrf	(main@i_1841+1)
	line	160
	
l3429:	
;USART3.c: 160: PA[i]=getch();}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i_1841),w
	addlw	_PA&0ffh
	movwf	fsr0
	fcall	_getch
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	159
	
l3431:	
	incf	(main@i_1841),f
	skipnz
	incf	(main@i_1841+1),f
	
l3433:	
	movf	(main@i_1841+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u725
	movlw	low(04h)
	subwf	(main@i_1841),w
u725:

	skipc
	goto	u721
	goto	u720
u721:
	goto	l3429
u720:
	line	161
	
l3435:	
;USART3.c: 161: a=atoi(PA);
	movlw	(_PA)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_a+1)
	movf	(0+(?_atoi)),w
	movwf	(_a)
	line	162
	
l3437:	
;USART3.c: 162: printf("%d",a);
	movlw	low(STR_19|8000h)
	movwf	(?_printf)
	movlw	high(STR_19|8000h)
	movwf	((?_printf))+1
	movf	(_a+1),w
	movwf	1+(?_printf)+02h
	movf	(_a),w
	movwf	0+(?_printf)+02h
	fcall	_printf
	line	163
	
l3439:	
;USART3.c: 163: vadc2=a;
	movf	(_a+1),w
	movwf	(_vadc2+1)
	movf	(_a),w
	movwf	(_vadc2)
	line	165
	
l3441:	
;USART3.c: 165: pwm();
	fcall	_pwm
	goto	l3367
	line	172
	
l3445:	
;USART3.c: 172: printf("\r\n\nOpcion no valida");
	movlw	low(STR_20|8000h)
	movwf	(?_printf)
	movlw	high(STR_20|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	173
	
l3447:	
;USART3.c: 173: pause(1000);
	movlw	low(03E8h)
	movwf	(?_pause)
	movlw	high(03E8h)
	movwf	((?_pause))+1
	fcall	_pause
	line	175
;USART3.c: 175: }}
	goto	l3349
	line	112
	
l3449:	
	fcall	_getch
	movwf	(_a)
	clrf	(_a+1)
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable             5     6 (fixed)
; spacedrange            8     9 (fixed)
; locatedrange           1     3 (fixed)
;	Chosen strategy is simple_byte

	movf ((_a+1)),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3481
	goto	l3445
	opt asmopt_on
	
l3481:	
; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 49 to 52
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf ((_a)),w
	opt asmopt_off
	xorlw	49^0	; case 49
	skipnz
	goto	l3363
	xorlw	50^49	; case 50
	skipnz
	goto	l3369
	xorlw	51^50	; case 51
	skipnz
	goto	l3377
	xorlw	52^51	; case 52
	skipnz
	goto	l3401
	goto	l3445
	opt asmopt_on

	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	176
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text343,local,class=CODE,delta=2
global __ptext343
__ptext343:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 264 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  init_value      1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_pause
;;		_lcd_write
;;		_lcd_clear
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text343
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	line	264
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	267
	
l3287:	
	line	269
	
l3289:	
;USART3.c: 269: RC3 = 0;
	bcf	(59/8),(59)&7
	line	270
	
l3291:	
;USART3.c: 270: RC0 = 0;
	bcf	(56/8),(56)&7
	line	271
	
l3293:	
;USART3.c: 271: RC4 = 0;
	bcf	(60/8),(60)&7
	line	273
	
l3295:	
;USART3.c: 273: pause(15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	274
	
l3297:	
;USART3.c: 274: PORTD = init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	275
	
l3299:	
;USART3.c: 275: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3301:	
	bcf	(56/8),(56)&7
	line	276
;USART3.c: 276: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	277
	
l3303:	
;USART3.c: 277: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l3305:	
	bcf	(56/8),(56)&7
	line	278
;USART3.c: 278: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	279
	
l3307:	
;USART3.c: 279: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l3309:	
	bcf	(56/8),(56)&7
	line	280
;USART3.c: 280: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	281
	
l3311:	
;USART3.c: 281: PORTD= 2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	282
	
l3313:	
;USART3.c: 282: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3315:	
	bcf	(56/8),(56)&7
	line	284
	
l3317:	
;USART3.c: 284: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	285
	
l3319:	
;USART3.c: 285: lcd_write(0x0C);
	movlw	(0Ch)
	fcall	_lcd_write
	line	286
	
l3321:	
;USART3.c: 286: lcd_write(0x0F);
	movlw	(0Fh)
	fcall	_lcd_write
	line	287
	
l3323:	
;USART3.c: 287: lcd_clear();
	fcall	_lcd_clear
	line	288
	
l3325:	
;USART3.c: 288: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	289
	
l1117:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_clear
psect	text344,local,class=CODE,delta=2
global __ptext344
__ptext344:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 238 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;;		_pause
;; This function is called by:
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text344
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	line	238
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 3
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	239
	
l3283:	
;USART3.c: 239: RC3 = 0;
	bcf	(59/8),(59)&7
	line	240
	
l3285:	
;USART3.c: 240: lcd_write(0x01);
	movlw	(01h)
	fcall	_lcd_write
	line	241
;USART3.c: 241: pause (2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	242
	
l1102:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_write
psect	text345,local,class=CODE,delta=2
global __ptext345
__ptext345:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 229 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pause
;; This function is called by:
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text345
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	line	229
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 3
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	230
	
l3269:	
;USART3.c: 230: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	231
	
l3271:	
;USART3.c: 231: PORTD = ( ( c >> 4) & 0x0F);
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	232
	
l3273:	
;USART3.c: 232: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3275:	
	bcf	(56/8),(56)&7
	line	233
	
l3277:	
;USART3.c: 233: PORTD = (c & 0x0F);
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	234
	
l3279:	
;USART3.c: 234: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3281:	
	bcf	(56/8),(56)&7
	line	235
	
l1099:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_pwm
psect	text346,local,class=CODE,delta=2
global __ptext346
__ptext346:

;; *************** function _pwm *****************
;; Defined at:
;;		line 178 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pause
;;		_getch
;;		_main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text346
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	line	178
	global	__size_of_pwm
	__size_of_pwm	equ	__end_of_pwm-_pwm
	
_pwm:	
	opt	stack 5
; Regs used in _pwm: [allreg]
	line	181
	
l3249:	
;USART3.c: 181: ADRESH=vadc1>>2;
	movf	(_vadc1+1),w
	movwf	(??_pwm+0)+0+1
	movf	(_vadc1),w
	movwf	(??_pwm+0)+0
	clrc
	rrf	(??_pwm+0)+1,f
	rrf	(??_pwm+0)+0,f
	clrc
	rrf	(??_pwm+0)+1,f
	rrf	(??_pwm+0)+0,f
	movf	0+(??_pwm+0)+0,w
	movwf	(30)	;volatile
	line	182
	
l3251:	
;USART3.c: 182: ADRESL=vadc1<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	184
	
l3253:	
;USART3.c: 184: CCPR1L=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(21)	;volatile
	line	185
	
l3255:	
;USART3.c: 185: CCP1CON=0X0C|(ADRESL>>2);
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_pwm+0)+0
	clrc
	rrf	(??_pwm+0)+0,f
	clrc
	rrf	(??_pwm+0)+0,f
	movf	0+(??_pwm+0)+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	187
	
l3257:	
;USART3.c: 187: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	189
	
l3259:	
;USART3.c: 189: ADRESH=vadc2>>2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vadc2+1),w
	movwf	(??_pwm+0)+0+1
	movf	(_vadc2),w
	movwf	(??_pwm+0)+0
	clrc
	rrf	(??_pwm+0)+1,f
	rrf	(??_pwm+0)+0,f
	clrc
	rrf	(??_pwm+0)+1,f
	rrf	(??_pwm+0)+0,f
	movf	0+(??_pwm+0)+0,w
	movwf	(30)	;volatile
	line	190
	
l3261:	
;USART3.c: 190: ADRESL=vadc2<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	192
	
l3263:	
;USART3.c: 192: CCPR2L=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(27)	;volatile
	line	193
	
l3265:	
;USART3.c: 193: CCP2CON=0X0C|(ADRESL>>2);
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_pwm+0)+0
	clrc
	rrf	(??_pwm+0)+0,f
	clrc
	rrf	(??_pwm+0)+0,f
	movf	0+(??_pwm+0)+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	movwf	(29)	;volatile
	line	195
;USART3.c: 195: getch();
	fcall	_getch
	line	196
	
l3267:	
;USART3.c: 196: main();
	fcall	_main
	line	198
	
l1087:	
	return
	opt stack 0
GLOBAL	__end_of_pwm
	__end_of_pwm:
;; =============== function _pwm ends ============

	signat	_pwm,88
	global	_valadc
psect	text347,local,class=CODE,delta=2
global __ptext347
__ptext347:

;; *************** function _valadc *****************
;; Defined at:
;;		line 201 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pause
;;		_printf
;;		_getch
;;		_main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text347
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	line	201
	global	__size_of_valadc
	__size_of_valadc	equ	__end_of_valadc-_valadc
	
_valadc:	
	opt	stack 5
; Regs used in _valadc: [allreg]
	line	204
	
l3219:	
;USART3.c: 204: ADCON0=0XD5;
	movlw	(0D5h)
	movwf	(31)	;volatile
	line	205
	
l3221:	
;USART3.c: 205: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	206
;USART3.c: 206: while(GO_DONE);
	
l1090:	
	btfsc	(249/8),(249)&7
	goto	u661
	goto	u660
u661:
	goto	l1090
u660:
	line	208
	
l3223:	
;USART3.c: 208: vadc1=(ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_vadc1)
	clrf	(_vadc1+1)
	
l3225:	
	clrc
	rlf	(_vadc1),f
	rlf	(_vadc1+1),f
	clrc
	rlf	(_vadc1),f
	rlf	(_vadc1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_valadc+0)+0
	movlw	06h
u675:
	clrc
	rrf	(??_valadc+0)+0,f
	addlw	-1
	skipz
	goto	u675
	movf	0+(??_valadc+0)+0,w
	iorwf	(_vadc1),f
	line	210
	
l3227:	
;USART3.c: 210: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	212
	
l3229:	
;USART3.c: 212: ADCON0=0XD9;
	movlw	(0D9h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	213
	
l3231:	
;USART3.c: 213: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	214
;USART3.c: 214: while(GO_DONE);
	
l1093:	
	btfsc	(249/8),(249)&7
	goto	u681
	goto	u680
u681:
	goto	l1093
u680:
	line	216
	
l3233:	
;USART3.c: 216: vadc2=(ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_vadc2)
	clrf	(_vadc2+1)
	
l3235:	
	clrc
	rlf	(_vadc2),f
	rlf	(_vadc2+1),f
	clrc
	rlf	(_vadc2),f
	rlf	(_vadc2+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_valadc+0)+0
	movlw	06h
u695:
	clrc
	rrf	(??_valadc+0)+0,f
	addlw	-1
	skipz
	goto	u695
	movf	0+(??_valadc+0)+0,w
	iorwf	(_vadc2),f
	line	218
	
l3237:	
;USART3.c: 218: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	220
	
l3239:	
;USART3.c: 220: printf("\n\r");
	movlw	low(STR_21|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_printf)
	movlw	high(STR_21|8000h)
	movwf	((?_printf))+1
	fcall	_printf
	line	221
	
l3241:	
;USART3.c: 221: printf("\n\rValor del canal C5: %d ",vadc1);
	movlw	low(STR_22|8000h)
	movwf	(?_printf)
	movlw	high(STR_22|8000h)
	movwf	((?_printf))+1
	movf	(_vadc1+1),w
	movwf	1+(?_printf)+02h
	movf	(_vadc1),w
	movwf	0+(?_printf)+02h
	fcall	_printf
	line	222
	
l3243:	
;USART3.c: 222: printf("\n\rValor del canal C6: %d ",vadc2);
	movlw	low(STR_23|8000h)
	movwf	(?_printf)
	movlw	high(STR_23|8000h)
	movwf	((?_printf))+1
	movf	(_vadc2+1),w
	movwf	1+(?_printf)+02h
	movf	(_vadc2),w
	movwf	0+(?_printf)+02h
	fcall	_printf
	line	224
	
l3245:	
;USART3.c: 224: getch();
	fcall	_getch
	line	225
	
l3247:	
;USART3.c: 225: main();
	fcall	_main
	line	226
	
l1096:	
	return
	opt stack 0
GLOBAL	__end_of_valadc
	__end_of_valadc:
;; =============== function _valadc ends ============

	signat	_valadc,88
	global	_pause
psect	text348,local,class=CODE,delta=2
global __ptext348
__ptext348:

;; *************** function _pause *****************
;; Defined at:
;;		line 292 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
;; Parameters:    Size  Location     Type
;;  usvalue         2    0[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  x               2    2[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_msecbase
;; This function is called by:
;;		_main
;;		_pwm
;;		_valadc
;;		_lcd_write
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text348
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	line	292
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 6
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	295
	
l3211:	
;USART3.c: 293: unsigned short x;
;USART3.c: 295: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l3217
	line	297
	
l3213:	
;USART3.c: 296: {
;USART3.c: 297: msecbase();
	fcall	_msecbase
	line	295
	
l3215:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l3217:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u655
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u655:
	skipnc
	goto	u651
	goto	u650
u651:
	goto	l3213
u650:
	line	299
	
l1123:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	_atoi
psect	text349,local,class=CODE,delta=2
global __ptext349
__ptext349:

;; *************** function _atoi *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\atoi.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> PA(6), 
;; Auto vars:     Size  Location     Type
;;  s               1   13[COMMON] PTR const unsigned char 
;;		 -> PA(6), 
;;  a               2   11[COMMON] int 
;;  sign            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: FFEFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___wmul
;;		_isdigit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text349
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\atoi.c"
	line	6
	global	__size_of_atoi
	__size_of_atoi	equ	__end_of_atoi-_atoi
	
_atoi:	
	opt	stack 6
; Regs used in _atoi: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;atoi@s stored from wreg
	movwf	(atoi@s)
	line	10
	
l3177:	
	goto	l3181
	line	11
	
l3179:	
	incf	(atoi@s),f
	line	10
	
l3181:	
	movf	(atoi@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	020h
	skipnz
	goto	u591
	goto	u590
u591:
	goto	l3179
u590:
	
l3183:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	09h
	skipnz
	goto	u601
	goto	u600
u601:
	goto	l3179
u600:
	line	12
	
l3185:	
	clrf	(atoi@a)
	clrf	(atoi@a+1)
	line	13
	clrf	(atoi@sign)
	line	14
	
l3187:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u611
	goto	u610
u611:
	goto	l3191
u610:
	line	15
	
l3189:	
	incf	(atoi@sign),f
	line	16
	incf	(atoi@s),f
	line	17
	goto	l3199
	
l3191:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Bh
	skipz
	goto	u621
	goto	u620
u621:
	goto	l3199
u620:
	line	18
	
l3193:	
	incf	(atoi@s),f
	goto	l3199
	line	20
	
l3195:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	(atoi@a+1),w
	movwf	(?___wmul+1)
	movf	(atoi@a),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	indf,w
	addwf	(0+(?___wmul)),w
	movwf	(??_atoi+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_atoi+0)+0
	movf	0+(??_atoi+0)+0,w
	addlw	low(0FFD0h)
	movwf	(atoi@a)
	movf	1+(??_atoi+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(atoi@a)
	goto	l3193
	line	19
	
l3199:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_isdigit
	btfsc	status,0
	goto	u631
	goto	u630
u631:
	goto	l3195
u630:
	line	21
	
l3201:	
	movf	(atoi@sign),w
	skipz
	goto	u640
	goto	l3207
u640:
	line	22
	
l3203:	
	comf	(atoi@a),w
	movwf	(??_atoi+0)+0
	comf	(atoi@a+1),w
	movwf	((??_atoi+0)+0+1)
	incf	(??_atoi+0)+0,f
	skipnz
	incf	((??_atoi+0)+0+1),f
	movf	0+(??_atoi+0)+0,w
	movwf	(?_atoi)
	movf	1+(??_atoi+0)+0,w
	movwf	(?_atoi+1)
	goto	l2155
	line	23
	
l3207:	
	movf	(atoi@a+1),w
	movwf	(?_atoi+1)
	movf	(atoi@a),w
	movwf	(?_atoi)
	line	24
	
l2155:	
	return
	opt stack 0
GLOBAL	__end_of_atoi
	__end_of_atoi:
;; =============== function _atoi ends ============

	signat	_atoi,4218
	global	_printf
psect	text350,local,class=CODE,delta=2
global __ptext350
__ptext350:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               2    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_23(26), STR_22(26), STR_21(3), STR_20(20), 
;;		 -> STR_19(3), STR_18(47), STR_17(3), STR_16(47), 
;;		 -> STR_15(3), STR_14(3), STR_13(43), STR_12(3), 
;;		 -> STR_11(3), STR_10(25), STR_9(3), STR_8(3), 
;;		 -> STR_7(21), STR_6(19), STR_5(22), STR_4(21), 
;;		 -> STR_3(18), STR_2(3), STR_1(2), 
;; Auto vars:     Size  Location     Type
;;  _val            4    7[BANK0 ] struct .
;;  c               1   11[BANK0 ] char 
;;  ap              1    6[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  prec            1    5[BANK0 ] char 
;;  flag            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       8       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2      12       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_putch
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;;		_valadc
;; This function uses a non-reentrant model
;;
psect	text350
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 5
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	537
	
l3123:	
	movlw	(?_printf+02h)&0ffh
	movwf	(printf@ap)
	line	540
	goto	l3175
	line	542
	
l3125:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u521
	goto	u520
u521:
	goto	l3129
u520:
	line	545
	
l3127:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l3175
	line	552
	
l3129:	
	clrf	(printf@flag)
	line	638
	goto	l3139
	line	802
	
l3131:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@c)
	
l3133:	
	incf	(printf@ap),f
	incf	(printf@ap),f
	line	812
	
l3135:	
	movf	(printf@c),w
	fcall	_putch
	line	813
	goto	l3175
	line	638
	
l3139:	
	movf	(printf@f+1),w
	movwf	(??_printf+0)+0+1
	movf	(printf@f),w
	movwf	(??_printf+0)+0
	incf	(printf@f),f
	skipnz
	incf	(printf@f+1),f
	movf	1+(??_printf+0)+0,w
	movwf	btemp+1
	movf	0+(??_printf+0)+0,w
	movwf	fsr0
	fcall	stringtab
	movwf	(printf@c)
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
; rangetable           110     6 (fixed)
; spacedrange          218     9 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1160
	xorlw	99^0	; case 99
	skipnz
	goto	l3131
	xorlw	100^99	; case 100
	skipnz
	goto	l3141
	xorlw	105^100	; case 105
	skipnz
	goto	l3141
	goto	l3135
	opt asmopt_on

	line	1254
	
l3141:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l3143:	
	incf	(printf@ap),f
	incf	(printf@ap),f
	line	1256
	
l3145:	
	btfss	(printf@_val+1),7
	goto	u531
	goto	u530
u531:
	goto	l3151
u530:
	line	1257
	
l3147:	
	movlw	(03h)
	iorwf	(printf@flag),f
	line	1258
	
l3149:	
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	line	1300
	
l3151:	
	clrf	(printf@c)
	incf	(printf@c),f
	line	1301
	
l3155:	
	clrc
	rlf	(printf@c),w
	addlw	low(_dpowers|8000h)
	movwf	fsr0
	movlw	high(_dpowers|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_printf+0)+0
	fcall	stringtab
	movwf	(??_printf+0)+0+1
	movf	1+(??_printf+0)+0,w
	subwf	(printf@_val+1),w
	skipz
	goto	u545
	movf	0+(??_printf+0)+0,w
	subwf	(printf@_val),w
u545:
	skipnc
	goto	u541
	goto	u540
u541:
	goto	l3159
u540:
	goto	l3163
	line	1300
	
l3159:	
	incf	(printf@c),f
	
l3161:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u551
	goto	u550
u551:
	goto	l3155
u550:
	line	1433
	
l3163:	
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u561
	goto	u560
u561:
	goto	l3167
u560:
	line	1434
	
l3165:	
	movlw	(02Dh)
	fcall	_putch
	line	1467
	
l3167:	
	movf	(printf@c),w
	movwf	(printf@prec)
	line	1469
	goto	l3173
	line	1484
	
l3169:	
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	clrc
	rlf	(printf@prec),w
	addlw	low(_dpowers|8000h)
	movwf	fsr0
	movlw	high(_dpowers|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(?___lwdiv)
	fcall	stringtab
	movwf	(?___lwdiv+1)
	movf	(printf@_val+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(printf@_val),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(printf@c)
	line	1516
	
l3171:	
	movf	(printf@c),w
	fcall	_putch
	line	1469
	
l3173:	
	decf	(printf@prec),f
	incf	((printf@prec)),w
	skipz
	goto	u571
	goto	u570
u571:
	goto	l3169
u570:
	line	540
	
l3175:	
	movf	(printf@f+1),w
	movwf	(??_printf+0)+0+1
	movf	(printf@f),w
	movwf	(??_printf+0)+0
	incf	(printf@f),f
	skipnz
	incf	(printf@f+1),f
	movf	1+(??_printf+0)+0,w
	movwf	btemp+1
	movf	0+(??_printf+0)+0,w
	movwf	fsr0
	fcall	stringtab
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u581
	goto	u580
u581:
	goto	l3125
u580:
	line	1533
	
l1160:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	___lwmod
psect	text351,local,class=CODE,delta=2
global __ptext351
__ptext351:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] unsigned int 
;;  dividend        2    9[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text351
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3103:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u481
	goto	u480
u481:
	goto	l3119
u480:
	line	9
	
l3105:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l3109
	line	11
	
l3107:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l3109:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u491
	goto	u490
u491:
	goto	l3107
u490:
	line	15
	
l3111:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u505
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u505:
	skipc
	goto	u501
	goto	u500
u501:
	goto	l3115
u500:
	line	16
	
l3113:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l3115:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l3117:	
	decfsz	(___lwmod@counter),f
	goto	u511
	goto	u510
u511:
	goto	l3111
u510:
	line	20
	
l3119:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l2192:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text352,local,class=CODE,delta=2
global __ptext352
__ptext352:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMMON] unsigned int 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text352
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3077:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3079:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u441
	goto	u440
u441:
	goto	l3099
u440:
	line	11
	
l3081:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l3085
	line	13
	
l3083:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l3085:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u451
	goto	u450
u451:
	goto	l3083
u450:
	line	17
	
l3087:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l3089:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u465
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u465:
	skipc
	goto	u461
	goto	u460
u461:
	goto	l3095
u460:
	line	19
	
l3091:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3093:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3095:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3097:	
	decfsz	(___lwdiv@counter),f
	goto	u471
	goto	u470
u471:
	goto	l3087
u470:
	line	25
	
l3099:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2182:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text353,local,class=CODE,delta=2
global __ptext353
__ptext353:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: FFEFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text353
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3061:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l3063:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u421
	goto	u420
u421:
	goto	l3067
u420:
	line	8
	
l3065:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l3067:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l3069:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l3071:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u431
	goto	u430
u431:
	goto	l3063
u430:
	line	12
	
l3073:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2172:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text354,local,class=CODE,delta=2
global __ptext354
__ptext354:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: FFEFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text354
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 6
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l3049:	
	clrf	(_isdigit$2408)
	
l3051:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u401
	goto	u400
u401:
	goto	l3057
u400:
	
l3053:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u411
	goto	u410
u411:
	goto	l3057
u410:
	
l3055:	
	clrf	(_isdigit$2408)
	incf	(_isdigit$2408),f
	
l3057:	
	rrf	(_isdigit$2408),w
	
	line	15
	
l2160:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_msecbase
psect	text355,local,class=CODE,delta=2
global __ptext355
__ptext355:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 302 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pause
;; This function uses a non-reentrant model
;;
psect	text355
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	line	302
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 6
; Regs used in _msecbase: [wreg]
	line	303
	
l3047:	
;USART3.c: 303: OPTION_REG = 0b11010001;
	movlw	(0D1h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	304
;USART3.c: 304: TMR0 = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	305
;USART3.c: 305: TMR0 = 0x8E;
	movlw	(08Eh)
	movwf	(1)	;volatile
	line	306
;USART3.c: 306: while(!T0IF);
	
l1126:	
	btfss	(90/8),(90)&7
	goto	u391
	goto	u390
u391:
	goto	l1126
u390:
	
l1128:	
	line	307
;USART3.c: 307: T0IF = 0;
	bcf	(90/8),(90)&7
	line	308
	
l1129:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_init_comms
psect	text356,local,class=CODE,delta=2
global __ptext356
__ptext356:

;; *************** function _init_comms *****************
;; Defined at:
;;		line 61 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/60
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text356
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	line	61
	global	__size_of_init_comms
	__size_of_init_comms	equ	__end_of_init_comms-_init_comms
	
_init_comms:	
	opt	stack 7
; Regs used in _init_comms: [wreg+status,2]
	line	62
	
l3041:	
;USART3.c: 62: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	63
;USART3.c: 63: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	64
	
l3043:	
;USART3.c: 64: SPBRG = 0x19;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	66
;USART3.c: 66: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	67
;USART3.c: 67: TXSTA = 0x26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	68
	
l3045:	
;USART3.c: 68: BAUDCTL = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	69
	
l1065:	
	return
	opt stack 0
GLOBAL	__end_of_init_comms
	__end_of_init_comms:
;; =============== function _init_comms ends ============

	signat	_init_comms,88
	global	_getch
psect	text357,local,class=CODE,delta=2
global __ptext357
__ptext357:

;; *************** function _getch *****************
;; Defined at:
;;		line 53 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_pwm
;;		_valadc
;; This function uses a non-reentrant model
;;
psect	text357
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	line	53
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 6
; Regs used in _getch: [wreg]
	line	55
	
l3035:	
	line	56
;USART3.c: 55: while(!RCIF)
	
l1059:	
	line	55
	btfss	(101/8),(101)&7
	goto	u381
	goto	u380
u381:
	goto	l1059
u380:
	line	57
	
l3037:	
;USART3.c: 57: return RCREG;
	movf	(26),w	;volatile
	line	58
	
l1062:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_putch
psect	text358,local,class=CODE,delta=2
global __ptext358
__ptext358:

;; *************** function _putch *****************
;; Defined at:
;;		line 45 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text358
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART3\USART3.c"
	line	45
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 5
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movwf	(putch@byte)
	line	47
	
l3031:	
	line	48
;USART3.c: 47: while(!TXIF)
	
l1053:	
	line	47
	btfss	(100/8),(100)&7
	goto	u371
	goto	u370
u371:
	goto	l1053
u370:
	line	49
	
l3033:	
;USART3.c: 49: TXREG = byte;
	movf	(putch@byte),w
	movwf	(25)	;volatile
	line	50
	
l1056:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
psect	text359,local,class=CODE,delta=2
global __ptext359
__ptext359:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
