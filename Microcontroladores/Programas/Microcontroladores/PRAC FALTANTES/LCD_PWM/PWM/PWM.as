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
# 7 "C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF& 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 8 "C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_init_comms
	FNCALL	_main,_ADC
	FNCALL	_main,_PWM
	FNCALL	_main,_lcd_clear
	FNCALL	_ADC,___awtoft
	FNCALL	_ADC,___fttol
	FNCALL	_ADC,_sprintf
	FNCALL	_ADC,_lcd_goto
	FNCALL	_ADC,_lcd_puts
	FNCALL	_ADC,___ftmul
	FNCALL	_ADC,_pause
	FNCALL	_lcd_init,_pause
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_init,_lcd_clear
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_sprintf,_isdigit
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,___ftge
	FNCALL	_sprintf,___ftneg
	FNCALL	_sprintf,___awdiv
	FNCALL	_sprintf,_scale
	FNCALL	_sprintf,___ftmul
	FNCALL	_sprintf,_fround
	FNCALL	_sprintf,___ftadd
	FNCALL	_sprintf,___fttol
	FNCALL	_sprintf,__div_to_l_
	FNCALL	_sprintf,__tdiv_to_l_
	FNCALL	_sprintf,___lltoft
	FNCALL	_sprintf,___ftsub
	FNCALL	_sprintf,___lldiv
	FNCALL	_sprintf,___llmod
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_pause
	FNCALL	___ftsub,___ftadd
	FNCALL	_scale,___awmod
	FNCALL	_scale,___awdiv
	FNCALL	_scale,___ftmul
	FNCALL	_scale,___bmul
	FNCALL	_fround,___lbmod
	FNCALL	_fround,___bmul
	FNCALL	_fround,___lbdiv
	FNCALL	_fround,___ftmul
	FNCALL	_lcd_write,_pause
	FNCALL	_PWM,_pause
	FNCALL	___lltoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	__npowers_
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
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
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\powers.c"
	line	39
__npowers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xcd
	retlw	0xcc
	retlw	0x3d

	retlw	0xd7
	retlw	0x23
	retlw	0x3c

	retlw	0x12
	retlw	0x83
	retlw	0x3a

	retlw	0xb7
	retlw	0xd1
	retlw	0x38

	retlw	0xc6
	retlw	0x27
	retlw	0x37

	retlw	0x38
	retlw	0x86
	retlw	0x35

	retlw	0xc0
	retlw	0xd6
	retlw	0x33

	retlw	0xcc
	retlw	0x2b
	retlw	0x32

	retlw	0x70
	retlw	0x89
	retlw	0x30

	retlw	0xe7
	retlw	0xdb
	retlw	0x2e

	retlw	0xe5
	retlw	0x3c
	retlw	0x1e

	retlw	0x42
	retlw	0xa2
	retlw	0xd

	global	__powers_
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\powers.c"
	line	7
__powers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x0
	retlw	0x20
	retlw	0x41

	retlw	0x0
	retlw	0xc8
	retlw	0x42

	retlw	0x0
	retlw	0x7a
	retlw	0x44

	retlw	0x40
	retlw	0x1c
	retlw	0x46

	retlw	0x50
	retlw	0xc3
	retlw	0x47

	retlw	0x24
	retlw	0x74
	retlw	0x49

	retlw	0x97
	retlw	0x18
	retlw	0x4b

	retlw	0xbc
	retlw	0xbe
	retlw	0x4c

	retlw	0x6b
	retlw	0x6e
	retlw	0x4e

	retlw	0x3
	retlw	0x15
	retlw	0x50

	retlw	0x79
	retlw	0xad
	retlw	0x60

	retlw	0xf3
	retlw	0x49
	retlw	0x71

	global	_dpowers
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0
	retlw	0
	retlw	0

	retlw	0Ah
	retlw	0
	retlw	0
	retlw	0

	retlw	064h
	retlw	0
	retlw	0
	retlw	0

	retlw	0E8h
	retlw	03h
	retlw	0
	retlw	0

	retlw	010h
	retlw	027h
	retlw	0
	retlw	0

	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0

	retlw	040h
	retlw	042h
	retlw	0Fh
	retlw	0

	retlw	080h
	retlw	096h
	retlw	098h
	retlw	0

	retlw	0
	retlw	0E1h
	retlw	0F5h
	retlw	05h

	retlw	0
	retlw	0CAh
	retlw	09Ah
	retlw	03Bh

	global	__npowers_
	global	__powers_
	global	_dpowers
	global	_vadc1
	global	_vadc2
	global	_pwm1
	global	_pwm2
	global	_carac1
	global	_carac11
	global	_carac2
	global	_carac22
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
	global	_PORTD
_PORTD	set	8
	global	_RCSTA
_RCSTA	set	24
	global	_T2CON
_T2CON	set	18
	global	_TMR0
_TMR0	set	1
	global	_GO_DONE
_GO_DONE	set	249
	global	_RC0
_RC0	set	56
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_T0IF
_T0IF	set	90
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
	
STR_2:	
	retlw	80	;'P'
	retlw	87	;'W'
	retlw	77	;'M'
	retlw	49	;'1'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_6:	
	retlw	80	;'P'
	retlw	87	;'W'
	retlw	77	;'M'
	retlw	50	;'2'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_3:	
	retlw	37	;'%'
	retlw	49	;'1'
	retlw	46	;'.'
	retlw	51	;'3'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_4:	
	retlw	53	;'5'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_8:	
	retlw	54	;'6'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_1:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
STR_7	equ	STR_3+0
STR_5	equ	STR_1+0
	file	"PWM.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_vadc1:
       ds      3

_vadc2:
       ds      3

_pwm1:
       ds      2

_pwm2:
       ds      2

_carac1:
       ds      5

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_carac11:
       ds      5

_carac2:
       ds      5

_carac22:
       ds      5

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+0Fh)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+0Fh)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	_sprintf$1919
_sprintf$1919:	; 4 bytes @ 0x0
	ds	4
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x4
	ds	1
	global	sprintf@integ
sprintf@integ:	; 3 bytes @ 0x5
	ds	3
	global	sprintf@flag
sprintf@flag:	; 2 bytes @ 0x8
	ds	2
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0xA
	ds	2
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0xC
	ds	4
	global	sprintf@exp
sprintf@exp:	; 2 bytes @ 0x10
	ds	2
	global	sprintf@fval
sprintf@fval:	; 3 bytes @ 0x12
	ds	3
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x15
	ds	1
	global	sprintf@prec
sprintf@prec:	; 2 bytes @ 0x16
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x18
	ds	1
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_ADC
?_ADC:	; 0 bytes @ 0x0
	global	?_PWM
?_PWM:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
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
	global	?_init_comms
?_init_comms:	; 0 bytes @ 0x0
	global	??_init_comms
??_init_comms:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x0
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	_isdigit$2427
_isdigit$2427:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	global	pause@usvalue
pause@usvalue:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0x0
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
	global	??_pause
??_pause:	; 0 bytes @ 0x2
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x2
	global	pause@x
pause@x:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x3
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x3
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x3
	ds	1
	global	??_PWM
??_PWM:	; 0 bytes @ 0x4
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x4
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x5
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x5
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x5
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x5
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x5
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	global	lcd_puts@s
lcd_puts@s:	; 2 bytes @ 0x5
	ds	1
	global	??__tdiv_to_l_
??__tdiv_to_l_:	; 0 bytes @ 0x6
	global	??__div_to_l_
??__div_to_l_:	; 0 bytes @ 0x6
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x6
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x6
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x6
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x6
	ds	1
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x7
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x8
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	1
	global	?___bmul
?___bmul:	; 1 bytes @ 0x9
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x9
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0xA
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xA
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0xA
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xA
	ds	1
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xB
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0xB
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xB
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xB
	ds	1
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0xC
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xC
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xC
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xC
	ds	1
	global	??___llmod
??___llmod:	; 0 bytes @ 0xD
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0xD
	ds	1
	global	??_fround
??_fround:	; 0 bytes @ 0xE
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x0
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x0
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x0
	ds	4
	global	??___fttol
??___fttol:	; 0 bytes @ 0x4
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0x4
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0x4
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x4
	ds	1
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x5
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0x5
	ds	2
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x7
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x8
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xC
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xD
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xD
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x10
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x13
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x16
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x17
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1A
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1B
	ds	1
	global	?_scale
?_scale:	; 3 bytes @ 0x1C
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x1C
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x1C
	ds	3
	global	??_scale
??_scale:	; 0 bytes @ 0x1F
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x1F
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x22
	ds	1
	global	_scale$2868
_scale$2868:	; 3 bytes @ 0x23
	ds	2
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x25
	ds	1
	global	scale@scl
scale@scl:	; 1 bytes @ 0x26
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x26
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x27
	ds	1
	global	?_fround
?_fround:	; 3 bytes @ 0x28
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x28
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x28
	ds	3
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x2B
	global	_fround$2867
_fround$2867:	; 3 bytes @ 0x2B
	ds	3
	global	_fround$2866
_fround$2866:	; 3 bytes @ 0x2E
	ds	3
	global	fround@prec
fround@prec:	; 1 bytes @ 0x31
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x32
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x32
	ds	4
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x36
	ds	5
	global	??_ADC
??_ADC:	; 0 bytes @ 0x3B
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x3C
	ds	2
;;Data sizes: Strings 27, constant 118, data 0, bss 30, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     62      77
;; BANK1           80     25      40
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 0
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___lltoft	float  size(1) Largest target is 0
;;
;; ?__tdiv_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?__div_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 40
;;		 -> dpowers(CODE[40]), 
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_scale	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_fround	unsigned int  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 6
;;		 -> STR_7(CODE[6]), STR_5(CODE[3]), STR_3(CODE[6]), STR_1(CODE[3]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 5
;;		 -> carac2(BANK1[5]), carac22(BANK1[5]), carac1(BANK0[5]), carac11(BANK1[5]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S1908$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 6
;;		 -> STR_8(CODE[3]), carac2(BANK1[5]), STR_6(CODE[6]), carac22(BANK1[5]), 
;;		 -> STR_4(CODE[3]), carac1(BANK0[5]), STR_2(CODE[6]), carac11(BANK1[5]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _lcd_init->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _lcd_goto->_lcd_write
;;   _sprintf->___awdiv
;;   _sprintf->__div_to_l_
;;   _sprintf->___llmod
;;   _lcd_clear->_lcd_write
;;   _scale->___awdiv
;;   _lcd_write->_pause
;;   _PWM->_pause
;;   ___lltoft->___ftpack
;;   ___awtoft->___ftpack
;;   ___ftmul->___awdiv
;;   ___llmod->___lldiv
;;   ___awdiv->___awmod
;;   ___fttol->___awdiv
;;   ___lbdiv->___lbmod
;;   ___bmul->___lbdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_ADC
;;   _ADC->_sprintf
;;   _sprintf->_fround
;;   ___ftsub->___ftadd
;;   _scale->___ftmul
;;   _fround->___ftadd
;;   ___ftmul->___fttol
;;   ___ftadd->___ftmul
;;
;; Critical Paths under _main in BANK1
;;
;;   _ADC->_sprintf
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0   12271
;;                                             60 BANK0      2     2      0
;;                           _lcd_init
;;                         _init_comms
;;                                _ADC
;;                                _PWM
;;                          _lcd_clear
;; ---------------------------------------------------------------------------------
;; (1) _ADC                                                  1     1      0   11794
;;                                             59 BANK0      1     1      0
;;                           ___awtoft
;;                            ___fttol
;;                            _sprintf
;;                           _lcd_goto
;;                           _lcd_puts
;;                            ___ftmul
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             1     1      0     295
;;                                              5 COMMON     1     1      0
;;                              _pause
;;                          _lcd_write
;;                          _lcd_clear
;; ---------------------------------------------------------------------------------
;; (2) _lcd_puts                                             2     0      2     135
;;                                              5 COMMON     2     0      2
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (2) _lcd_goto                                             1     1      0     112
;;                                              5 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (2) _sprintf                                             38    34      4   10414
;;                                             50 BANK0      9     5      4
;;                                              0 BANK1     25    25      0
;;                            _isdigit
;;                             ___wmul
;;                             ___ftge
;;                            ___ftneg
;;                            ___awdiv
;;                              _scale
;;                            ___ftmul
;;                             _fround
;;                            ___ftadd
;;                            ___fttol
;;                         __div_to_l_
;;                        __tdiv_to_l_
;;                           ___lltoft
;;                            ___ftsub
;;                            ___lldiv
;;                            ___llmod
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0     136
;;                          _lcd_write
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (3) ___ftsub                                              6     0      6    1094
;;                                             40 BANK0      6     0      6
;;                            ___ftadd
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _scale                                               14    11      3    1688
;;                                             28 BANK0     11     8      3
;;                            ___awmod
;;                            ___awdiv
;;                            ___ftmul
;;                             ___bmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _fround                                              13    10      3    1215
;;                                             40 BANK0     10     7      3
;;                            ___lbmod
;;                             ___bmul
;;                            ___lbdiv
;;                            ___ftmul
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            1     1      0      90
;;                                              4 COMMON     1     1      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _PWM                                                  2     2      0      46
;;                                              4 COMMON     2     2      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (3) ___lltoft                                             5     1      4     278
;;                                              8 COMMON     5     1      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             4     1      3     300
;;                                              8 COMMON     4     1      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             15     9      6     535
;;                                             13 BANK0     15     9      6
;;                           ___ftpack
;;                            ___fttol (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftadd                                             12     6      6    1049
;;                                             28 BANK0     12     6      6
;;                           ___ftpack
;;                            ___lbmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___ftmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _pause                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (4) ___awmod                                              6     2      4     296
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___lldiv                                             13     5      8     162
;;                                              0 COMMON    13     5      8
;; ---------------------------------------------------------------------------------
;; (3) ___ftge                                               6     0      6     136
;;                                              0 COMMON     6     0      6
;; ---------------------------------------------------------------------------------
;; (3) ___ftneg                                              3     0      3      45
;;                                              0 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (3) ___llmod                                              9     1      8     159
;;                                             13 COMMON     1     1      0
;;                                              0 BANK0      8     0      8
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___awdiv                                              8     4      4     300
;;                                              6 COMMON     8     4      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___fttol                                             13     9      4     252
;;                                              0 BANK0     13     9      4
;;                           ___ftpack (ARG)
;;                            ___awmod (ARG)
;;                            ___awdiv (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (4) ___lbmod                                              5     4      1     159
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (4) ___lbdiv                                              4     3      1     162
;;                                              5 COMMON     4     3      1
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (4) ___bmul                                               3     2      1      68
;;                                              9 COMMON     3     2      1
;;                            ___lbmod (ARG)
;;                            ___lbdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) __div_to_l_                                          20    14      6     446
;;                                              0 COMMON    14     8      6
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (3) __tdiv_to_l_                                         15     9      6     303
;;                                              0 COMMON     9     3      6
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (3) _isdigit                                              2     2      0      68
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _init_comms                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
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
;;   _ADC
;;     ___awtoft
;;       ___ftpack
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;     _sprintf
;;       _isdigit
;;       ___wmul
;;       ___ftge
;;       ___ftneg
;;       ___awdiv
;;         ___awmod (ARG)
;;       _scale
;;         ___awmod
;;         ___awdiv
;;           ___awmod (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;         ___bmul
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;       _fround
;;         ___lbmod
;;         ___bmul
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv
;;           ___lbmod (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;         ___ftadd (ARG)
;;           ___ftpack
;;           ___lbmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___lbmod (ARG)
;;                 ___lbdiv (ARG)
;;                   ___lbmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;             ___lbmod (ARG)
;;       ___ftadd
;;         ___ftpack
;;         ___lbmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;       ___fttol
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;       __div_to_l_
;;       __tdiv_to_l_
;;       ___lltoft
;;         ___ftpack
;;       ___ftsub
;;         ___ftadd
;;           ___ftpack
;;           ___lbmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___lbmod (ARG)
;;                 ___lbdiv (ARG)
;;                   ___lbmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;             ___lbmod (ARG)
;;         ___lltoft (ARG)
;;           ___ftpack
;;       ___lldiv
;;       ___llmod
;;         ___lldiv (ARG)
;;     _lcd_goto
;;       _lcd_write
;;         _pause
;;           _msecbase
;;     _lcd_puts
;;       _lcd_write
;;         _pause
;;           _msecbase
;;     ___ftmul
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;       ___lbmod (ARG)
;;     _pause
;;       _msecbase
;;   _PWM
;;     _pause
;;       _msecbase
;;   _lcd_clear
;;     _lcd_write
;;       _pause
;;         _msecbase
;;     _pause
;;       _msecbase
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      83       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     3E      4D       5       96.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     19      28       7       50.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      88      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 74 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_init
;;		_init_comms
;;		_ADC
;;		_PWM
;;		_lcd_clear
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
	line	74
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	76
	
l5933:	
;PWM.c: 76: ANSEL = 0x60;
	movlw	(060h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	77
	
l5935:	
;PWM.c: 77: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	78
	
l5937:	
;PWM.c: 78: TRISB = 0xFF;
	movlw	(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	79
;PWM.c: 79: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	81
;PWM.c: 81: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	82
;PWM.c: 82: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	83
	
l5939:	
;PWM.c: 83: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	84
	
l5941:	
;PWM.c: 84: T2CON = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	85
	
l5943:	
;PWM.c: 85: PR2 = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	87
	
l5945:	
;PWM.c: 87: CCPR1L = 0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	88
	
l5947:	
;PWM.c: 88: CCP1CON = 0x0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	90
	
l5949:	
;PWM.c: 90: lcd_init();
	fcall	_lcd_init
	line	92
	
l5951:	
;PWM.c: 92: init_comms();
	fcall	_init_comms
	line	94
	
l5953:	
;PWM.c: 94: ADFM = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1279/8)^080h,(1279)&7
	line	100
	
l5955:	
;PWM.c: 100: ADC();
	fcall	_ADC
	line	102
	
l5957:	
;PWM.c: 102: PWM();
	fcall	_PWM
	line	104
	
l5959:	
;PWM.c: 104: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
u3297:
	decfsz	((??_main+0)+0),f
	goto	u3297
	decfsz	((??_main+0)+0+1),f
	goto	u3297
	nop2
opt asmopt_on

	line	106
	
l5961:	
;PWM.c: 106: lcd_clear();
	fcall	_lcd_clear
	line	108
	
l5963:	
;PWM.c: 108: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
u3307:
	decfsz	((??_main+0)+0),f
	goto	u3307
	decfsz	((??_main+0)+0+1),f
	goto	u3307
	nop2
opt asmopt_on

	goto	l5955
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	111
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ADC
psect	text556,local,class=CODE,delta=2
global __ptext556
__ptext556:

;; *************** function _ADC *****************
;; Defined at:
;;		line 114 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtoft
;;		___fttol
;;		_sprintf
;;		_lcd_goto
;;		_lcd_puts
;;		___ftmul
;;		_pause
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text556
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
	line	114
	global	__size_of_ADC
	__size_of_ADC	equ	__end_of_ADC-_ADC
	
_ADC:	
	opt	stack 3
; Regs used in _ADC: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	115
	
l5897:	
;PWM.c: 115: ADCON0=0xD5;
	movlw	(0D5h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	116
	
l5899:	
;PWM.c: 116: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	117
;PWM.c: 117: while(GO_DONE);
	
l1082:	
	btfsc	(249/8),(249)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l1082
u3250:
	line	118
	
l5901:	
;PWM.c: 118: vadc1=(ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(?___awtoft)
	clrf	(?___awtoft+1)
	clrc
	rlf	(?___awtoft),f
	rlf	(?___awtoft+1),f
	clrc
	rlf	(?___awtoft),f
	rlf	(?___awtoft+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_ADC+0)+0
	movlw	06h
u3265:
	clrc
	rrf	(??_ADC+0)+0,f
	addlw	-1
	skipz
	goto	u3265
	movf	0+(??_ADC+0)+0,w
	iorwf	(?___awtoft),f
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	(_vadc1)
	movf	(1+(?___awtoft)),w
	movwf	(_vadc1+1)
	movf	(2+(?___awtoft)),w
	movwf	(_vadc1+2)
	line	119
;PWM.c: 119: pwm1=vadc1;
	movf	(_vadc1),w
	movwf	(?___fttol)
	movf	(_vadc1+1),w
	movwf	(?___fttol+1)
	movf	(_vadc1+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	movwf	(_pwm1+1)
	movf	0+(((0+(?___fttol)))),w
	movwf	(_pwm1)
	line	120
	
l5903:	
;PWM.c: 120: sprintf(carac11, "%d",pwm1);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_pwm1+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_pwm1),w
	movwf	0+(?_sprintf)+01h
	movlw	(_carac11)&0ffh
	fcall	_sprintf
	line	121
	
l5905:	
;PWM.c: 121: lcd_goto(0x47);
	movlw	(047h)
	fcall	_lcd_goto
	line	122
;PWM.c: 122: lcd_puts("PWM1:");
	movlw	low((STR_2-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	123
;PWM.c: 123: lcd_puts(carac11);
	movlw	(_carac11&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	124
	
l5907:	
;PWM.c: 124: vadc1 = vadc1*0.0048875855327468;
	movlw	0x28
	movwf	(?___ftmul)
	movlw	0xa0
	movwf	(?___ftmul+1)
	movlw	0x3b
	movwf	(?___ftmul+2)
	movf	(_vadc1),w
	movwf	0+(?___ftmul)+03h
	movf	(_vadc1+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_vadc1+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_vadc1)
	movf	(1+(?___ftmul)),w
	movwf	(_vadc1+1)
	movf	(2+(?___ftmul)),w
	movwf	(_vadc1+2)
	line	125
	
l5909:	
;PWM.c: 125: sprintf(carac1, "%1.3f",vadc1);
	movlw	((STR_3-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_vadc1),w
	movwf	0+(?_sprintf)+01h
	movf	(_vadc1+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_vadc1+2),w
	movwf	2+(?_sprintf)+01h
	movlw	(_carac1)&0ffh
	fcall	_sprintf
	line	126
;PWM.c: 126: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	127
	
l5911:	
;PWM.c: 127: lcd_puts("5:");
	movlw	low((STR_4-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	128
	
l5913:	
;PWM.c: 128: lcd_puts(carac1);
	movlw	(_carac1&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x0/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	129
;PWM.c: 129: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	131
	
l5915:	
;PWM.c: 131: ADCON0=0xD9;
	movlw	(0D9h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	132
	
l5917:	
;PWM.c: 132: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	133
;PWM.c: 133: while(GO_DONE);
	
l1085:	
	btfsc	(249/8),(249)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l1085
u3270:
	line	134
	
l5919:	
;PWM.c: 134: vadc2=(ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(?___awtoft)
	clrf	(?___awtoft+1)
	clrc
	rlf	(?___awtoft),f
	rlf	(?___awtoft+1),f
	clrc
	rlf	(?___awtoft),f
	rlf	(?___awtoft+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_ADC+0)+0
	movlw	06h
u3285:
	clrc
	rrf	(??_ADC+0)+0,f
	addlw	-1
	skipz
	goto	u3285
	movf	0+(??_ADC+0)+0,w
	iorwf	(?___awtoft),f
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	(_vadc2)
	movf	(1+(?___awtoft)),w
	movwf	(_vadc2+1)
	movf	(2+(?___awtoft)),w
	movwf	(_vadc2+2)
	line	135
;PWM.c: 135: pwm2=vadc2;
	movf	(_vadc2),w
	movwf	(?___fttol)
	movf	(_vadc2+1),w
	movwf	(?___fttol+1)
	movf	(_vadc2+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	movwf	(_pwm2+1)
	movf	0+(((0+(?___fttol)))),w
	movwf	(_pwm2)
	line	136
	
l5921:	
;PWM.c: 136: sprintf(carac22, "%d",pwm2);
	movlw	((STR_5-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_pwm2+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_pwm2),w
	movwf	0+(?_sprintf)+01h
	movlw	(_carac22)&0ffh
	fcall	_sprintf
	line	137
	
l5923:	
;PWM.c: 137: lcd_goto(0x07);
	movlw	(07h)
	fcall	_lcd_goto
	line	138
;PWM.c: 138: lcd_puts("PWM2:");
	movlw	low((STR_6-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	139
;PWM.c: 139: lcd_puts(carac22);
	movlw	(_carac22&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	140
	
l5925:	
;PWM.c: 140: vadc2 = vadc2*0.0048875855327468;
	movlw	0x28
	movwf	(?___ftmul)
	movlw	0xa0
	movwf	(?___ftmul+1)
	movlw	0x3b
	movwf	(?___ftmul+2)
	movf	(_vadc2),w
	movwf	0+(?___ftmul)+03h
	movf	(_vadc2+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_vadc2+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_vadc2)
	movf	(1+(?___ftmul)),w
	movwf	(_vadc2+1)
	movf	(2+(?___ftmul)),w
	movwf	(_vadc2+2)
	line	141
	
l5927:	
;PWM.c: 141: sprintf(carac2, "%1.3f",vadc2);
	movlw	((STR_7-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_vadc2),w
	movwf	0+(?_sprintf)+01h
	movf	(_vadc2+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_vadc2+2),w
	movwf	2+(?_sprintf)+01h
	movlw	(_carac2)&0ffh
	fcall	_sprintf
	line	142
;PWM.c: 142: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	143
	
l5929:	
;PWM.c: 143: lcd_puts("6:");
	movlw	low((STR_8-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	144
	
l5931:	
;PWM.c: 144: lcd_puts(carac2);
	movlw	(_carac2&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	145
;PWM.c: 145: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	147
	
l1088:	
	return
	opt stack 0
GLOBAL	__end_of_ADC
	__end_of_ADC:
;; =============== function _ADC ends ============

	signat	_ADC,88
	global	_lcd_init
psect	text557,local,class=CODE,delta=2
global __ptext557
__ptext557:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 195 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  init_value      1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
psect	text557
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
	line	195
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	198
	
l5857:	
	line	200
	
l5859:	
;PWM.c: 200: RC3 = 0;
	bcf	(59/8),(59)&7
	line	201
	
l5861:	
;PWM.c: 201: RC0 = 0;
	bcf	(56/8),(56)&7
	line	202
	
l5863:	
;PWM.c: 202: RC4 = 0;
	bcf	(60/8),(60)&7
	line	204
	
l5865:	
;PWM.c: 204: pause(15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	205
	
l5867:	
;PWM.c: 205: PORTD = init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	206
	
l5869:	
;PWM.c: 206: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l5871:	
	bcf	(56/8),(56)&7
	line	207
;PWM.c: 207: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	208
	
l5873:	
;PWM.c: 208: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l5875:	
	bcf	(56/8),(56)&7
	line	209
;PWM.c: 209: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	210
	
l5877:	
;PWM.c: 210: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l5879:	
	bcf	(56/8),(56)&7
	line	211
;PWM.c: 211: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	212
	
l5881:	
;PWM.c: 212: PORTD= 2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	213
	
l5883:	
;PWM.c: 213: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l5885:	
	bcf	(56/8),(56)&7
	line	215
	
l5887:	
;PWM.c: 215: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	216
	
l5889:	
;PWM.c: 216: lcd_write(0x0C);
	movlw	(0Ch)
	fcall	_lcd_write
	line	217
	
l5891:	
;PWM.c: 217: lcd_write(0x0F);
	movlw	(0Fh)
	fcall	_lcd_write
	line	218
	
l5893:	
;PWM.c: 218: lcd_clear();
	fcall	_lcd_clear
	line	219
	
l5895:	
;PWM.c: 219: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	220
	
l1112:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_puts
psect	text558,local,class=CODE,delta=2
global __ptext558
__ptext558:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 179 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
;; Parameters:    Size  Location     Type
;;  s               2    5[COMMON] PTR const unsigned char 
;;		 -> STR_8(3), carac2(5), STR_6(6), carac22(5), 
;;		 -> STR_4(3), carac1(5), STR_2(6), carac11(5), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_ADC
;; This function uses a non-reentrant model
;;
psect	text558
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
	line	179
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 3
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	180
	
l5849:	
;PWM.c: 180: RC3 = 1;
	bsf	(59/8),(59)&7
	line	181
;PWM.c: 181: while(*s)
	goto	l5855
	line	182
	
l5851:	
;PWM.c: 182: lcd_write(*s++);
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	
l5853:	
	incf	(lcd_puts@s),f
	skipnz
	incf	(lcd_puts@s+1),f
	line	181
	
l5855:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l5851
u3240:
	line	183
	
l1103:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_goto
psect	text559,local,class=CODE,delta=2
global __ptext559
__ptext559:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 190 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/20
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_ADC
;; This function uses a non-reentrant model
;;
psect	text559
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
	line	190
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 3
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	191
	
l5845:	
;PWM.c: 191: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(59/8),(59)&7
	line	192
	
l5847:	
;PWM.c: 192: lcd_write(0x80 + pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	193
	
l1109:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_sprintf
psect	text560,local,class=CODE,delta=2
global __ptext560
__ptext560:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> carac2(5), carac22(5), carac1(5), carac11(5), 
;;  f               1   50[BANK0 ] PTR const unsigned char 
;;		 -> STR_7(6), STR_5(3), STR_3(6), STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  sp              1   21[BANK1 ] PTR unsigned char 
;;		 -> carac2(5), carac22(5), carac1(5), carac11(5), 
;;  _val            4   12[BANK1 ] struct .
;;  fval            3   18[BANK1 ] struct .
;;  integ           3    5[BANK1 ] struct .
;;  ival            3    0        struct .
;;  prec            2   22[BANK1 ] int 
;;  exp             2   16[BANK1 ] int 
;;  width           2   10[BANK1 ] int 
;;  flag            2    8[BANK1 ] unsigned short 
;;  c               1   24[BANK1 ] char 
;;  ap              1    4[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   50[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0      25       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       9      25       0       0
;;Total ram usage:       34 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_isdigit
;;		___wmul
;;		___ftge
;;		___ftneg
;;		___awdiv
;;		_scale
;;		___ftmul
;;		_fround
;;		___ftadd
;;		___fttol
;;		__div_to_l_
;;		__tdiv_to_l_
;;		___lltoft
;;		___ftsub
;;		___lldiv
;;		___llmod
;; This function is called by:
;;		_ADC
;; This function uses a non-reentrant model
;;
psect	text560
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@sp)^080h
	
l5557:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)^080h
	line	540
	goto	l5839
	line	542
	
l5559:	
	movf	(sprintf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u2761
	goto	u2760
u2761:
	goto	l5565
u2760:
	line	545
	
l5561:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(sprintf@c)^080h,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5563:	
	incf	(sprintf@sp)^080h,f
	line	546
	goto	l5839
	line	550
	
l5565:	
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	552
	clrf	(sprintf@flag)^080h
	clrf	(sprintf@flag+1)^080h
	line	601
	
l5567:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u2771
	goto	u2770
u2771:
	goto	l5577
u2770:
	line	602
	
l5569:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	604
	
l5571:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width+1)^080h,w
	movwf	(?___wmul+1)
	movf	(sprintf@width)^080h,w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??_sprintf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_sprintf+0)+0
	movf	0+(??_sprintf+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@width)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(sprintf@width)^080h
	
l5573:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(sprintf@f),f
	line	605
	
l5575:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u2781
	goto	u2780
u2781:
	goto	l5571
u2780:
	line	614
	
l5577:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l5591
u2790:
	line	615
	
l5579:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(sprintf@flag)^080h+(14/8),(14)&7
	line	616
	
l5581:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(sprintf@f),f
	line	624
	
l5583:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	625
	goto	l5589
	line	626
	
l5585:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec+1)^080h,w
	movwf	(?___wmul+1)
	movf	(sprintf@prec)^080h,w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??_sprintf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_sprintf+0)+0
	movf	0+(??_sprintf+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@prec)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(sprintf@prec)^080h
	
l5587:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(sprintf@f),f
	line	625
	
l5589:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u2801
	goto	u2800
u2801:
	goto	l5585
u2800:
	goto	l5597
	line	629
	
l5591:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	631
	
l5593:	
	bsf	(sprintf@flag)^080h+(12/8),(12)&7
	goto	l5597
	line	665
	
l1173:	
	line	666
	bsf	(sprintf@flag)^080h+(10/8),(10)&7
	line	667
	goto	l5599
	line	638
	
l5597:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@c)^080h
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
	goto	l5841
	xorlw	100^0	; case 100
	skipnz
	goto	l5599
	xorlw	102^100	; case 102
	skipnz
	goto	l1173
	xorlw	105^102	; case 105
	skipnz
	goto	l5599
	goto	l5839
	opt asmopt_on

	line	828
	
l5599:	
	movlw	low(0700h)
	andwf	(sprintf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	high(0700h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(sprintf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(??_sprintf+0)+0
	movf	1+(??_sprintf+0)+0,w
	iorwf	0+(??_sprintf+0)+0,w
	skipnz
	goto	u2811
	goto	u2810
u2811:
	goto	l5759
u2810:
	line	830
	
l5601:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(sprintf@flag+1)^080h,(12)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l5605
u2820:
	line	832
	
l5603:	
	movlw	06h
	movwf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	833
	
l5605:	
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@fval)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+2)^080h
	
l5607:	
	movlw	(03h)
	addwf	(sprintf@ap)^080h,f
	line	834
	
l5609:	
	movf	(sprintf@fval)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@fval+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(?___ftge+2)
	clrf	0+(?___ftge)+03h
	clrf	1+(?___ftge)+03h
	clrf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u2831
	goto	u2830
u2831:
	goto	l5615
u2830:
	line	835
	
l5611:	
	movf	(sprintf@fval)^080h,w
	movwf	(?___ftneg)
	movf	(sprintf@fval+1)^080h,w
	movwf	(?___ftneg+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(sprintf@fval)^080h
	movf	(1+(?___ftneg)),w
	movwf	(sprintf@fval+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(sprintf@fval+2)^080h
	line	836
	
l5613:	
	movlw	03h
	iorwf	(sprintf@flag)^080h,f
	line	838
	
l5615:	
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	line	839
	
l5617:	
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u2841
	goto	u2840
u2841:
	goto	l5647
u2840:
	line	840
	
l5619:	
	movlw	low(sprintf@fval)
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+3
	movlw	0Fh
u2855:
	clrc
	rrf	(??_sprintf+0)+3,f
	rrf	(??_sprintf+0)+2,f
	rrf	(??_sprintf+0)+1,f
	rrf	(??_sprintf+0)+0,f
u2850:
	addlw	-1
	skipz
	goto	u2855
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@exp)^080h
	
l5621:	
	movlw	0FFh
	andwf	(sprintf@exp)^080h,f
	clrf	(sprintf@exp+1)^080h
	
l5623:	
	movlw	-126
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	841
	
l5625:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	842
	
l5627:	
	movlw	03h
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movf	(sprintf@exp+1)^080h,w
	movwf	1+(?___wmul)+02h
	movf	(sprintf@exp)^080h,w
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(sprintf@exp+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(sprintf@exp)^080h
	line	843
	
l5629:	
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(sprintf@exp+1)^080h,w
	movwf	1+(?___awdiv)+02h
	movf	(sprintf@exp)^080h,w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(sprintf@exp+1)^080h
	movf	(0+(?___awdiv)),w
	movwf	(sprintf@exp)^080h
	line	844
	
l5631:	
	btfss	(sprintf@exp+1)^080h,7
	goto	u2861
	goto	u2860
u2861:
	goto	l5635
u2860:
	line	845
	
l5633:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	849
	
l5635:	
	decf	(sprintf@exp)^080h,w
	xorlw	0ffh
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+2)^080h
	line	850
	
l5637:	
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+2)^080h
	line	851
	
l5639:	
	movf	(sprintf@integ)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x80
	movwf	1+(?___ftge)+03h
	movlw	0x3f
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u2871
	goto	u2870
u2871:
	goto	l5643
u2870:
	line	852
	
l5641:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	goto	l5647
	line	853
	
l5643:	
	movf	(sprintf@integ)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x20
	movwf	1+(?___ftge)+03h
	movlw	0x41
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u2881
	goto	u2880
u2881:
	goto	l5647
u2880:
	line	854
	
l5645:	
	incf	(sprintf@exp)^080h,f
	skipnz
	incf	(sprintf@exp+1)^080h,f
	line	1115
	
l5647:	
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2895
	movlw	low(0Dh)
	subwf	(sprintf@prec)^080h,w
u2895:

	skipnc
	goto	u2891
	goto	u2890
u2891:
	goto	l5651
u2890:
	line	1116
	
l5649:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	fcall	_fround
	movf	(0+(?_fround)),w
	movwf	(?___ftadd)
	movf	(1+(?_fround)),w
	movwf	(?___ftadd+1)
	movf	(2+(?_fround)),w
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval+2)^080h
	line	1119
	
l5651:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2905
	movlw	low(0Ah)
	subwf	(sprintf@exp)^080h,w
u2905:

	skipnc
	goto	u2901
	goto	u2900
u2901:
	goto	l5659
u2900:
	
l5653:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u2911
	goto	u2910
u2911:
	goto	l5675
u2910:
	
l5655:	
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	iorwf	(2+(?___fttol)),w
	iorwf	(1+(?___fttol)),w
	iorwf	(0+(?___fttol)),w
	skipz
	goto	u2921
	goto	u2920
u2921:
	goto	l5675
u2920:
	
l5657:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2935
	movlw	low(02h)
	subwf	(sprintf@exp)^080h,w
u2935:

	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l5675
u2930:
	line	1123
	
l5659:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x70
	movwf	0+(?___ftge)+03h
	movlw	0x89
	movwf	1+(?___ftge)+03h
	movlw	0x40
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u2941
	goto	u2940
u2941:
	goto	l5663
u2940:
	line	1124
	
l5661:	
	movlw	-9
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	1125
	goto	l5665
	line	1126
	
l5663:	
	movlw	-8
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	1128
	
l5665:	
	movf	(sprintf@exp)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+2)^080h
	line	1129
	
l5669:	
	movf	(sprintf@fval)^080h,w
	movwf	(?__tdiv_to_l_)
	movf	(sprintf@fval+1)^080h,w
	movwf	(?__tdiv_to_l_+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(?__tdiv_to_l_+2)
	movf	(sprintf@integ)^080h,w
	movwf	0+(?__tdiv_to_l_)+03h
	movf	(sprintf@integ+1)^080h,w
	movwf	1+(?__tdiv_to_l_)+03h
	movf	(sprintf@integ+2)^080h,w
	movwf	2+(?__tdiv_to_l_)+03h
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_sprintf$1919+3)^080h
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1919+2)^080h
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1919+1)^080h
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1919)^080h

	
l5671:	
	movf	(_sprintf$1919+3)^080h,w
	movwf	(sprintf@_val+3)^080h
	movf	(_sprintf$1919+2)^080h,w
	movwf	(sprintf@_val+2)^080h
	movf	(_sprintf$1919+1)^080h,w
	movwf	(sprintf@_val+1)^080h
	movf	(_sprintf$1919)^080h,w
	movwf	(sprintf@_val)^080h

	line	1132
	
l5673:	
	clrf	(sprintf@fval)^080h
	clrf	(sprintf@fval+1)^080h
	clrf	(sprintf@fval+2)^080h
	line	1133
	goto	l5679
	line	1134
	
l5675:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val)^080h

	line	1135
	movf	(sprintf@_val+3)^080h,w
	movwf	(?___lltoft+3)
	movf	(sprintf@_val+2)^080h,w
	movwf	(?___lltoft+2)
	movf	(sprintf@_val+1)^080h,w
	movwf	(?___lltoft+1)
	movf	(sprintf@_val)^080h,w
	movwf	(?___lltoft)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftsub)
	movf	(1+(?___lltoft)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___lltoft)),w
	movwf	(?___ftsub+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval+2)^080h
	line	1136
	
l5677:	
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	line	1139
	
l5679:	
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	line	1140
	
l5685:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_sprintf+1)+0)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+1)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+2)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+3)
	movf	3+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+3)^080h,w
	skipz
	goto	u2955
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+2)^080h,w
	skipz
	goto	u2955
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u2955
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val)^080h,w
u2955:
	skipnc
	goto	u2951
	goto	u2950
u2951:
	goto	l5689
u2950:
	goto	l5693
	line	1139
	
l5689:	
	incf	(sprintf@c)^080h,f
	
l5691:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u2961
	goto	u2960
u2961:
	goto	l5685
u2960:
	line	1145
	
l5693:	
	movf	(sprintf@prec)^080h,w
	addwf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec+1)^080h,w
	skipnc
	incf	(sprintf@prec+1)^080h,w
	addlw	0
	btfsc	(sprintf@c)^080h,7
	addlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	0+(??_sprintf+0)+0,w
	movwf	(??_sprintf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@exp+1)^080h,w
	skipnc
	incf	(sprintf@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	1+(??_sprintf+0)+0,w
	movwf	1+(??_sprintf+2)+0
	movf	0+(??_sprintf+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@width)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(sprintf@width+1)^080h,f
	subwf	(sprintf@width+1)^080h,f
	line	1150
	
l5695:	
	movf	(sprintf@prec+1)^080h,w
	iorwf	(sprintf@prec)^080h,w
	skipnz
	goto	u2971
	goto	u2970
u2971:
	goto	l5699
u2970:
	line	1151
	
l5697:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	line	1152
	
l5699:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l5709
u2980:
	line	1153
	
l5701:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	goto	l5709
	line	1182
	
l5703:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(020h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5705:	
	incf	(sprintf@sp)^080h,f
	goto	l5701
	line	1181
	
l5709:	
	movf	(sprintf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2995
	movlw	low(01h)
	subwf	(sprintf@width)^080h,w
u2995:

	skipnc
	goto	u2991
	goto	u2990
u2991:
	goto	l5703
u2990:
	line	1189
	
l5711:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l5721
u3000:
	line	1191
	
l5713:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5715:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(sprintf@sp)^080h,f
	goto	l5721
	line	1201
	
l5717:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(sprintf@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(sprintf@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(sprintf@_val)^080h,w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_sprintf+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l5715
	line	1197
	
l5721:	
	decf	(sprintf@c)^080h,f
	incf	((sprintf@c)^080h),w
	skipz
	goto	u3011
	goto	u3010
u3011:
	goto	l5717
u3010:
	goto	l5729
	line	1205
	
l5723:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(030h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5725:	
	incf	(sprintf@sp)^080h,f
	line	1206
	
l5727:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	1204
	
l5729:	
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3025
	movlw	low(01h)
	subwf	(sprintf@exp)^080h,w
u3025:

	skipnc
	goto	u3021
	goto	u3020
u3021:
	goto	l5723
u3020:
	line	1208
	
l5731:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3035
	movlw	low(09h)
	subwf	(sprintf@prec)^080h,w
u3035:

	skipc
	goto	u3031
	goto	u3030
u3031:
	goto	l5735
u3030:
	line	1209
	
l5733:	
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	goto	l1213
	line	1211
	
l5735:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	movwf	(sprintf@c)^080h
	
l1213:	
	line	1212
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@prec)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(sprintf@prec+1)^080h,f
	subwf	(sprintf@prec+1)^080h,f
	line	1216
	movf	(sprintf@c)^080h,w
	skipz
	goto	u3040
	goto	l5741
u3040:
	line	1218
	
l5737:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(02Eh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5739:	
	incf	(sprintf@sp)^080h,f
	line	1224
	
l5741:	
	movf	(sprintf@c)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?_scale)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?_scale)),w
	movwf	2+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val)^080h

	line	1225
	goto	l5749
	line	1226
	
l5743:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(sprintf@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(sprintf@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(sprintf@_val)^080h,w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_sprintf+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5745:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(sprintf@sp)^080h,f
	line	1227
	
l5747:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___llmod)
	fcall	stringdir
	movwf	(?___llmod+1)
	fcall	stringdir
	movwf	(?___llmod+2)
	fcall	stringdir
	movwf	(?___llmod+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val)^080h

	line	1225
	
l5749:	
	decf	(sprintf@c)^080h,f
	incf	((sprintf@c)^080h),w
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l5743
u3050:
	goto	l5757
	line	1231
	
l5751:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(030h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5753:	
	incf	(sprintf@sp)^080h,f
	line	1232
	
l5755:	
	movlw	-1
	addwf	(sprintf@prec)^080h,f
	skipc
	decf	(sprintf@prec+1)^080h,f
	line	1230
	
l5757:	
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l5751
u3060:
	goto	l5839
	line	1254
	
l5759:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+1
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+1)^080h
	movlw	0
	btfsc	(sprintf@_val+1)^080h,7
	movlw	255
	movwf	(sprintf@_val+2)^080h
	movwf	(sprintf@_val+3)^080h
	
l5761:	
	incf	(sprintf@ap)^080h,f
	incf	(sprintf@ap)^080h,f
	line	1256
	
l5763:	
	btfss	(sprintf@_val+3)^080h,7
	goto	u3071
	goto	u3070
u3071:
	goto	l5769
u3070:
	line	1257
	
l5765:	
	movlw	03h
	iorwf	(sprintf@flag)^080h,f
	line	1258
	
l5767:	
	comf	(sprintf@_val)^080h,f
	comf	(sprintf@_val+1)^080h,f
	comf	(sprintf@_val+2)^080h,f
	comf	(sprintf@_val+3)^080h,f
	incf	(sprintf@_val)^080h,f
	skipnz
	incf	(sprintf@_val+1)^080h,f
	skipnz
	incf	(sprintf@_val+2)^080h,f
	skipnz
	incf	(sprintf@_val+3)^080h,f
	line	1285
	
l5769:	
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u3081
	goto	u3080
u3081:
	goto	l5775
u3080:
	
l5771:	
	movf	(sprintf@_val+3)^080h,w
	iorwf	(sprintf@_val+2)^080h,w
	iorwf	(sprintf@_val+1)^080h,w
	iorwf	(sprintf@_val)^080h,w
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l5775
u3090:
	line	1286
	
l5773:	
	incf	(sprintf@prec)^080h,f
	skipnz
	incf	(sprintf@prec+1)^080h,f
	line	1300
	
l5775:	
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	line	1301
	
l5781:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_sprintf+1)+0)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+1)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+2)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+3)
	movf	3+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+3)^080h,w
	skipz
	goto	u3105
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+2)^080h,w
	skipz
	goto	u3105
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u3105
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val)^080h,w
u3105:
	skipnc
	goto	u3101
	goto	u3100
u3101:
	goto	l5785
u3100:
	goto	l5789
	line	1300
	
l5785:	
	incf	(sprintf@c)^080h,f
	
l5787:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u3111
	goto	u3110
u3111:
	goto	l5781
u3110:
	line	1334
	
l5789:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u3125
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_sprintf+0)+0,w
u3125:

	skipnc
	goto	u3121
	goto	u3120
u3121:
	goto	l5793
u3120:
	line	1335
	
l5791:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	movwf	(sprintf@c)^080h
	goto	l5797
	line	1336
	
l5793:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+2)+0
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u3135
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@prec)^080h,w
u3135:

	skipnc
	goto	u3131
	goto	u3130
u3131:
	goto	l5797
u3130:
	line	1337
	
l5795:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	movwf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	btfsc	(sprintf@prec)^080h,7
	decf	(sprintf@prec+1)^080h,f
	line	1340
	
l5797:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3141
	goto	u3140
u3141:
	goto	l5803
u3140:
	
l5799:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l5803
u3150:
	line	1341
	
l5801:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	line	1343
	
l5803:	
	btfss	(sprintf@flag+1)^080h,(14)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l5811
u3160:
	line	1344
	
l5805:	
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??_sprintf+0)+0,w
	skipz
	goto	u3175
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width)^080h,w
	subwf	(sprintf@prec)^080h,w
u3175:

	skipnc
	goto	u3171
	goto	u3170
u3171:
	goto	l5809
u3170:
	line	1345
	
l5807:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	subwf	(sprintf@width)^080h,f
	movf	(sprintf@prec+1)^080h,w
	skipc
	decf	(sprintf@width+1)^080h,f
	subwf	(sprintf@width+1)^080h,f
	goto	l5811
	line	1347
	
l5809:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	1376
	
l5811:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u3185
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_sprintf+0)+0,w
u3185:

	skipnc
	goto	u3181
	goto	u3180
u3181:
	goto	l5815
u3180:
	line	1377
	
l5813:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@width)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(sprintf@width+1)^080h,f
	subwf	(sprintf@width+1)^080h,f
	goto	l5817
	line	1379
	
l5815:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	1423
	
l5817:	
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3191
	goto	u3190
u3191:
	goto	l5825
u3190:
	line	1425
	
l5819:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(020h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5821:	
	incf	(sprintf@sp)^080h,f
	line	1426
	
l5823:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	movf	(((sprintf@width+1)^080h)),w
	iorwf	(((sprintf@width)^080h)),w
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l5819
u3200:
	line	1433
	
l5825:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l5837
u3210:
	line	1434
	
l5827:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5829:	
	incf	(sprintf@sp)^080h,f
	goto	l5837
	line	1484
	
l5831:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(sprintf@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(sprintf@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(sprintf@_val)^080h,w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@c)^080h
	line	1516
	
l5833:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(sprintf@c)^080h,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l5829
	line	1469
	
l5837:	
	movlw	-1
	addwf	(sprintf@prec)^080h,f
	skipc
	decf	(sprintf@prec+1)^080h,f
	incf	((sprintf@prec)^080h),w
	skipnz
	incf	((sprintf@prec+1)^080h),w

	skipz
	goto	u3221
	goto	u3220
u3221:
	goto	l5831
u3220:
	line	540
	
l5839:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@c)^080h
	movf	((sprintf@c)^080h),f
	skipz
	goto	u3231
	goto	u3230
u3231:
	goto	l5559
u3230:
	line	1530
	
l5841:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1533
	
l1243:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_lcd_clear
psect	text561,local,class=CODE,delta=2
global __ptext561
__ptext561:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 173 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
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
;;		_main
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text561
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
	line	173
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	174
	
l5553:	
;PWM.c: 174: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	175
	
l5555:	
;PWM.c: 175: lcd_write(0x01);
	movlw	(01h)
	fcall	_lcd_write
	line	176
;PWM.c: 176: pause (2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	177
	
l1097:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	___ftsub
psect	text562,local,class=CODE,delta=2
global __ptext562
__ptext562:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   40[BANK0 ] float 
;;  f1              3   43[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   40[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text562
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 3
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l5547:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	19
	
l5549:	
	movf	(___ftsub@f1),w
	movwf	(?___ftadd)
	movf	(___ftsub@f1+1),w
	movwf	(?___ftadd+1)
	movf	(___ftsub@f1+2),w
	movwf	(?___ftadd+2)
	movf	(___ftsub@f2),w
	movwf	0+(?___ftadd)+03h
	movf	(___ftsub@f2+1),w
	movwf	1+(?___ftadd)+03h
	movf	(___ftsub@f2+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	line	20
	
l2324:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text563,local,class=CODE,delta=2
global __ptext563
__ptext563:

;; *************** function _scale *****************
;; Defined at:
;;		line 422 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   38[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   28[BANK0 ] char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awmod
;;		___awdiv
;;		___ftmul
;;		___bmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text563
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	422
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
	opt	stack 3
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	line	424
	bcf	status, 5	;RP0=0, select bank0
	movwf	(scale@scl)
	
l5507:	
	btfss	(scale@scl),7
	goto	u2711
	goto	u2710
u2711:
	goto	l5529
u2710:
	line	425
	
l5509:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l5511:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l5519
u2720:
	line	427
	
l5513:	
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	064h
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+0)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	064h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__npowers_-__stringbase)+036h)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_scale$2868)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$2868+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$2868+2)
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_scale$2868),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$2868+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$2868+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1151
	line	428
	
l5519:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l5525
u2730:
	line	429
	
l5521:	
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1151
	line	430
	
l5525:	
	movlw	(03h)
	movwf	(?___bmul)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	goto	l1151
	line	432
	
l5529:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l5537
u2740:
	line	433
	
l5531:	
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	064h
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+0)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__powers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	064h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__powers_-__stringbase)+036h)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_scale$2868)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$2868+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$2868+2)
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_scale$2868),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$2868+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$2868+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1151
	line	434
	
l5537:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l5543
u2750:
	line	435
	
l5539:	
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__powers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1151
	line	436
	
l5543:	
	movlw	(03h)
	movwf	(?___bmul)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	line	437
	
l1151:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text564,local,class=CODE,delta=2
global __ptext564
__ptext564:

;; *************** function _fround *****************
;; Defined at:
;;		line 406 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   49[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   40[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lbmod
;;		___bmul
;;		___lbdiv
;;		___ftmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text564
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	406
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
	opt	stack 3
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	line	409
	bcf	status, 5	;RP0=0, select bank0
	movwf	(fround@prec)
	
l5485:	
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l5495
u2690:
	line	410
	
l5487:	
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movlw	(064h)
	movwf	(?___lbmod)
	movf	(fround@prec),w
	fcall	___lbmod
	fcall	___lbdiv
	fcall	___bmul
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(064h)
	movwf	(?___lbdiv)
	movf	(fround@prec),w
	fcall	___lbdiv
	fcall	___bmul
	addlw	low((__npowers_-__stringbase)+036h)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$2866)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2866+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2866+2)
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(fround@prec),w
	fcall	___lbmod
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_fround$2866),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2866+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2866+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$2867)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2867+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2867+2)
	
l5489:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$2867),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2867+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2867+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l1144
	line	411
	
l5495:	
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l5503
u2700:
	line	412
	
l5497:	
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(fround@prec),w
	fcall	___lbmod
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(fround@prec),w
	fcall	___lbdiv
	fcall	___bmul
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$2866)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2866+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2866+2)
	
l5499:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$2866),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2866+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2866+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l1144
	line	413
	
l5503:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(?___bmul)
	movf	(fround@prec),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	line	414
	
l1144:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_lcd_write
psect	text565,local,class=CODE,delta=2
global __ptext565
__ptext565:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 165 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
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
;;		_lcd_puts
;;		_lcd_goto
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text565
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
	line	165
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	166
	
l5471:	
;PWM.c: 166: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	167
	
l5473:	
;PWM.c: 167: PORTD = ( ( c >> 4) & 0x0F);
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	168
	
l5475:	
;PWM.c: 168: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l5477:	
	bcf	(56/8),(56)&7
	line	169
	
l5479:	
;PWM.c: 169: PORTD = (c & 0x0F);
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	170
	
l5481:	
;PWM.c: 170: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l5483:	
	bcf	(56/8),(56)&7
	line	171
	
l1094:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_PWM
psect	text566,local,class=CODE,delta=2
global __ptext566
__ptext566:

;; *************** function _PWM *****************
;; Defined at:
;;		line 149 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
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
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text566
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
	line	149
	global	__size_of_PWM
	__size_of_PWM	equ	__end_of_PWM-_PWM
	
_PWM:	
	opt	stack 5
; Regs used in _PWM: [wreg+status,2+status,0+pclath+cstack]
	line	150
	
l5453:	
;PWM.c: 150: ADRESH=pwm1>>2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_pwm1+1),w
	movwf	(??_PWM+0)+0+1
	movf	(_pwm1),w
	movwf	(??_PWM+0)+0
	clrc
	rrf	(??_PWM+0)+1,f
	rrf	(??_PWM+0)+0,f
	clrc
	rrf	(??_PWM+0)+1,f
	rrf	(??_PWM+0)+0,f
	movf	0+(??_PWM+0)+0,w
	movwf	(30)	;volatile
	line	151
	
l5455:	
;PWM.c: 151: ADRESL=pwm1<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	152
	
l5457:	
;PWM.c: 152: CCPR1L=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(21)	;volatile
	line	153
	
l5459:	
;PWM.c: 153: CCP1CON=0X0C|(ADRESL>>2);
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_PWM+0)+0
	clrc
	rrf	(??_PWM+0)+0,f
	clrc
	rrf	(??_PWM+0)+0,f
	movf	0+(??_PWM+0)+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	154
	
l5461:	
;PWM.c: 154: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	156
	
l5463:	
;PWM.c: 156: ADRESH=pwm2>>2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_pwm2+1),w
	movwf	(??_PWM+0)+0+1
	movf	(_pwm2),w
	movwf	(??_PWM+0)+0
	clrc
	rrf	(??_PWM+0)+1,f
	rrf	(??_PWM+0)+0,f
	clrc
	rrf	(??_PWM+0)+1,f
	rrf	(??_PWM+0)+0,f
	movf	0+(??_PWM+0)+0,w
	movwf	(30)	;volatile
	line	157
	
l5465:	
;PWM.c: 157: ADRESL=pwm2<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	158
	
l5467:	
;PWM.c: 158: CCPR2L=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(27)	;volatile
	line	159
	
l5469:	
;PWM.c: 159: CCP2CON=0X0C|(ADRESL>>2);
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_PWM+0)+0
	clrc
	rrf	(??_PWM+0)+0,f
	clrc
	rrf	(??_PWM+0)+0,f
	movf	0+(??_PWM+0)+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	movwf	(29)	;volatile
	line	160
;PWM.c: 160: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	162
	
l1091:	
	return
	opt stack 0
GLOBAL	__end_of_PWM
	__end_of_PWM:
;; =============== function _PWM ends ============

	signat	_PWM,88
	global	___lltoft
psect	text567,local,class=CODE,delta=2
global __ptext567
__ptext567:

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text567
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 4
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l5443:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l5447
	line	42
	
l5445:	
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l5447:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l5445
u2680:
	line	45
	
l5449:	
	movf	(___lltoft@c),w
	movwf	(?___ftpack)
	movf	(___lltoft@c+1),w
	movwf	(?___ftpack+1)
	movf	(___lltoft@c+2),w
	movwf	(?___ftpack+2)
	movf	(___lltoft@exp),w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	line	46
	
l2481:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___awtoft
psect	text568,local,class=CODE,delta=2
global __ptext568
__ptext568:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ADC
;; This function uses a non-reentrant model
;;
psect	text568
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l5431:	
	clrf	(___awtoft@sign)
	line	37
	
l5433:	
	btfss	(___awtoft@c+1),7
	goto	u2671
	goto	u2670
u2671:
	goto	l5439
u2670:
	line	38
	
l5435:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l5437:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l5439:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	line	42
	
l2378:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text569,local,class=CODE,delta=2
global __ptext569
__ptext569:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   13[BANK0 ] float 
;;  f2              3   16[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   23[BANK0 ] unsigned um
;;  sign            1   27[BANK0 ] unsigned char 
;;  cntr            1   26[BANK0 ] unsigned char 
;;  exp             1   22[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   13[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ADC
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text569
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l5375:	
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u2591
	goto	u2590
u2591:
	goto	l5381
u2590:
	line	57
	
l5377:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2340
	line	58
	
l5381:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u2601
	goto	u2600
u2601:
	goto	l5387
u2600:
	line	59
	
l5383:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2340
	line	60
	
l5387:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l5389:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l5391:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l5393:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l5395:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l5397:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l5399:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l5401:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l5403:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l5405:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l5409
u2610:
	line	72
	
l5407:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2621
	addwf	(___ftmul@f3_as_product+1),f
u2621:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2622
	addwf	(___ftmul@f3_as_product+2),f
u2622:

	line	73
	
l5409:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l5411:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l5413:	
	decfsz	(___ftmul@cntr),f
	goto	u2631
	goto	u2630
u2631:
	goto	l5405
u2630:
	line	76
	
l5415:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l5417:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l5421
u2640:
	line	79
	
l5419:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2651
	addwf	(___ftmul@f3_as_product+1),f
u2651:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2652
	addwf	(___ftmul@f3_as_product+2),f
u2652:

	line	80
	
l5421:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l5423:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l5425:	
	decfsz	(___ftmul@cntr),f
	goto	u2661
	goto	u2660
u2661:
	goto	l5417
u2660:
	line	83
	
l5427:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	line	84
	
l2340:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text570,local,class=CODE,delta=2
global __ptext570
__ptext570:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   28[BANK0 ] float 
;;  f2              3   31[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   39[BANK0 ] unsigned char 
;;  exp2            1   38[BANK0 ] unsigned char 
;;  sign            1   37[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   28[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sprintf
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text570
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l5297:	
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp2)
	line	92
	
l5299:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2390
	goto	l5305
u2390:
	
l5301:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2401
	goto	u2400
u2401:
	goto	l5309
u2400:
	
l5303:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l5309
u2410:
	line	93
	
l5305:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2288
	line	94
	
l5309:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2420
	goto	l2291
u2420:
	
l5311:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2431
	goto	u2430
u2431:
	goto	l5315
u2430:
	
l5313:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2441
	goto	u2440
u2441:
	goto	l5315
u2440:
	
l2291:	
	line	95
	goto	l2288
	line	96
	
l5315:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l5317:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2451
	goto	u2450
u2451:
	goto	l2292
u2450:
	line	98
	
l5319:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2292:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l2293
u2460:
	line	100
	
l5321:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2293:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l5323:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l5325:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2471
	goto	u2470
u2471:
	goto	l5337
u2470:
	line	110
	
l5327:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l5329:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2481
	goto	u2480
u2481:
	goto	l5335
u2480:
	
l5331:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l5327
u2490:
	goto	l5335
	line	114
	
l5333:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l5335:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l5333
u2500:
	goto	l2302
	line	117
	
l5337:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2511
	goto	u2510
u2511:
	goto	l2302
u2510:
	line	121
	
l5339:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l5341:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2521
	goto	u2520
u2521:
	goto	l5347
u2520:
	
l5343:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l5339
u2530:
	goto	l5347
	line	125
	
l5345:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l5347:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2541
	goto	u2540
u2541:
	goto	l5345
u2540:
	line	129
	
l2302:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l5353
u2550:
	line	131
	
l5349:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l5351:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l5353:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l5359
u2560:
	line	136
	
l5355:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l5357:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l5359:	
	clrf	(___ftadd@sign)
	line	140
	
l5361:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2571
	addwf	(___ftadd@f2+1),f
u2571:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2572
	addwf	(___ftadd@f2+2),f
u2572:

	line	141
	
l5363:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l5371
u2580:
	line	142
	
l5365:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l5367:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l5369:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l5371:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	line	148
	
l2288:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_pause
psect	text571,local,class=CODE,delta=2
global __ptext571
__ptext571:

;; *************** function _pause *****************
;; Defined at:
;;		line 222 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
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
;;		_ADC
;;		_PWM
;;		_lcd_write
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text571
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
	line	222
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 5
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	224
	
l5289:	
;PWM.c: 223: unsigned short x;
;PWM.c: 224: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l5295
	line	226
	
l5291:	
;PWM.c: 225: {
;PWM.c: 226: msecbase();
	fcall	_msecbase
	line	224
	
l5293:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l5295:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u2385
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u2385:
	skipnc
	goto	u2381
	goto	u2380
u2381:
	goto	l5291
u2380:
	line	228
	
l1118:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	___awmod
psect	text572,local,class=CODE,delta=2
global __ptext572
__ptext572:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text572
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l5253:	
	clrf	(___awmod@sign)
	line	9
	
l5255:	
	btfss	(___awmod@dividend+1),7
	goto	u2311
	goto	u2310
u2311:
	goto	l5261
u2310:
	line	10
	
l5257:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l5259:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l5261:	
	btfss	(___awmod@divisor+1),7
	goto	u2321
	goto	u2320
u2321:
	goto	l5265
u2320:
	line	14
	
l5263:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l5265:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2331
	goto	u2330
u2331:
	goto	l5281
u2330:
	line	16
	
l5267:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l5271
	line	18
	
l5269:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l5271:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l5269
u2340:
	line	22
	
l5273:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2355
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2355:
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l5277
u2350:
	line	23
	
l5275:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l5277:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l5279:	
	decfsz	(___awmod@counter),f
	goto	u2361
	goto	u2360
u2361:
	goto	l5273
u2360:
	line	27
	
l5281:	
	movf	(___awmod@sign),w
	skipz
	goto	u2370
	goto	l5285
u2370:
	line	28
	
l5283:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l5285:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l2459:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text573,local,class=CODE,delta=2
global __ptext573
__ptext573:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    8[COMMON] unsigned long 
;;  counter         1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:        13       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text573
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 5
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l5227:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l5229:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u2271
	goto	u2270
u2271:
	goto	l5249
u2270:
	line	11
	
l5231:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l5235
	line	13
	
l5233:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l5235:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l5233
u2280:
	line	17
	
l5237:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l5239:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u2295
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u2295
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u2295
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u2295:
	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l5245
u2290:
	line	19
	
l5241:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	20
	
l5243:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l5245:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l5247:	
	decfsz	(___lldiv@counter),f
	goto	u2301
	goto	u2300
u2301:
	goto	l5237
u2300:
	line	25
	
l5249:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l2420:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text574,local,class=CODE,delta=2
global __ptext574
__ptext574:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text574
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 5
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l5207:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l5211
u2240:
	line	7
	
l5209:	
	movf	(___ftge@ff1),w
	sublw	0
	movwf	(___ftge@ff1)
	movf	(___ftge@ff1+1),w
	skipc
	incfsz	(___ftge@ff1+1),w
	sublw	0
	movwf	1+(___ftge@ff1)
	movf	(___ftge@ff1+2),w
	skipc
	incfsz	(___ftge@ff1+2),w
	sublw	080h
	movwf	2+(___ftge@ff1)
	line	8
	
l5211:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l5215
u2250:
	line	9
	
l5213:	
	movf	(___ftge@ff2),w
	sublw	0
	movwf	(___ftge@ff2)
	movf	(___ftge@ff2+1),w
	skipc
	incfsz	(___ftge@ff2+1),w
	sublw	0
	movwf	1+(___ftge@ff2)
	movf	(___ftge@ff2+2),w
	skipc
	incfsz	(___ftge@ff2+2),w
	sublw	080h
	movwf	2+(___ftge@ff2)
	line	10
	
l5215:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l5217:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l5219:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2265
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2265
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2265:
	skipnc
	goto	u2261
	goto	u2260
u2261:
	goto	l5223
u2260:
	
l5221:	
	clrc
	
	goto	l2410
	
l5223:	
	setc
	
	line	13
	
l2410:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text575,local,class=CODE,delta=2
global __ptext575
__ptext575:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 160/20
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text575
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 5
; Regs used in ___ftneg: [wreg]
	line	17
	
l5199:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2231
	goto	u2230
u2231:
	goto	l5203
u2230:
	line	18
	
l5201:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l5203:	
	line	20
	
l2405:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text576,local,class=CODE,delta=2
global __ptext576
__ptext576:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] unsigned long 
;;  dividend        4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       8       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text576
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 5
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l5179:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u2191
	goto	u2190
u2191:
	goto	l5195
u2190:
	line	9
	
l5181:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	10
	goto	l5185
	line	11
	
l5183:	
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	12
	incf	(___llmod@counter),f
	line	10
	
l5185:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l5183
u2200:
	line	15
	
l5187:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u2215
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u2215
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u2215
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u2215:
	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l5191
u2210:
	line	16
	
l5189:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	line	17
	
l5191:	
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	18
	
l5193:	
	decfsz	(___llmod@counter),f
	goto	u2221
	goto	u2220
u2221:
	goto	l5187
u2220:
	line	20
	
l5195:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	21
	
l2401:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text577,local,class=CODE,delta=2
global __ptext577
__ptext577:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[COMMON] int 
;;  dividend        2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   12[COMMON] int 
;;  sign            1   11[COMMON] unsigned char 
;;  counter         1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 40/20
;;		Unchanged: FFFBF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text577
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l5135:	
	clrf	(___awdiv@sign)
	line	10
	
l5137:	
	btfss	(___awdiv@divisor+1),7
	goto	u2121
	goto	u2120
u2121:
	goto	l5143
u2120:
	line	11
	
l5139:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l5141:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l5143:	
	btfss	(___awdiv@dividend+1),7
	goto	u2131
	goto	u2130
u2131:
	goto	l5149
u2130:
	line	15
	
l5145:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l5147:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l5149:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l5151:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2141
	goto	u2140
u2141:
	goto	l5171
u2140:
	line	20
	
l5153:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l5157
	line	22
	
l5155:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l5157:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l5155
u2150:
	line	26
	
l5159:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l5161:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2165
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2165:
	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l5167
u2160:
	line	28
	
l5163:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l5165:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l5167:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l5169:	
	decfsz	(___awdiv@counter),f
	goto	u2171
	goto	u2170
u2171:
	goto	l5159
u2170:
	line	34
	
l5171:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2180
	goto	l5175
u2180:
	line	35
	
l5173:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l5175:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2391:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text578,local,class=CODE,delta=2
global __ptext578
__ptext578:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    8[BANK0 ] unsigned long 
;;  exp1            1   12[BANK0 ] unsigned char 
;;  sign1           1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text578
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l5097:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2041
	goto	u2040
u2041:
	goto	l5101
u2040:
	line	50
	
l5099:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l2351
	line	51
	
l5101:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2055:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2050:
	addlw	-1
	skipz
	goto	u2055
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l5103:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l5105:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l5107:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l5109:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l5111:	
	btfss	(___fttol@exp1),7
	goto	u2061
	goto	u2060
u2061:
	goto	l5121
u2060:
	line	57
	
l5113:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2071
	goto	u2070
u2071:
	goto	l5117
u2070:
	goto	l5099
	line	60
	
l5117:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l5119:	
	incfsz	(___fttol@exp1),f
	goto	u2081
	goto	u2080
u2081:
	goto	l5117
u2080:
	goto	l5127
	line	63
	
l5121:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2091
	goto	u2090
u2091:
	goto	l2358
u2090:
	goto	l5099
	line	66
	
l5125:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l2358:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u2101
	goto	u2100
u2101:
	goto	l5125
u2100:
	line	70
	
l5127:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2110
	goto	l5131
u2110:
	line	71
	
l5129:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	line	72
	
l5131:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l2351:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text579,local,class=CODE,delta=2
global __ptext579
__ptext579:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 40/20
;;		Unchanged: FFFBF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftmul
;;		___awtoft
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text579
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l5069:	
	movf	(___ftpack@exp),w
	skipz
	goto	u1970
	goto	l5073
u1970:
	
l5071:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1981
	goto	u1980
u1981:
	goto	l5079
u1980:
	line	65
	
l5073:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l2610
	line	67
	
l5077:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l5079:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1991
	goto	u1990
u1991:
	goto	l5077
u1990:
	goto	l5083
	line	71
	
l5081:	
	incf	(___ftpack@exp),f
	line	72
	incf	(___ftpack@arg),f
	skipnz
	incf	(___ftpack@arg+1),f
	skipnz
	incf	(___ftpack@arg+2),f
	line	73
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	70
	
l5083:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l5081
u2000:
	goto	l5087
	line	76
	
l5085:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l5087:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2011
	goto	u2010
u2011:
	goto	l5085
u2010:
	
l2619:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2021
	goto	u2020
u2021:
	goto	l2620
u2020:
	line	80
	
l5089:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l2620:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l5091:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0+2)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+0)
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l5093:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2030
	goto	l2621
u2030:
	line	84
	
l5095:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2621:	
	line	85
	line	86
	
l2610:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lbmod
psect	text580,local,class=CODE,delta=2
global __ptext580
__ptext580:

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    2[COMMON] unsigned char 
;;  rem             1    4[COMMON] unsigned char 
;;  counter         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text580
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 4
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
l5051:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l5053:	
	clrf	(___lbmod@rem)
	line	12
	
l5055:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1945:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1945
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l5057:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l5059:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1951
	goto	u1950
u1951:
	goto	l5063
u1950:
	line	15
	
l5061:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l5063:	
	decfsz	(___lbmod@counter),f
	goto	u1961
	goto	u1960
u1961:
	goto	l5055
u1960:
	line	17
	
l5065:	
	movf	(___lbmod@rem),w
	line	18
	
l2280:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text581,local,class=CODE,delta=2
global __ptext581
__ptext581:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    6[COMMON] unsigned char 
;;  quotient        1    8[COMMON] unsigned char 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text581
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 4
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l5027:	
	clrf	(___lbdiv@quotient)
	line	10
	
l5029:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u1900
	goto	l5047
u1900:
	line	11
	
l5031:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l5035
	
l2269:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l5033:	
	incf	(___lbdiv@counter),f
	line	12
	
l5035:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1911
	goto	u1910
u1911:
	goto	l2269
u1910:
	line	16
	
l2271:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l5037:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1921
	goto	u1920
u1921:
	goto	l5043
u1920:
	line	19
	
l5039:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l5041:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l5043:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l5045:	
	decfsz	(___lbdiv@counter),f
	goto	u1931
	goto	u1930
u1931:
	goto	l2271
u1930:
	line	25
	
l5047:	
	movf	(___lbdiv@quotient),w
	line	26
	
l2274:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text582,local,class=CODE,delta=2
global __ptext582
__ptext582:

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
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
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
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text582
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l5011:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l5013:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1881
	goto	u1880
u1881:
	goto	l5017
u1880:
	line	8
	
l5015:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l5017:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l5019:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l5021:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1891
	goto	u1890
u1891:
	goto	l5013
u1890:
	line	12
	
l5023:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2244:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text583,local,class=CODE,delta=2
global __ptext583
__ptext583:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    9[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1   11[COMMON] unsigned char 
;;  product         1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text583
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 4
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l4995:	
	clrf	(___bmul@product)
	line	7
	
l4997:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1861
	goto	u1860
u1861:
	goto	l5001
u1860:
	line	8
	
l4999:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l5001:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l5003:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l5005:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u1871
	goto	u1870
u1871:
	goto	l4997
u1870:
	line	12
	
l5007:	
	movf	(___bmul@product),w
	line	13
	
l2238:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text584,local,class=CODE,delta=2
global __ptext584
__ptext584:

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] unsigned char 
;;  f2              3    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          8       0       0       0       0
;;      Totals:        14       6       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text584
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 5
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l4949:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__div_to_l_@exp1)
	movf	((__div_to_l_@exp1)),f
	skipz
	goto	u1771
	goto	u1770
u1771:
	goto	l4953
u1770:
	line	67
	
l4951:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l2528
	line	68
	
l4953:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(__div_to_l_@cntr)
	movf	((__div_to_l_@cntr)),f
	skipz
	goto	u1781
	goto	u1780
u1781:
	goto	l4957
u1780:
	goto	l4951
	line	70
	
l4957:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	71
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	72
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	73
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	74
	
l4959:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l4961:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l4963:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l4965:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l4967:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l4969:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+3
	movf	3+(??__div_to_l_+0)+0,w
	subwf	3+(??__div_to_l_+4)+0,w
	skipz
	goto	u1795
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u1795
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u1795
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u1795:
	skipc
	goto	u1791
	goto	u1790
u1791:
	goto	l2531
u1790:
	line	81
	
l4971:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	1+(??__div_to_l_+0)+0,w
	skipc
	incfsz	1+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	2+(??__div_to_l_+0)+0,w
	skipc
	incfsz	2+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	3+(??__div_to_l_+0)+0,w
	skipc
	incf	3+(??__div_to_l_+0)+0,w
	subwf	indf,f
	movlw	3
	subwf	fsr0
	line	82
	
l4973:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l2531:	
	line	84
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	clrc
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	line	85
	
l4975:	
	decfsz	(__div_to_l_@cntr),f
	goto	u1801
	goto	u1800
u1801:
	goto	l4967
u1800:
	
l2532:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u1811
	goto	u1810
u1811:
	goto	l4985
u1810:
	line	87
	
l4977:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u1821
	goto	u1820
u1821:
	goto	l4981
u1820:
	goto	l4951
	line	90
	
l4981:	
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l4983:	
	incfsz	(__div_to_l_@exp1),f
	goto	u1831
	goto	u1830
u1831:
	goto	l4981
u1830:
	goto	l4991
	line	93
	
l4985:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u1841
	goto	u1840
u1841:
	goto	l2539
u1840:
	goto	l4951
	line	96
	
l4989:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l2539:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u1851
	goto	u1850
u1851:
	goto	l4989
u1850:
	line	100
	
l4991:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l2528:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text585,local,class=CODE,delta=2
global __ptext585
__ptext585:

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;;  f2              3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         9       6       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text585
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 5
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l4901:	
	movf	(__tdiv_to_l_@f1),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f1+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f1+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(__tdiv_to_l_@exp1)
	movf	((__tdiv_to_l_@exp1)),f
	skipz
	goto	u1681
	goto	u1680
u1681:
	goto	l4905
u1680:
	line	67
	
l4903:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l2485
	line	68
	
l4905:	
	movf	(__tdiv_to_l_@f2),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f2+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f2+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(__tdiv_to_l_@cntr)
	movf	((__tdiv_to_l_@cntr)),f
	skipz
	goto	u1691
	goto	u1690
u1691:
	goto	l2486
u1690:
	goto	l4903
	line	69
	
l2486:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l4909:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l4911:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l4913:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l4915:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l4917:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l4919:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l4921:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u1705
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u1705
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u1705:
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l4927
u1700:
	line	81
	
l4923:	
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),f
	movf	(__tdiv_to_l_@f2+1),w
	skipc
	incfsz	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),f
	movf	(__tdiv_to_l_@f2+2),w
	skipc
	incf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),f
	line	82
	
l4925:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l4927:	
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l4929:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u1711
	goto	u1710
u1711:
	goto	l4919
u1710:
	
l2489:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u1721
	goto	u1720
u1721:
	goto	l4939
u1720:
	line	87
	
l4931:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u1731
	goto	u1730
u1731:
	goto	l4935
u1730:
	goto	l4903
	line	90
	
l4935:	
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l4937:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u1741
	goto	u1740
u1741:
	goto	l4935
u1740:
	goto	l4945
	line	93
	
l4939:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u1751
	goto	u1750
u1751:
	goto	l2496
u1750:
	goto	l4903
	line	96
	
l4943:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l2496:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u1761
	goto	u1760
u1761:
	goto	l4943
u1760:
	line	100
	
l4945:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l2485:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text586,local,class=CODE,delta=2
global __ptext586
__ptext586:

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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text586
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
	line	13
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 5
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l4889:	
	clrf	(_isdigit$2427)
	
l4891:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u1661
	goto	u1660
u1661:
	goto	l4897
u1660:
	
l4893:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u1671
	goto	u1670
u1671:
	goto	l4897
u1670:
	
l4895:	
	clrf	(_isdigit$2427)
	incf	(_isdigit$2427),f
	
l4897:	
	rrf	(_isdigit$2427),w
	
	line	15
	
l2228:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_msecbase
psect	text587,local,class=CODE,delta=2
global __ptext587
__ptext587:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 230 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
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
psect	text587
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
	line	230
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 5
; Regs used in _msecbase: [wreg]
	line	231
	
l4887:	
;PWM.c: 231: OPTION_REG = 0b11010001;
	movlw	(0D1h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	232
;PWM.c: 232: TMR0 = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	233
;PWM.c: 233: TMR0 = 0x8E;
	movlw	(08Eh)
	movwf	(1)	;volatile
	line	234
;PWM.c: 234: while(!T0IF);
	
l1121:	
	btfss	(90/8),(90)&7
	goto	u1651
	goto	u1650
u1651:
	goto	l1121
u1650:
	
l1123:	
	line	235
;PWM.c: 235: T0IF = 0;
	bcf	(90/8),(90)&7
	line	236
	
l1124:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_init_comms
psect	text588,local,class=CODE,delta=2
global __ptext588
__ptext588:

;; *************** function _init_comms *****************
;; Defined at:
;;		line 50 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/60
;;		Unchanged: FFE80/0
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
psect	text588
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\LCD_PWM\PWM\PWM.c"
	line	50
	global	__size_of_init_comms
	__size_of_init_comms	equ	__end_of_init_comms-_init_comms
	
_init_comms:	
	opt	stack 7
; Regs used in _init_comms: [wreg+status,2]
	line	51
	
l3663:	
;PWM.c: 51: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	52
;PWM.c: 52: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	53
	
l3665:	
;PWM.c: 53: SPBRG = 0x19;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	55
;PWM.c: 55: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	56
;PWM.c: 56: TXSTA = 0x26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	57
	
l3667:	
;PWM.c: 57: BAUDCTL = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	58
	
l1073:	
	return
	opt stack 0
GLOBAL	__end_of_init_comms
	__end_of_init_comms:
;; =============== function _init_comms ends ============

	signat	_init_comms,88
psect	text589,local,class=CODE,delta=2
global __ptext589
__ptext589:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
