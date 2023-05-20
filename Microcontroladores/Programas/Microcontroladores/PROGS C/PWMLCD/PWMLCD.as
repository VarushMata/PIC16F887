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
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 5 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
	psect config,class=CONFIG,delta=2 ;#
# 5 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_clear
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftmul
	FNCALL	_main,_sprintf
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_pause
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
	global	_pwm
	global	_adc
	global	_num
	global	_carac
	global	_carac2
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTD
_PORTD	set	8
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
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	
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
	
STR_1:	
	retlw	37	;'%'
	retlw	49	;'1'
	retlw	46	;'.'
	retlw	49	;'1'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_4:	
	retlw	67	;'C'
	retlw	53	;'5'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_8:	
	retlw	67	;'C'
	retlw	54	;'6'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_3:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
STR_5	equ	STR_1+0
STR_7	equ	STR_3+0
	file	"PWMLCD.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_pwm:
       ds      3

_adc:
       ds      2

_num:
       ds      2

_carac:
       ds      5

_carac2:
       ds      4

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
	movlw	low((__pbssBANK0)+010h)
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
	global	_sprintf$1897
_sprintf$1897:	; 4 bytes @ 0x0
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
	global	_isdigit$2405
_isdigit$2405:	; 1 bytes @ 0x0
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
	global	??_main
??_main:	; 0 bytes @ 0xE
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
	global	_scale$2835
_scale$2835:	; 3 bytes @ 0x23
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
	global	_fround$2834
_fround$2834:	; 3 bytes @ 0x2B
	ds	3
	global	_fround$2833
_fround$2833:	; 3 bytes @ 0x2E
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
;;Data sizes: Strings 29, constant 118, data 0, bss 16, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     59      75
;; BANK1           80     25      25
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
;; ?___fttol	long  size(1) Largest target is 0
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
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 6
;;		 -> STR_7(CODE[3]), STR_5(CODE[6]), STR_3(CODE[3]), STR_1(CODE[6]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 5
;;		 -> carac2(BANK0[4]), carac(BANK0[5]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S1886$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 6
;;		 -> STR_8(CODE[4]), STR_6(CODE[6]), STR_4(CODE[4]), carac2(BANK0[4]), 
;;		 -> STR_2(CODE[6]), carac(BANK0[5]), 
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
;;   _main->_sprintf
;;   _sprintf->_fround
;;   ___ftsub->___ftadd
;;   _scale->___ftmul
;;   _fround->___ftadd
;;   ___ftmul->___fttol
;;   ___ftadd->___ftmul
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_sprintf
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
;; (0) _main                                                 0     0      0   11973
;;                           _lcd_init
;;                          _lcd_clear
;;                           ___awtoft
;;                            ___ftmul
;;                            _sprintf
;;                           _lcd_goto
;;                           _lcd_puts
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             1     1      0     295
;;                                              5 COMMON     1     1      0
;;                              _pause
;;                          _lcd_write
;;                          _lcd_clear
;; ---------------------------------------------------------------------------------
;; (1) _lcd_puts                                             2     0      2     135
;;                                              5 COMMON     2     0      2
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0     112
;;                                              5 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                             38    34      4   10414
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
;; (2) ___ftsub                                              6     0      6    1094
;;                                             40 BANK0      6     0      6
;;                            ___ftadd
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _scale                                               14    11      3    1688
;;                                             28 BANK0     11     8      3
;;                            ___awmod
;;                            ___awdiv
;;                            ___ftmul
;;                             ___bmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _fround                                              13    10      3    1215
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
;; (2) ___lltoft                                             5     1      4     278
;;                                              8 COMMON     5     1      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___awtoft                                             4     1      3     300
;;                                              8 COMMON     4     1      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (3) ___ftmul                                             15     9      6     535
;;                                             13 BANK0     15     9      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftadd                                             12     6      6    1049
;;                                             28 BANK0     12     6      6
;;                           ___ftpack
;;                            ___lbmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___ftmul (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _pause                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              6     2      4     296
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lldiv                                             13     5      8     162
;;                                              0 COMMON    13     5      8
;; ---------------------------------------------------------------------------------
;; (2) ___ftge                                               6     0      6     136
;;                                              0 COMMON     6     0      6
;; ---------------------------------------------------------------------------------
;; (2) ___ftneg                                              3     0      3      45
;;                                              0 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (2) ___llmod                                              9     1      8     159
;;                                             13 COMMON     1     1      0
;;                                              0 BANK0      8     0      8
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              8     4      4     300
;;                                              6 COMMON     8     4      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             13     9      4     252
;;                                              0 BANK0     13     9      4
;;                           ___ftpack (ARG)
;;                            ___awmod (ARG)
;;                            ___awdiv (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___lbmod                                              5     4      1     159
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___lbdiv                                              4     3      1     162
;;                                              5 COMMON     4     3      1
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___bmul                                               3     2      1      68
;;                                              9 COMMON     3     2      1
;;                            ___lbmod (ARG)
;;                            ___lbdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) __div_to_l_                                          20    14      6     446
;;                                              0 COMMON    14     8      6
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (2) __tdiv_to_l_                                         15     9      6     303
;;                                              0 COMMON     9     3      6
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _msecbase                                             0     0      0       0
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
;;   _lcd_clear
;;     _lcd_write
;;       _pause
;;         _msecbase
;;     _pause
;;       _msecbase
;;   ___awtoft
;;     ___ftpack
;;   ___ftmul
;;     ___ftpack
;;     ___awtoft (ARG)
;;       ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;     ___awdiv (ARG)
;;       ___awmod (ARG)
;;     ___awmod (ARG)
;;     ___bmul (ARG)
;;       ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;     ___lbdiv (ARG)
;;       ___lbmod (ARG)
;;     ___lbmod (ARG)
;;   _sprintf
;;     _isdigit
;;     ___wmul
;;     ___ftge
;;     ___ftneg
;;     ___awdiv
;;       ___awmod (ARG)
;;     _scale
;;       ___awmod
;;       ___awdiv
;;         ___awmod (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
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
;;       ___bmul
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
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
;;     _fround
;;       ___lbmod
;;       ___bmul
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___lbdiv
;;         ___lbmod (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
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
;;       ___ftadd (ARG)
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
;;           ___awtoft (ARG)
;;             ___ftpack
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
;;     ___ftadd
;;       ___ftpack
;;       ___lbmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;       ___ftmul (ARG)
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
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
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;     __div_to_l_
;;     __tdiv_to_l_
;;     ___lltoft
;;       ___ftpack
;;     ___ftsub
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
;;           ___awtoft (ARG)
;;             ___ftpack
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
;;       ___lltoft (ARG)
;;         ___ftpack
;;     ___lldiv
;;     ___llmod
;;       ___lldiv (ARG)
;;   _lcd_goto
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _lcd_puts
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _pause
;;     _msecbase
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
;;ABS                  0      0      72       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     3B      4B       5       93.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     19      19       7       31.3%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      77      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 32 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
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
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_init
;;		_lcd_clear
;;		___awtoft
;;		___ftmul
;;		_sprintf
;;		_lcd_goto
;;		_lcd_puts
;;		_pause
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
	line	32
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	34
	
l5788:	
;PWMLCD.c: 34: ANSEL = 0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	35
;PWMLCD.c: 35: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	36
;PWMLCD.c: 36: TRISA= 0x00;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	37
;PWMLCD.c: 37: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	38
	
l5790:	
;PWMLCD.c: 38: TRISD = 0x0F;
	movlw	(0Fh)
	movwf	(136)^080h	;volatile
	line	39
	
l5792:	
;PWMLCD.c: 39: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	40
	
l5794:	
;PWMLCD.c: 40: ADCON1 = 0x80;
	movlw	(080h)
	movwf	(159)^080h	;volatile
	line	42
	
l5796:	
;PWMLCD.c: 42: lcd_init();
	fcall	_lcd_init
	line	43
	
l5798:	
;PWMLCD.c: 43: lcd_clear();
	fcall	_lcd_clear
	line	47
	
l5800:	
;PWMLCD.c: 46: {
;PWMLCD.c: 47: ADCON0 = 0xD5;
	movlw	(0D5h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	48
	
l5802:	
;PWMLCD.c: 48: GO_DONE = 1;
	bsf	(249/8),(249)&7
	line	49
;PWMLCD.c: 49: while(GO_DONE);
	
l1050:	
	btfsc	(249/8),(249)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l1050
u3230:
	line	50
	
l5804:	
;PWMLCD.c: 50: num = (ADRESH << 8)|ADRESL;
	movf	(30),w	;volatile
	movwf	(_num+1)
	clrf	(_num)
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(_num),f
	line	51
;PWMLCD.c: 51: adc=num;
	movf	(_num+1),w
	movwf	(_adc+1)
	movf	(_num),w
	movwf	(_adc)
	line	52
	
l5806:	
;PWMLCD.c: 52: pwm = num*0.0048875855327468;
	movlw	0x28
	movwf	(?___ftmul)
	movlw	0xa0
	movwf	(?___ftmul+1)
	movlw	0x3b
	movwf	(?___ftmul+2)
	movf	(_num+1),w
	movwf	(?___awtoft+1)
	movf	(_num),w
	movwf	(?___awtoft)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_pwm)
	movf	(1+(?___ftmul)),w
	movwf	(_pwm+1)
	movf	(2+(?___ftmul)),w
	movwf	(_pwm+2)
	line	53
	
l5808:	
;PWMLCD.c: 53: sprintf(carac, "%1.1f",pwm);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_pwm),w
	movwf	0+(?_sprintf)+01h
	movf	(_pwm+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_pwm+2),w
	movwf	2+(?_sprintf)+01h
	movlw	(_carac)&0ffh
	fcall	_sprintf
	line	55
	
l5810:	
;PWMLCD.c: 55: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	56
	
l5812:	
;PWMLCD.c: 56: lcd_puts("PWM1:");
	movlw	low((STR_2-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	57
	
l5814:	
;PWMLCD.c: 57: lcd_puts(carac);
	movlw	(_carac&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x0/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	59
	
l5816:	
;PWMLCD.c: 59: sprintf(carac2,"%d",adc);
	movlw	((STR_3-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_adc+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_adc),w
	movwf	0+(?_sprintf)+01h
	movlw	(_carac2)&0ffh
	fcall	_sprintf
	line	61
	
l5818:	
;PWMLCD.c: 61: lcd_goto(0x09);
	movlw	(09h)
	fcall	_lcd_goto
	line	62
	
l5820:	
;PWMLCD.c: 62: lcd_puts("C5:");
	movlw	low((STR_4-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	63
	
l5822:	
;PWMLCD.c: 63: lcd_puts(carac2);
	movlw	(_carac2&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x0/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	65
	
l5824:	
;PWMLCD.c: 65: ADCON0 = 0xD9;
	movlw	(0D9h)
	movwf	(31)	;volatile
	line	66
	
l5826:	
;PWMLCD.c: 66: GO_DONE = 1;
	bsf	(249/8),(249)&7
	line	67
;PWMLCD.c: 67: while(GO_DONE);
	
l1053:	
	btfsc	(249/8),(249)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l1053
u3240:
	line	68
	
l5828:	
;PWMLCD.c: 68: num= (ADRESH<< 8)|ADRESL;
	movf	(30),w	;volatile
	movwf	(_num+1)
	clrf	(_num)
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(_num),f
	line	69
;PWMLCD.c: 69: adc=num;
	movf	(_num+1),w
	movwf	(_adc+1)
	movf	(_num),w
	movwf	(_adc)
	line	70
	
l5830:	
;PWMLCD.c: 70: pwm = num*0.0048875855327468;
	movlw	0x28
	movwf	(?___ftmul)
	movlw	0xa0
	movwf	(?___ftmul+1)
	movlw	0x3b
	movwf	(?___ftmul+2)
	movf	(_num+1),w
	movwf	(?___awtoft+1)
	movf	(_num),w
	movwf	(?___awtoft)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_pwm)
	movf	(1+(?___ftmul)),w
	movwf	(_pwm+1)
	movf	(2+(?___ftmul)),w
	movwf	(_pwm+2)
	line	71
	
l5832:	
;PWMLCD.c: 71: sprintf(carac,"%1.1f",pwm);
	movlw	((STR_5-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_pwm),w
	movwf	0+(?_sprintf)+01h
	movf	(_pwm+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_pwm+2),w
	movwf	2+(?_sprintf)+01h
	movlw	(_carac)&0ffh
	fcall	_sprintf
	line	73
	
l5834:	
;PWMLCD.c: 73: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	74
	
l5836:	
;PWMLCD.c: 74: lcd_puts("PWM2:");
	movlw	low((STR_6-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	75
	
l5838:	
;PWMLCD.c: 75: lcd_puts(carac);
	movlw	(_carac&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x0/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	77
	
l5840:	
;PWMLCD.c: 77: sprintf(carac2,"%d",adc);
	movlw	((STR_7-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_adc+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_adc),w
	movwf	0+(?_sprintf)+01h
	movlw	(_carac2)&0ffh
	fcall	_sprintf
	line	79
	
l5842:	
;PWMLCD.c: 79: lcd_goto(0x49);
	movlw	(049h)
	fcall	_lcd_goto
	line	80
	
l5844:	
;PWMLCD.c: 80: lcd_puts("C6:");
	movlw	low((STR_8-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	81
	
l5846:	
;PWMLCD.c: 81: lcd_puts(carac2);
	movlw	(_carac2&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x0/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	83
	
l5848:	
;PWMLCD.c: 83: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	goto	l5800
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	85
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text499,local,class=CODE,delta=2
global __ptext499
__ptext499:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 123 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  init_value      1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/20
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
psect	text499
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
	line	123
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	126
	
l5746:	
	line	127
	
l5748:	
;PWMLCD.c: 127: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	128
	
l5750:	
;PWMLCD.c: 128: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	129
	
l5752:	
;PWMLCD.c: 129: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(59/8),(59)&7
	line	130
	
l5754:	
;PWMLCD.c: 130: RC0 = 0;
	bcf	(56/8),(56)&7
	line	131
	
l5756:	
;PWMLCD.c: 131: RC4 = 0;
	bcf	(60/8),(60)&7
	line	133
	
l5758:	
;PWMLCD.c: 133: pause(15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	134
	
l5760:	
;PWMLCD.c: 134: PORTD = init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	135
	
l5762:	
;PWMLCD.c: 135: ((RC0 = 1 , RC0 = 0));
	bsf	(56/8),(56)&7
	
l5764:	
	bcf	(56/8),(56)&7
	line	136
;PWMLCD.c: 136: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	137
	
l5766:	
;PWMLCD.c: 137: ((RC0 = 1 , RC0 = 0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l5768:	
	bcf	(56/8),(56)&7
	line	138
;PWMLCD.c: 138: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	139
	
l5770:	
;PWMLCD.c: 139: ((RC0 = 1 , RC0 = 0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l5772:	
	bcf	(56/8),(56)&7
	line	140
;PWMLCD.c: 140: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	141
	
l5774:	
;PWMLCD.c: 141: PORTD=2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	142
	
l5776:	
;PWMLCD.c: 142: ((RC0 = 1 , RC0 = 0));
	bsf	(56/8),(56)&7
	
l5778:	
	bcf	(56/8),(56)&7
	line	144
	
l5780:	
;PWMLCD.c: 144: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	146
	
l5782:	
;PWMLCD.c: 146: lcd_write(0x0F);
	movlw	(0Fh)
	fcall	_lcd_write
	line	147
	
l5784:	
;PWMLCD.c: 147: lcd_clear();
	fcall	_lcd_clear
	line	148
	
l5786:	
;PWMLCD.c: 148: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	149
	
l1079:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_puts
psect	text500,local,class=CODE,delta=2
global __ptext500
__ptext500:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 104 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
;; Parameters:    Size  Location     Type
;;  s               2    5[COMMON] PTR const unsigned char 
;;		 -> STR_8(4), STR_6(6), STR_4(4), carac2(4), 
;;		 -> STR_2(6), carac(5), 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text500
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
	line	104
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 4
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	105
	
l5738:	
;PWMLCD.c: 105: RC3 = 1;
	bsf	(59/8),(59)&7
	line	106
;PWMLCD.c: 106: while(*s)
	goto	l5744
	line	107
	
l5740:	
;PWMLCD.c: 107: lcd_write(*s++);
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	
l5742:	
	incf	(lcd_puts@s),f
	skipnz
	incf	(lcd_puts@s+1),f
	line	106
	
l5744:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3221
	goto	u3220
u3221:
	goto	l5740
u3220:
	line	108
	
l1070:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_goto
psect	text501,local,class=CODE,delta=2
global __ptext501
__ptext501:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 117 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text501
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
	line	117
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	118
	
l5734:	
;PWMLCD.c: 118: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(59/8),(59)&7
	line	119
	
l5736:	
;PWMLCD.c: 119: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	120
	
l1076:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_sprintf
psect	text502,local,class=CODE,delta=2
global __ptext502
__ptext502:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> carac2(4), carac(5), 
;;  f               1   50[BANK0 ] PTR const unsigned char 
;;		 -> STR_7(3), STR_5(6), STR_3(3), STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  sp              1   21[BANK1 ] PTR unsigned char 
;;		 -> carac2(4), carac(5), 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text502
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 4
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@sp)^080h
	
l5446:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)^080h
	line	540
	goto	l5728
	line	542
	
l5448:	
	movf	(sprintf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u2741
	goto	u2740
u2741:
	goto	l5454
u2740:
	line	545
	
l5450:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(sprintf@c)^080h,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5452:	
	incf	(sprintf@sp)^080h,f
	line	546
	goto	l5728
	line	550
	
l5454:	
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	552
	clrf	(sprintf@flag)^080h
	clrf	(sprintf@flag+1)^080h
	line	601
	
l5456:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u2751
	goto	u2750
u2751:
	goto	l5466
u2750:
	line	602
	
l5458:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	604
	
l5460:	
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
	
l5462:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(sprintf@f),f
	line	605
	
l5464:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u2761
	goto	u2760
u2761:
	goto	l5460
u2760:
	line	614
	
l5466:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u2771
	goto	u2770
u2771:
	goto	l5480
u2770:
	line	615
	
l5468:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(sprintf@flag)^080h+(14/8),(14)&7
	line	616
	
l5470:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(sprintf@f),f
	line	624
	
l5472:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	625
	goto	l5478
	line	626
	
l5474:	
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
	
l5476:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(sprintf@f),f
	line	625
	
l5478:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u2781
	goto	u2780
u2781:
	goto	l5474
u2780:
	goto	l5486
	line	629
	
l5480:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	631
	
l5482:	
	bsf	(sprintf@flag)^080h+(12/8),(12)&7
	goto	l5486
	line	665
	
l1140:	
	line	666
	bsf	(sprintf@flag)^080h+(10/8),(10)&7
	line	667
	goto	l5488
	line	638
	
l5486:	
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
	goto	l5730
	xorlw	100^0	; case 100
	skipnz
	goto	l5488
	xorlw	102^100	; case 102
	skipnz
	goto	l1140
	xorlw	105^102	; case 105
	skipnz
	goto	l5488
	goto	l5728
	opt asmopt_on

	line	828
	
l5488:	
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
	goto	u2791
	goto	u2790
u2791:
	goto	l5648
u2790:
	line	830
	
l5490:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(sprintf@flag+1)^080h,(12)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l5494
u2800:
	line	832
	
l5492:	
	movlw	06h
	movwf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	833
	
l5494:	
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
	
l5496:	
	movlw	(03h)
	addwf	(sprintf@ap)^080h,f
	line	834
	
l5498:	
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
	goto	u2811
	goto	u2810
u2811:
	goto	l5504
u2810:
	line	835
	
l5500:	
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
	
l5502:	
	movlw	03h
	iorwf	(sprintf@flag)^080h,f
	line	838
	
l5504:	
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	line	839
	
l5506:	
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u2821
	goto	u2820
u2821:
	goto	l5536
u2820:
	line	840
	
l5508:	
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
u2835:
	clrc
	rrf	(??_sprintf+0)+3,f
	rrf	(??_sprintf+0)+2,f
	rrf	(??_sprintf+0)+1,f
	rrf	(??_sprintf+0)+0,f
u2830:
	addlw	-1
	skipz
	goto	u2835
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@exp)^080h
	
l5510:	
	movlw	0FFh
	andwf	(sprintf@exp)^080h,f
	clrf	(sprintf@exp+1)^080h
	
l5512:	
	movlw	-126
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	841
	
l5514:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	842
	
l5516:	
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
	
l5518:	
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
	
l5520:	
	btfss	(sprintf@exp+1)^080h,7
	goto	u2841
	goto	u2840
u2841:
	goto	l5524
u2840:
	line	845
	
l5522:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	849
	
l5524:	
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
	
l5526:	
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
	
l5528:	
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
	goto	u2851
	goto	u2850
u2851:
	goto	l5532
u2850:
	line	852
	
l5530:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	goto	l5536
	line	853
	
l5532:	
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
	goto	u2861
	goto	u2860
u2861:
	goto	l5536
u2860:
	line	854
	
l5534:	
	incf	(sprintf@exp)^080h,f
	skipnz
	incf	(sprintf@exp+1)^080h,f
	line	1115
	
l5536:	
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2875
	movlw	low(0Dh)
	subwf	(sprintf@prec)^080h,w
u2875:

	skipnc
	goto	u2871
	goto	u2870
u2871:
	goto	l5540
u2870:
	line	1116
	
l5538:	
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
	
l5540:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2885
	movlw	low(0Ah)
	subwf	(sprintf@exp)^080h,w
u2885:

	skipnc
	goto	u2881
	goto	u2880
u2881:
	goto	l5548
u2880:
	
l5542:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u2891
	goto	u2890
u2891:
	goto	l5564
u2890:
	
l5544:	
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
	goto	u2901
	goto	u2900
u2901:
	goto	l5564
u2900:
	
l5546:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2915
	movlw	low(02h)
	subwf	(sprintf@exp)^080h,w
u2915:

	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l5564
u2910:
	line	1123
	
l5548:	
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
	goto	u2921
	goto	u2920
u2921:
	goto	l5552
u2920:
	line	1124
	
l5550:	
	movlw	-9
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	1125
	goto	l5554
	line	1126
	
l5552:	
	movlw	-8
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	1128
	
l5554:	
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
	
l5558:	
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
	movwf	(_sprintf$1897+3)^080h
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1897+2)^080h
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1897+1)^080h
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1897)^080h

	
l5560:	
	movf	(_sprintf$1897+3)^080h,w
	movwf	(sprintf@_val+3)^080h
	movf	(_sprintf$1897+2)^080h,w
	movwf	(sprintf@_val+2)^080h
	movf	(_sprintf$1897+1)^080h,w
	movwf	(sprintf@_val+1)^080h
	movf	(_sprintf$1897)^080h,w
	movwf	(sprintf@_val)^080h

	line	1132
	
l5562:	
	clrf	(sprintf@fval)^080h
	clrf	(sprintf@fval+1)^080h
	clrf	(sprintf@fval+2)^080h
	line	1133
	goto	l5568
	line	1134
	
l5564:	
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
	
l5566:	
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	line	1139
	
l5568:	
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	line	1140
	
l5574:	
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
	goto	u2935
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+2)^080h,w
	skipz
	goto	u2935
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u2935
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val)^080h,w
u2935:
	skipnc
	goto	u2931
	goto	u2930
u2931:
	goto	l5578
u2930:
	goto	l5582
	line	1139
	
l5578:	
	incf	(sprintf@c)^080h,f
	
l5580:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l5574
u2940:
	line	1145
	
l5582:	
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
	
l5584:	
	movf	(sprintf@prec+1)^080h,w
	iorwf	(sprintf@prec)^080h,w
	skipnz
	goto	u2951
	goto	u2950
u2951:
	goto	l5588
u2950:
	line	1151
	
l5586:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	line	1152
	
l5588:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l5598
u2960:
	line	1153
	
l5590:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	goto	l5598
	line	1182
	
l5592:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(020h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5594:	
	incf	(sprintf@sp)^080h,f
	goto	l5590
	line	1181
	
l5598:	
	movf	(sprintf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2975
	movlw	low(01h)
	subwf	(sprintf@width)^080h,w
u2975:

	skipnc
	goto	u2971
	goto	u2970
u2971:
	goto	l5592
u2970:
	line	1189
	
l5600:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l5610
u2980:
	line	1191
	
l5602:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5604:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(sprintf@sp)^080h,f
	goto	l5610
	line	1201
	
l5606:	
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
	goto	l5604
	line	1197
	
l5610:	
	decf	(sprintf@c)^080h,f
	incf	((sprintf@c)^080h),w
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l5606
u2990:
	goto	l5618
	line	1205
	
l5612:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(030h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5614:	
	incf	(sprintf@sp)^080h,f
	line	1206
	
l5616:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	1204
	
l5618:	
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3005
	movlw	low(01h)
	subwf	(sprintf@exp)^080h,w
u3005:

	skipnc
	goto	u3001
	goto	u3000
u3001:
	goto	l5612
u3000:
	line	1208
	
l5620:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3015
	movlw	low(09h)
	subwf	(sprintf@prec)^080h,w
u3015:

	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l5624
u3010:
	line	1209
	
l5622:	
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	goto	l1180
	line	1211
	
l5624:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	movwf	(sprintf@c)^080h
	
l1180:	
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
	goto	u3020
	goto	l5630
u3020:
	line	1218
	
l5626:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(02Eh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5628:	
	incf	(sprintf@sp)^080h,f
	line	1224
	
l5630:	
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
	goto	l5638
	line	1226
	
l5632:	
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
	
l5634:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(sprintf@sp)^080h,f
	line	1227
	
l5636:	
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
	
l5638:	
	decf	(sprintf@c)^080h,f
	incf	((sprintf@c)^080h),w
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l5632
u3030:
	goto	l5646
	line	1231
	
l5640:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(030h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5642:	
	incf	(sprintf@sp)^080h,f
	line	1232
	
l5644:	
	movlw	-1
	addwf	(sprintf@prec)^080h,f
	skipc
	decf	(sprintf@prec+1)^080h,f
	line	1230
	
l5646:	
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l5640
u3040:
	goto	l5728
	line	1254
	
l5648:	
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
	
l5650:	
	incf	(sprintf@ap)^080h,f
	incf	(sprintf@ap)^080h,f
	line	1256
	
l5652:	
	btfss	(sprintf@_val+3)^080h,7
	goto	u3051
	goto	u3050
u3051:
	goto	l5658
u3050:
	line	1257
	
l5654:	
	movlw	03h
	iorwf	(sprintf@flag)^080h,f
	line	1258
	
l5656:	
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
	
l5658:	
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l5664
u3060:
	
l5660:	
	movf	(sprintf@_val+3)^080h,w
	iorwf	(sprintf@_val+2)^080h,w
	iorwf	(sprintf@_val+1)^080h,w
	iorwf	(sprintf@_val)^080h,w
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l5664
u3070:
	line	1286
	
l5662:	
	incf	(sprintf@prec)^080h,f
	skipnz
	incf	(sprintf@prec+1)^080h,f
	line	1300
	
l5664:	
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	line	1301
	
l5670:	
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
	goto	u3085
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+2)^080h,w
	skipz
	goto	u3085
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u3085
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val)^080h,w
u3085:
	skipnc
	goto	u3081
	goto	u3080
u3081:
	goto	l5674
u3080:
	goto	l5678
	line	1300
	
l5674:	
	incf	(sprintf@c)^080h,f
	
l5676:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l5670
u3090:
	line	1334
	
l5678:	
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
	goto	u3105
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_sprintf+0)+0,w
u3105:

	skipnc
	goto	u3101
	goto	u3100
u3101:
	goto	l5682
u3100:
	line	1335
	
l5680:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	movwf	(sprintf@c)^080h
	goto	l5686
	line	1336
	
l5682:	
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
	goto	u3115
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@prec)^080h,w
u3115:

	skipnc
	goto	u3111
	goto	u3110
u3111:
	goto	l5686
u3110:
	line	1337
	
l5684:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	movwf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	btfsc	(sprintf@prec)^080h,7
	decf	(sprintf@prec+1)^080h,f
	line	1340
	
l5686:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3121
	goto	u3120
u3121:
	goto	l5692
u3120:
	
l5688:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l5692
u3130:
	line	1341
	
l5690:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	line	1343
	
l5692:	
	btfss	(sprintf@flag+1)^080h,(14)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l5700
u3140:
	line	1344
	
l5694:	
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
	goto	u3155
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width)^080h,w
	subwf	(sprintf@prec)^080h,w
u3155:

	skipnc
	goto	u3151
	goto	u3150
u3151:
	goto	l5698
u3150:
	line	1345
	
l5696:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	subwf	(sprintf@width)^080h,f
	movf	(sprintf@prec+1)^080h,w
	skipc
	decf	(sprintf@width+1)^080h,f
	subwf	(sprintf@width+1)^080h,f
	goto	l5700
	line	1347
	
l5698:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	1376
	
l5700:	
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
	goto	u3165
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_sprintf+0)+0,w
u3165:

	skipnc
	goto	u3161
	goto	u3160
u3161:
	goto	l5704
u3160:
	line	1377
	
l5702:	
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
	goto	l5706
	line	1379
	
l5704:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	1423
	
l5706:	
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3171
	goto	u3170
u3171:
	goto	l5714
u3170:
	line	1425
	
l5708:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(020h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5710:	
	incf	(sprintf@sp)^080h,f
	line	1426
	
l5712:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	movf	(((sprintf@width+1)^080h)),w
	iorwf	(((sprintf@width)^080h)),w
	skipz
	goto	u3181
	goto	u3180
u3181:
	goto	l5708
u3180:
	line	1433
	
l5714:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l5726
u3190:
	line	1434
	
l5716:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5718:	
	incf	(sprintf@sp)^080h,f
	goto	l5726
	line	1484
	
l5720:	
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
	
l5722:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(sprintf@c)^080h,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l5718
	line	1469
	
l5726:	
	movlw	-1
	addwf	(sprintf@prec)^080h,f
	skipc
	decf	(sprintf@prec+1)^080h,f
	incf	((sprintf@prec)^080h),w
	skipnz
	incf	((sprintf@prec+1)^080h),w

	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l5720
u3200:
	line	540
	
l5728:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@c)^080h
	movf	((sprintf@c)^080h),f
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l5448
u3210:
	line	1530
	
l5730:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1533
	
l1210:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_lcd_clear
psect	text503,local,class=CODE,delta=2
global __ptext503
__ptext503:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 97 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 11F/0
;;		Unchanged: FFE80/0
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
psect	text503
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
	line	97
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	98
	
l5442:	
;PWMLCD.c: 98: RC3 = 0;
	bcf	(59/8),(59)&7
	line	99
	
l5444:	
;PWMLCD.c: 99: lcd_write(0x01);
	movlw	(01h)
	fcall	_lcd_write
	line	100
;PWMLCD.c: 100: pause (2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	101
	
l1064:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	___ftsub
psect	text504,local,class=CODE,delta=2
global __ptext504
__ptext504:

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
psect	text504
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 4
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l5436:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	19
	
l5438:	
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
	
l2291:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text505,local,class=CODE,delta=2
global __ptext505
__ptext505:

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
psect	text505
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	422
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
	opt	stack 4
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	line	424
	bcf	status, 5	;RP0=0, select bank0
	movwf	(scale@scl)
	
l5396:	
	btfss	(scale@scl),7
	goto	u2691
	goto	u2690
u2691:
	goto	l5418
u2690:
	line	425
	
l5398:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l5400:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l5408
u2700:
	line	427
	
l5402:	
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
	movwf	(_scale$2835)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$2835+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$2835+2)
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
	movf	(_scale$2835),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$2835+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$2835+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1118
	line	428
	
l5408:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l5414
u2710:
	line	429
	
l5410:	
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
	goto	l1118
	line	430
	
l5414:	
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
	goto	l1118
	line	432
	
l5418:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l5426
u2720:
	line	433
	
l5420:	
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
	movwf	(_scale$2835)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$2835+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$2835+2)
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
	movf	(_scale$2835),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$2835+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$2835+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1118
	line	434
	
l5426:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l5432
u2730:
	line	435
	
l5428:	
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
	goto	l1118
	line	436
	
l5432:	
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
	
l1118:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text506,local,class=CODE,delta=2
global __ptext506
__ptext506:

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
psect	text506
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	406
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
	opt	stack 4
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	line	409
	bcf	status, 5	;RP0=0, select bank0
	movwf	(fround@prec)
	
l5374:	
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l5384
u2670:
	line	410
	
l5376:	
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
	movwf	(_fround$2833)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2833+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2833+2)
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
	movf	(_fround$2833),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2833+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2833+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$2834)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2834+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2834+2)
	
l5378:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$2834),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2834+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2834+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l1111
	line	411
	
l5384:	
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l5392
u2680:
	line	412
	
l5386:	
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
	movwf	(_fround$2833)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2833+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2833+2)
	
l5388:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$2833),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2833+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2833+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l1111
	line	413
	
l5392:	
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
	
l1111:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_lcd_write
psect	text507,local,class=CODE,delta=2
global __ptext507
__ptext507:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 88 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
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
psect	text507
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
	line	88
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	89
	
l5360:	
;PWMLCD.c: 89: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	90
	
l5362:	
;PWMLCD.c: 90: PORTD = ( ( c >> 4) & 0x0F);
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	91
	
l5364:	
;PWMLCD.c: 91: ((RC0 = 1 , RC0 = 0));
	bsf	(56/8),(56)&7
	
l5366:	
	bcf	(56/8),(56)&7
	line	92
	
l5368:	
;PWMLCD.c: 92: PORTD = (c & 0x0F);
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	93
	
l5370:	
;PWMLCD.c: 93: ((RC0 = 1 , RC0 = 0));
	bsf	(56/8),(56)&7
	
l5372:	
	bcf	(56/8),(56)&7
	line	94
	
l1061:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	___lltoft
psect	text508,local,class=CODE,delta=2
global __ptext508
__ptext508:

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
psect	text508
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 5
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l5350:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l5354
	line	42
	
l5352:	
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l5354:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l5352
u2660:
	line	45
	
l5356:	
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
	
l2448:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___awtoft
psect	text509,local,class=CODE,delta=2
global __ptext509
__ptext509:

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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text509
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 6
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l5338:	
	clrf	(___awtoft@sign)
	line	37
	
l5340:	
	btfss	(___awtoft@c+1),7
	goto	u2651
	goto	u2650
u2651:
	goto	l5346
u2650:
	line	38
	
l5342:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l5344:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l5346:	
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
	
l2345:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text510,local,class=CODE,delta=2
global __ptext510
__ptext510:

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
;;		_main
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text510
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l5282:	
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
	goto	u2571
	goto	u2570
u2571:
	goto	l5288
u2570:
	line	57
	
l5284:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2307
	line	58
	
l5288:	
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
	goto	u2581
	goto	u2580
u2581:
	goto	l5294
u2580:
	line	59
	
l5290:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2307
	line	60
	
l5294:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l5296:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l5298:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l5300:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l5302:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l5304:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l5306:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l5308:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l5310:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l5312:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l5316
u2590:
	line	72
	
l5314:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2601
	addwf	(___ftmul@f3_as_product+1),f
u2601:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2602
	addwf	(___ftmul@f3_as_product+2),f
u2602:

	line	73
	
l5316:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l5318:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l5320:	
	decfsz	(___ftmul@cntr),f
	goto	u2611
	goto	u2610
u2611:
	goto	l5312
u2610:
	line	76
	
l5322:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l5324:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l5328
u2620:
	line	79
	
l5326:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2631
	addwf	(___ftmul@f3_as_product+1),f
u2631:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2632
	addwf	(___ftmul@f3_as_product+2),f
u2632:

	line	80
	
l5328:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l5330:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l5332:	
	decfsz	(___ftmul@cntr),f
	goto	u2641
	goto	u2640
u2641:
	goto	l5324
u2640:
	line	83
	
l5334:	
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
	
l2307:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text511,local,class=CODE,delta=2
global __ptext511
__ptext511:

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
psect	text511
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 4
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l5204:	
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
	
l5206:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2370
	goto	l5212
u2370:
	
l5208:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2381
	goto	u2380
u2381:
	goto	l5216
u2380:
	
l5210:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l5216
u2390:
	line	93
	
l5212:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2255
	line	94
	
l5216:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2400
	goto	l2258
u2400:
	
l5218:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2411
	goto	u2410
u2411:
	goto	l5222
u2410:
	
l5220:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l5222
u2420:
	
l2258:	
	line	95
	goto	l2255
	line	96
	
l5222:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l5224:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l2259
u2430:
	line	98
	
l5226:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2259:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l2260
u2440:
	line	100
	
l5228:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2260:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l5230:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l5232:	
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
	goto	u2451
	goto	u2450
u2451:
	goto	l5244
u2450:
	line	110
	
l5234:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l5236:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2461
	goto	u2460
u2461:
	goto	l5242
u2460:
	
l5238:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l5234
u2470:
	goto	l5242
	line	114
	
l5240:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l5242:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l5240
u2480:
	goto	l2269
	line	117
	
l5244:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2491
	goto	u2490
u2491:
	goto	l2269
u2490:
	line	121
	
l5246:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l5248:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2501
	goto	u2500
u2501:
	goto	l5254
u2500:
	
l5250:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l5246
u2510:
	goto	l5254
	line	125
	
l5252:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l5254:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l5252
u2520:
	line	129
	
l2269:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l5260
u2530:
	line	131
	
l5256:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l5258:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l5260:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l5266
u2540:
	line	136
	
l5262:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l5264:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l5266:	
	clrf	(___ftadd@sign)
	line	140
	
l5268:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2551
	addwf	(___ftadd@f2+1),f
u2551:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2552
	addwf	(___ftadd@f2+2),f
u2552:

	line	141
	
l5270:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l5278
u2560:
	line	142
	
l5272:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l5274:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l5276:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l5278:	
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
	
l2255:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_pause
psect	text512,local,class=CODE,delta=2
global __ptext512
__ptext512:

;; *************** function _pause *****************
;; Defined at:
;;		line 153 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
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
;;		_lcd_write
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text512
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
	line	153
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 6
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	156
	
l5196:	
;PWMLCD.c: 154: unsigned short x;
;PWMLCD.c: 156: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l5202
	line	158
	
l5198:	
;PWMLCD.c: 157: {
;PWMLCD.c: 158: msecbase();
	fcall	_msecbase
	line	156
	
l5200:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l5202:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u2365
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u2365:
	skipnc
	goto	u2361
	goto	u2360
u2361:
	goto	l5198
u2360:
	line	160
	
l1085:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	___awmod
psect	text513,local,class=CODE,delta=2
global __ptext513
__ptext513:

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
psect	text513
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l5160:	
	clrf	(___awmod@sign)
	line	9
	
l5162:	
	btfss	(___awmod@dividend+1),7
	goto	u2291
	goto	u2290
u2291:
	goto	l5168
u2290:
	line	10
	
l5164:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l5166:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l5168:	
	btfss	(___awmod@divisor+1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l5172
u2300:
	line	14
	
l5170:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l5172:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2311
	goto	u2310
u2311:
	goto	l5188
u2310:
	line	16
	
l5174:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l5178
	line	18
	
l5176:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l5178:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l5176
u2320:
	line	22
	
l5180:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2335
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2335:
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l5184
u2330:
	line	23
	
l5182:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l5184:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l5186:	
	decfsz	(___awmod@counter),f
	goto	u2341
	goto	u2340
u2341:
	goto	l5180
u2340:
	line	27
	
l5188:	
	movf	(___awmod@sign),w
	skipz
	goto	u2350
	goto	l5192
u2350:
	line	28
	
l5190:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l5192:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l2426:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text514,local,class=CODE,delta=2
global __ptext514
__ptext514:

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
psect	text514
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 6
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l5134:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l5136:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u2251
	goto	u2250
u2251:
	goto	l5156
u2250:
	line	11
	
l5138:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l5142
	line	13
	
l5140:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l5142:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l5140
u2260:
	line	17
	
l5144:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l5146:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u2275
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u2275
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u2275
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u2275:
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l5152
u2270:
	line	19
	
l5148:	
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
	
l5150:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l5152:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l5154:	
	decfsz	(___lldiv@counter),f
	goto	u2281
	goto	u2280
u2281:
	goto	l5144
u2280:
	line	25
	
l5156:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l2387:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text515,local,class=CODE,delta=2
global __ptext515
__ptext515:

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
psect	text515
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 6
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l5114:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l5118
u2220:
	line	7
	
l5116:	
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
	
l5118:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l5122
u2230:
	line	9
	
l5120:	
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
	
l5122:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l5124:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l5126:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2245
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2245
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2245:
	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l5130
u2240:
	
l5128:	
	clrc
	
	goto	l2377
	
l5130:	
	setc
	
	line	13
	
l2377:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text516,local,class=CODE,delta=2
global __ptext516
__ptext516:

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
psect	text516
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 6
; Regs used in ___ftneg: [wreg]
	line	17
	
l5106:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2211
	goto	u2210
u2211:
	goto	l5110
u2210:
	line	18
	
l5108:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l5110:	
	line	20
	
l2372:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text517,local,class=CODE,delta=2
global __ptext517
__ptext517:

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
psect	text517
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 6
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l5086:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u2171
	goto	u2170
u2171:
	goto	l5102
u2170:
	line	9
	
l5088:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	10
	goto	l5092
	line	11
	
l5090:	
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	12
	incf	(___llmod@counter),f
	line	10
	
l5092:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l5090
u2180:
	line	15
	
l5094:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u2195
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u2195
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u2195
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u2195:
	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l5098
u2190:
	line	16
	
l5096:	
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
	
l5098:	
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	18
	
l5100:	
	decfsz	(___llmod@counter),f
	goto	u2201
	goto	u2200
u2201:
	goto	l5094
u2200:
	line	20
	
l5102:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	21
	
l2368:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text518,local,class=CODE,delta=2
global __ptext518
__ptext518:

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
psect	text518
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l5042:	
	clrf	(___awdiv@sign)
	line	10
	
l5044:	
	btfss	(___awdiv@divisor+1),7
	goto	u2101
	goto	u2100
u2101:
	goto	l5050
u2100:
	line	11
	
l5046:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l5048:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l5050:	
	btfss	(___awdiv@dividend+1),7
	goto	u2111
	goto	u2110
u2111:
	goto	l5056
u2110:
	line	15
	
l5052:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l5054:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l5056:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l5058:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2121
	goto	u2120
u2121:
	goto	l5078
u2120:
	line	20
	
l5060:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l5064
	line	22
	
l5062:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l5064:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2131
	goto	u2130
u2131:
	goto	l5062
u2130:
	line	26
	
l5066:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l5068:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2145
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2145:
	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l5074
u2140:
	line	28
	
l5070:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l5072:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l5074:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l5076:	
	decfsz	(___awdiv@counter),f
	goto	u2151
	goto	u2150
u2151:
	goto	l5066
u2150:
	line	34
	
l5078:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2160
	goto	l5082
u2160:
	line	35
	
l5080:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l5082:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2358:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text519,local,class=CODE,delta=2
global __ptext519
__ptext519:

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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text519
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l5004:	
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
	goto	u2021
	goto	u2020
u2021:
	goto	l5008
u2020:
	line	50
	
l5006:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l2318
	line	51
	
l5008:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2035:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2030:
	addlw	-1
	skipz
	goto	u2035
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l5010:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l5012:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l5014:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l5016:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l5018:	
	btfss	(___fttol@exp1),7
	goto	u2041
	goto	u2040
u2041:
	goto	l5028
u2040:
	line	57
	
l5020:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2051
	goto	u2050
u2051:
	goto	l5024
u2050:
	goto	l5006
	line	60
	
l5024:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l5026:	
	incfsz	(___fttol@exp1),f
	goto	u2061
	goto	u2060
u2061:
	goto	l5024
u2060:
	goto	l5034
	line	63
	
l5028:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2071
	goto	u2070
u2071:
	goto	l2325
u2070:
	goto	l5006
	line	66
	
l5032:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l2325:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u2081
	goto	u2080
u2081:
	goto	l5032
u2080:
	line	70
	
l5034:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2090
	goto	l5038
u2090:
	line	71
	
l5036:	
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
	
l5038:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l2318:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text520,local,class=CODE,delta=2
global __ptext520
__ptext520:

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
psect	text520
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l4976:	
	movf	(___ftpack@exp),w
	skipz
	goto	u1950
	goto	l4980
u1950:
	
l4978:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1961
	goto	u1960
u1961:
	goto	l4986
u1960:
	line	65
	
l4980:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l2577
	line	67
	
l4984:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l4986:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1971
	goto	u1970
u1971:
	goto	l4984
u1970:
	goto	l4990
	line	71
	
l4988:	
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
	
l4990:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1981
	goto	u1980
u1981:
	goto	l4988
u1980:
	goto	l4994
	line	76
	
l4992:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l4994:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1991
	goto	u1990
u1991:
	goto	l4992
u1990:
	
l2586:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2001
	goto	u2000
u2001:
	goto	l2587
u2000:
	line	80
	
l4996:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l2587:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l4998:	
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
	
l5000:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2010
	goto	l2588
u2010:
	line	84
	
l5002:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2588:	
	line	85
	line	86
	
l2577:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lbmod
psect	text521,local,class=CODE,delta=2
global __ptext521
__ptext521:

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
psect	text521
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 5
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
l4958:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l4960:	
	clrf	(___lbmod@rem)
	line	12
	
l4962:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1925:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1925
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l4964:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l4966:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1931
	goto	u1930
u1931:
	goto	l4970
u1930:
	line	15
	
l4968:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l4970:	
	decfsz	(___lbmod@counter),f
	goto	u1941
	goto	u1940
u1941:
	goto	l4962
u1940:
	line	17
	
l4972:	
	movf	(___lbmod@rem),w
	line	18
	
l2247:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text522,local,class=CODE,delta=2
global __ptext522
__ptext522:

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
psect	text522
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 5
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l4934:	
	clrf	(___lbdiv@quotient)
	line	10
	
l4936:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u1880
	goto	l4954
u1880:
	line	11
	
l4938:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l4942
	
l2236:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l4940:	
	incf	(___lbdiv@counter),f
	line	12
	
l4942:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1891
	goto	u1890
u1891:
	goto	l2236
u1890:
	line	16
	
l2238:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l4944:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1901
	goto	u1900
u1901:
	goto	l4950
u1900:
	line	19
	
l4946:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l4948:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l4950:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l4952:	
	decfsz	(___lbdiv@counter),f
	goto	u1911
	goto	u1910
u1911:
	goto	l2238
u1910:
	line	25
	
l4954:	
	movf	(___lbdiv@quotient),w
	line	26
	
l2241:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text523,local,class=CODE,delta=2
global __ptext523
__ptext523:

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
psect	text523
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l4918:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l4920:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1861
	goto	u1860
u1861:
	goto	l4924
u1860:
	line	8
	
l4922:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l4924:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l4926:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l4928:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1871
	goto	u1870
u1871:
	goto	l4920
u1870:
	line	12
	
l4930:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2211:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text524,local,class=CODE,delta=2
global __ptext524
__ptext524:

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
psect	text524
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l4902:	
	clrf	(___bmul@product)
	line	7
	
l4904:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1841
	goto	u1840
u1841:
	goto	l4908
u1840:
	line	8
	
l4906:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l4908:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l4910:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l4912:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u1851
	goto	u1850
u1851:
	goto	l4904
u1850:
	line	12
	
l4914:	
	movf	(___bmul@product),w
	line	13
	
l2205:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text525,local,class=CODE,delta=2
global __ptext525
__ptext525:

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
psect	text525
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 6
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l4856:	
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
	goto	u1751
	goto	u1750
u1751:
	goto	l4860
u1750:
	line	67
	
l4858:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l2495
	line	68
	
l4860:	
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
	goto	u1761
	goto	u1760
u1761:
	goto	l4864
u1760:
	goto	l4858
	line	70
	
l4864:	
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
	
l4866:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l4868:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l4870:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l4872:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l4874:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l4876:	
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
	goto	u1775
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u1775
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u1775
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u1775:
	skipc
	goto	u1771
	goto	u1770
u1771:
	goto	l2498
u1770:
	line	81
	
l4878:	
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
	
l4880:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l2498:	
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
	
l4882:	
	decfsz	(__div_to_l_@cntr),f
	goto	u1781
	goto	u1780
u1781:
	goto	l4874
u1780:
	
l2499:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u1791
	goto	u1790
u1791:
	goto	l4892
u1790:
	line	87
	
l4884:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u1801
	goto	u1800
u1801:
	goto	l4888
u1800:
	goto	l4858
	line	90
	
l4888:	
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l4890:	
	incfsz	(__div_to_l_@exp1),f
	goto	u1811
	goto	u1810
u1811:
	goto	l4888
u1810:
	goto	l4898
	line	93
	
l4892:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u1821
	goto	u1820
u1821:
	goto	l2506
u1820:
	goto	l4858
	line	96
	
l4896:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l2506:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u1831
	goto	u1830
u1831:
	goto	l4896
u1830:
	line	100
	
l4898:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l2495:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text526,local,class=CODE,delta=2
global __ptext526
__ptext526:

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
psect	text526
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 6
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l4808:	
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
	goto	u1661
	goto	u1660
u1661:
	goto	l4812
u1660:
	line	67
	
l4810:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l2452
	line	68
	
l4812:	
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
	goto	u1671
	goto	u1670
u1671:
	goto	l2453
u1670:
	goto	l4810
	line	69
	
l2453:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l4816:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l4818:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l4820:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l4822:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l4824:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l4826:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l4828:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u1685
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u1685
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u1685:
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l4834
u1680:
	line	81
	
l4830:	
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
	
l4832:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l4834:	
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l4836:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u1691
	goto	u1690
u1691:
	goto	l4826
u1690:
	
l2456:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u1701
	goto	u1700
u1701:
	goto	l4846
u1700:
	line	87
	
l4838:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u1711
	goto	u1710
u1711:
	goto	l4842
u1710:
	goto	l4810
	line	90
	
l4842:	
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l4844:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u1721
	goto	u1720
u1721:
	goto	l4842
u1720:
	goto	l4852
	line	93
	
l4846:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l2463
u1730:
	goto	l4810
	line	96
	
l4850:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l2463:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u1741
	goto	u1740
u1741:
	goto	l4850
u1740:
	line	100
	
l4852:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l2452:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text527,local,class=CODE,delta=2
global __ptext527
__ptext527:

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
psect	text527
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
	line	13
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 6
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l4796:	
	clrf	(_isdigit$2405)
	
l4798:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u1641
	goto	u1640
u1641:
	goto	l4804
u1640:
	
l4800:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l4804
u1650:
	
l4802:	
	clrf	(_isdigit$2405)
	incf	(_isdigit$2405),f
	
l4804:	
	rrf	(_isdigit$2405),w
	
	line	15
	
l2195:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_msecbase
psect	text528,local,class=CODE,delta=2
global __ptext528
__ptext528:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 163 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
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
psect	text528
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\PWMLCD\PWMLCD.c"
	line	163
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 6
; Regs used in _msecbase: [wreg]
	line	164
	
l4794:	
;PWMLCD.c: 164: OPTION_REG = 0b11010001;
	movlw	(0D1h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	165
;PWMLCD.c: 165: TMR0 = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	167
;PWMLCD.c: 167: while(!T0IF);
	
l1088:	
	btfss	(90/8),(90)&7
	goto	u1631
	goto	u1630
u1631:
	goto	l1088
u1630:
	
l1090:	
	line	168
;PWMLCD.c: 168: T0IF = 0;
	bcf	(90/8),(90)&7
	line	169
	
l1091:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
psect	text529,local,class=CODE,delta=2
global __ptext529
__ptext529:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
