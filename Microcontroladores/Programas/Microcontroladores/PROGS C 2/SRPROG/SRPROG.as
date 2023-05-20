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
# 10 "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	psect config,class=CONFIG,delta=2 ;#
# 10 "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF& 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 11 "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	psect config,class=CONFIG,delta=2 ;#
# 11 "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_init_comms
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_getch
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_wait_sensor
	FNCALL	_main,_distance
	FNCALL	_main,_printf
	FNCALL	_main,___lwdiv
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,__doprnt
	FNCALL	_printf,__doprnt
	FNCALL	_lcd_init,_pause
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_init,_lcd_clear
	FNCALL	__doprnt,Fake
	FNCALL	__doprnt,_putch
	FNCALL	__doprnt,_isdigit
	FNCALL	__doprnt,___wmul
	FNCALL	__doprnt,___ftge
	FNCALL	__doprnt,___ftneg
	FNCALL	__doprnt,___awdiv
	FNCALL	__doprnt,_scale
	FNCALL	__doprnt,___ftmul
	FNCALL	__doprnt,_fround
	FNCALL	__doprnt,___ftadd
	FNCALL	__doprnt,___fttol
	FNCALL	__doprnt,__div_to_l_
	FNCALL	__doprnt,__tdiv_to_l_
	FNCALL	__doprnt,___lltoft
	FNCALL	__doprnt,___ftsub
	FNCALL	__doprnt,___lldiv
	FNCALL	__doprnt,___llmod
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_pause
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_goto,_lcd_write
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
	FNCALL	_distance,___awtoft
	FNCALL	_distance,___ftge
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
	global	_carac1
	global	_dist
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_T1CON
_T1CON	set	16
	global	_TMR0
_TMR0	set	1
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
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
	global	_TMR1ON
_TMR1ON	set	128
	global	_TXIF
_TXIF	set	100
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_OSCCON
_OSCCON	set	143
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_TXSTA
_TXSTA	set	152
	global	_TRISB1
_TRISB1	set	1073
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
	
STR_1:	
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	73	;'I'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	79	;'O'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_2:	
	retlw	83	;'S'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	0
psect	strings
	
STR_5:	
	retlw	68	;'D'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_8:	
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	0
psect	strings
	
STR_4:	
	retlw	37	;'%'
	retlw	51	;'3'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_7:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_6:	
	retlw	99	;'c'
	retlw	109	;'m'
	retlw	0
psect	strings
	
STR_3:	
	retlw	48	;'0'
	retlw	0
psect	strings
STR_9	equ	STR_3+0
	file	"SRPROG.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_carac1:
       ds      3

_dist:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	__doprnt$1925
__doprnt$1925:	; 4 bytes @ 0x0
	ds	4
	global	__doprnt@flag
__doprnt@flag:	; 2 bytes @ 0x4
	ds	2
	global	__doprnt@integ
__doprnt@integ:	; 3 bytes @ 0x6
	ds	3
	global	__doprnt@width
__doprnt@width:	; 2 bytes @ 0x9
	ds	2
	global	__doprnt@prec
__doprnt@prec:	; 2 bytes @ 0xB
	ds	2
	global	__doprnt@_val
__doprnt@_val:	; 4 bytes @ 0xD
	ds	4
	global	__doprnt@exp
__doprnt@exp:	; 2 bytes @ 0x11
	ds	2
	global	__doprnt@fval
__doprnt@fval:	; 3 bytes @ 0x13
	ds	3
	global	__doprnt@c
__doprnt@c:	; 1 bytes @ 0x16
	ds	1
	global	__doprnt@pb
__doprnt@pb:	; 1 bytes @ 0x17
	ds	1
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
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
	global	?___ftge
?___ftge:	; 1 bit 
	global	?_getch
?_getch:	; 1 bytes @ 0x0
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x0
	global	?_wait_sensor
?_wait_sensor:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
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
	global	_isdigit$2433
_isdigit$2433:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	global	pause@usvalue
pause@usvalue:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
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
	global	??_wait_sensor
??_wait_sensor:	; 0 bytes @ 0x2
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x2
	global	wait_sensor@i
wait_sensor@i:	; 2 bytes @ 0x2
	global	pause@x
pause@x:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
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
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
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
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x5
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x5
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x5
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
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
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
	global	?_distance
?_distance:	; 2 bytes @ 0xC
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
	global	??_printf
??_printf:	; 0 bytes @ 0xE
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0xE
	global	??_putch
??_putch:	; 0 bytes @ 0xE
	global	??_distance
??_distance:	; 0 bytes @ 0xE
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
	global	distance@ticks
distance@ticks:	; 1 bytes @ 0x0
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
	global	?_putch
?_putch:	; 0 bytes @ 0x8
	global	putch@byte
putch@byte:	; 1 bytes @ 0x8
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
	global	_scale$2923
_scale$2923:	; 3 bytes @ 0x23
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
	global	_fround$2922
_fround$2922:	; 3 bytes @ 0x2B
	ds	3
	global	_fround$2921
_fround$2921:	; 3 bytes @ 0x2E
	ds	3
	global	fround@prec
fround@prec:	; 1 bytes @ 0x31
	ds	1
	global	?__doprnt
?__doprnt:	; 2 bytes @ 0x32
	global	__doprnt@f
__doprnt@f:	; 1 bytes @ 0x32
	ds	1
	global	__doprnt@ap
__doprnt@ap:	; 1 bytes @ 0x33
	ds	1
	global	??__doprnt
??__doprnt:	; 0 bytes @ 0x34
	ds	5
	global	?_printf
?_printf:	; 2 bytes @ 0x39
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x39
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x39
	ds	2
	global	printf@f
printf@f:	; 1 bytes @ 0x3B
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x3C
	global	sprintf@wh
sprintf@wh:	; 1 bytes @ 0x3C
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x3D
	global	printf@pb
printf@pb:	; 2 bytes @ 0x3D
	ds	1
	global	sprintf@pb
sprintf@pb:	; 2 bytes @ 0x3E
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x40
	ds	3
;;Data sizes: Strings 48, constant 118, data 0, bss 5, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     67      72
;; BANK1           80     24      24
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___lltoft	float  size(1) Largest target is 0
;;
;; ?__tdiv_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?__div_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___ftadd	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___ftneg	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___awmod	int  size(2) Largest target is 40
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), dpowers(CODE[40]), 
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
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 4
;;		 -> STR_4(CODE[4]), 
;;
;; ?_sprintf	int  size(1) Largest target is 3
;;		 -> NULL(NULL[0]), carac1(BANK0[3]), 
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; sprintf@wh	PTR unsigned char  size(1) Largest target is 3
;;		 -> carac1(BANK0[3]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 3
;;		 -> NULL(NULL[0]), carac1(BANK0[3]), 
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 3
;;		 -> STR_9(CODE[2]), STR_7(CODE[3]), STR_3(CODE[2]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 3
;;		 -> NULL(NULL[0]), carac1(BANK0[3]), 
;;
;; _doprnt@ap	PTR PTR void  size(1) Largest target is 2
;;		 -> sprintf@ap(BANK0[1]), printf@ap(BANK0[1]), 
;;
;; _doprnt@f	PTR const unsigned char  size(1) Largest target is 4
;;		 -> STR_9(CODE[2]), STR_7(CODE[3]), STR_4(CODE[4]), STR_3(CODE[2]), 
;;
;; S1861__prbuf$func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; _doprnt@pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; S1861__prbuf$ptr	PTR unsigned char  size(1) Largest target is 3
;;		 -> NULL(NULL[0]), carac1(BANK0[3]), 
;;
;; _doprnt@pb.ptr	PTR unsigned char  size(1) Largest target is 3
;;		 -> NULL(NULL[0]), carac1(BANK0[3]), 
;;
;; _doprnt@pb	PTR struct __prbuf size(1) Largest target is 3
;;		 -> sprintf@pb(BANK0[2]), printf@pb(BANK0[2]), 
;;
;; S1907$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 13
;;		 -> STR_8(CODE[5]), STR_6(CODE[3]), STR_5(CODE[6]), carac1(BANK0[3]), 
;;		 -> STR_2(CODE[12]), STR_1(CODE[13]), 
;;
;; distance@ticks	PTR float  size(1) Largest target is 2
;;		 -> dist(BANK0[2]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_distance
;;   _lcd_init->_lcd_write
;;   __doprnt->___awdiv
;;   __doprnt->__div_to_l_
;;   __doprnt->___llmod
;;   _lcd_clear->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _lcd_goto->_lcd_write
;;   _scale->___awdiv
;;   _lcd_write->_pause
;;   _distance->___awtoft
;;   ___lltoft->___ftpack
;;   ___awtoft->___ftpack
;;   ___ftmul->___awdiv
;;   ___llmod->___lldiv
;;   ___awdiv->___awmod
;;   ___fttol->___awdiv
;;   ___lbdiv->___lbmod
;;   ___bmul->___lbdiv
;;   _putch->___llmod
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_sprintf
;;   _sprintf->__doprnt
;;   _printf->__doprnt
;;   __doprnt->_fround
;;   ___ftsub->___ftadd
;;   _scale->___ftmul
;;   _fround->___ftadd
;;   ___ftmul->___fttol
;;   ___ftadd->___ftmul
;;   _putch->___llmod
;;
;; Critical Paths under _main in BANK1
;;
;;   _sprintf->__doprnt
;;   _printf->__doprnt
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0   23559
;;                                             64 BANK0      3     3      0
;;                           _lcd_init
;;                         _init_comms
;;                           _lcd_goto
;;                           _lcd_puts
;;                              _getch
;;                          _lcd_clear
;;                        _wait_sensor
;;                           _distance
;;                             _printf
;;                            ___lwdiv
;;                            _sprintf
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                              7     4      3   11102
;;                                             57 BANK0      7     4      3
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (1) _printf                                               6     4      2   11046
;;                                             57 BANK0      6     4      2
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             1     1      0     295
;;                                              5 COMMON     1     1      0
;;                              _pause
;;                          _lcd_write
;;                          _lcd_clear
;; ---------------------------------------------------------------------------------
;; (2) __doprnt                                             35    33      2   10895
;;                                             50 BANK0      7     5      2
;;                                              0 BANK1     24    24      0
;;                   Absolute function
;;                              _putch
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
;; (1) _lcd_puts                                             2     0      2     135
;;                                              5 COMMON     2     0      2
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0     112
;;                                              5 COMMON     1     1      0
;;                          _lcd_write
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
;; (1) _distance                                             3     1      2     524
;;                                             12 COMMON     2     0      2
;;                                              0 BANK0      1     1      0
;;                           ___awtoft
;;                             ___ftge
;; ---------------------------------------------------------------------------------
;; (3) ___lltoft                                             5     1      4     278
;;                                              8 COMMON     5     1      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             4     1      3     300
;;                                              8 COMMON     4     1      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (4) ___ftmul                                             15     9      6     535
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
;; (5) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (4) ___lbmod                                              5     4      1     159
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (4) ___lbdiv                                              4     3      1     162
;;                                              5 COMMON     4     3      1
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              7     3      4     162
;;                                              0 COMMON     7     3      4
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
;; (3) Absolute function(Fake)                               1     0      1       0
;;                                              0 COMMON     1     0      1
;; ---------------------------------------------------------------------------------
;; (3) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _wait_sensor                                          4     2      2      47
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (1) _init_comms                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _getch                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _putch                                                1     0      1      22
;;                                              8 BANK0      1     0      1
;;                            ___llmod (ARG)
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
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
;;   _lcd_goto
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _lcd_puts
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _getch
;;   _lcd_clear
;;     _lcd_write
;;       _pause
;;         _msecbase
;;     _pause
;;       _msecbase
;;   _wait_sensor
;;   _distance
;;     ___awtoft
;;       ___ftpack
;;     ___ftge
;;   _printf
;;     __doprnt
;;       Absolute function(Fake)
;;       _putch
;;         ___llmod (ARG)
;;           ___lldiv (ARG)
;;         ___lldiv (ARG)
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
;;   ___lwdiv
;;   _sprintf
;;     __doprnt
;;       Absolute function(Fake)
;;       _putch
;;         ___llmod (ARG)
;;           ___lldiv (ARG)
;;         ___lldiv (ARG)
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
;;ABS                  0      0      6E       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     43      48       5       90.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     18      18       7       30.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      73      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 115 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
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
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_init
;;		_init_comms
;;		_lcd_goto
;;		_lcd_puts
;;		_getch
;;		_lcd_clear
;;		_wait_sensor
;;		_distance
;;		_printf
;;		___lwdiv
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	line	115
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	117
	
l6280:	
;SRPROG.c: 117: OSCCON=0x70;
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	119
;SRPROG.c: 119: ANSEL = 0x60;
	movlw	(060h)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	120
	
l6282:	
;SRPROG.c: 120: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	121
	
l6284:	
;SRPROG.c: 121: PORTB=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	122
	
l6286:	
;SRPROG.c: 122: TRISB1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1073/8)^080h,(1073)&7
	line	123
	
l6288:	
;SRPROG.c: 123: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	124
	
l6290:	
;SRPROG.c: 124: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	125
	
l6292:	
;SRPROG.c: 125: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	126
	
l6294:	
;SRPROG.c: 126: TRISE = 0x00;
	clrf	(137)^080h	;volatile
	line	128
;SRPROG.c: 128: T1CON = 0x10;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(16)	;volatile
	line	129
	
l6296:	
;SRPROG.c: 129: TMR1H=0x00;
	clrf	(15)	;volatile
	line	130
	
l6298:	
;SRPROG.c: 130: TMR1L=0x00;
	clrf	(14)	;volatile
	line	132
	
l6300:	
;SRPROG.c: 132: lcd_init();
	fcall	_lcd_init
	line	134
	
l6302:	
;SRPROG.c: 134: init_comms();
	fcall	_init_comms
	line	136
	
l6304:	
;SRPROG.c: 136: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	137
	
l6306:	
;SRPROG.c: 137: lcd_puts("INICIANDO...");
	movlw	low((STR_1-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	139
	
l6308:	
;SRPROG.c: 139: _delay((unsigned long)((1000)*(8000000/4000.0)));
	opt asmopt_off
movlw  11
movwf	((??_main+0)+0+2),f
movlw	38
movwf	((??_main+0)+0+1),f
	movlw	102
movwf	((??_main+0)+0),f
u3517:
	decfsz	((??_main+0)+0),f
	goto	u3517
	decfsz	((??_main+0)+0+1),f
	goto	u3517
	decfsz	((??_main+0)+0+2),f
	goto	u3517
	nop2
opt asmopt_on

	line	143
	
l6310:	
;SRPROG.c: 143: getch();
	fcall	_getch
	line	145
	
l6312:	
;SRPROG.c: 145: lcd_clear();
	fcall	_lcd_clear
	line	147
	
l6314:	
;SRPROG.c: 147: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	149
	
l6316:	
;SRPROG.c: 149: _delay((unsigned long)((2)*(8000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	151
	
l6318:	
;SRPROG.c: 151: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	153
	
l6320:	
;SRPROG.c: 153: _delay((unsigned long)((10)*(8000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u3527:
decfsz	(??_main+0)+0,f
	goto	u3527
	clrwdt
opt asmopt_on

	line	155
	
l6322:	
;SRPROG.c: 155: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	157
	
l6324:	
;SRPROG.c: 157: if(wait_sensor()){
	fcall	_wait_sensor
	movf	(1+(?_wait_sensor)),w
	iorwf	(0+(?_wait_sensor)),w
	skipnz
	goto	u3491
	goto	u3490
u3491:
	goto	l6348
u3490:
	line	159
	
l6326:	
;SRPROG.c: 159: dist=0;
	clrf	(_dist)
	clrf	(_dist+1)
	line	161
	
l6328:	
;SRPROG.c: 161: if(distance(&dist)){
	movlw	(_dist)&0ffh
	fcall	_distance
	movf	(1+(?_distance)),w
	iorwf	(0+(?_distance)),w
	skipnz
	goto	u3501
	goto	u3500
u3501:
	goto	l6336
u3500:
	line	162
	
l6330:	
;SRPROG.c: 162: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	163
	
l6332:	
;SRPROG.c: 163: lcd_puts("Sin Lectura");
	movlw	low((STR_2-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	165
	
l6334:	
;SRPROG.c: 165: printf("0");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	line	167
;SRPROG.c: 167: }else{
	goto	l6354
	line	168
	
l6336:	
;SRPROG.c: 168: dist = dist / 58;
	movlw	03Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(_dist+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(_dist),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(_dist+1)
	movf	(0+(?___lwdiv)),w
	movwf	(_dist)
	line	170
	
l6338:	
;SRPROG.c: 170: sprintf(carac1, "%3f",dist);
	movlw	((STR_4-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_dist+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_dist),w
	movwf	0+(?_sprintf)+01h
	movlw	(_carac1)&0ffh
	fcall	_sprintf
	line	171
	
l6340:	
;SRPROG.c: 171: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	172
;SRPROG.c: 172: lcd_puts("Dist:");
	movlw	low((STR_5-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	173
;SRPROG.c: 173: lcd_puts(carac1);
	movlw	(_carac1&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x0/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	174
	
l6342:	
;SRPROG.c: 174: lcd_goto(0x0A);
	movlw	(0Ah)
	fcall	_lcd_goto
	line	175
	
l6344:	
;SRPROG.c: 175: lcd_puts("cm");
	movlw	low((STR_6-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	177
	
l6346:	
;SRPROG.c: 177: printf("%d",dist);
	movf	(_dist+1),w
	movwf	(?_printf+1)
	movf	(_dist),w
	movwf	(?_printf)
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_printf
	goto	l6354
	line	183
	
l6348:	
;SRPROG.c: 183: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	184
	
l6350:	
;SRPROG.c: 184: lcd_puts("----");
	movlw	low((STR_8-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	186
	
l6352:	
;SRPROG.c: 186: printf("0");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_printf
	line	190
	
l6354:	
;SRPROG.c: 188: }
;SRPROG.c: 190: _delay((unsigned long)((200)*(8000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	8
movwf	((??_main+0)+0+1),f
	movlw	120
movwf	((??_main+0)+0),f
u3537:
	decfsz	((??_main+0)+0),f
	goto	u3537
	decfsz	((??_main+0)+0+1),f
	goto	u3537
	decfsz	((??_main+0)+0+2),f
	goto	u3537
opt asmopt_on

	goto	l6310
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	236
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_sprintf
psect	text628,local,class=CODE,delta=2
global __ptext628
__ptext628:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\sprintf.c"
;; Parameters:    Size  Location     Type
;;  wh              1    wreg     PTR unsigned char 
;;		 -> carac1(3), 
;;  f               1   57[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(4), 
;; Auto vars:     Size  Location     Type
;;  wh              1   60[BANK0 ] PTR unsigned char 
;;		 -> carac1(3), 
;;  pb              2   62[BANK0 ] struct __prbuf
;;  ap              1   61[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   57[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text628
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\sprintf.c"
	line	14
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@wh stored from wreg
	line	31
	movwf	(sprintf@wh)
	
l6268:	
	movf	(sprintf@wh),w
	movwf	(sprintf@pb)
	line	32
	
l6270:	
	clrf	(0+sprintf@pb+01h)
	line	33
	
l6272:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)
	line	34
	
l6274:	
	movf	(sprintf@f),w
	movwf	(?__doprnt)
	movlw	(sprintf@ap)&0ffh
	movwf	(0+?__doprnt+01h)
	movlw	(sprintf@pb)&0ffh
	fcall	__doprnt
	line	35
	
l6276:	
	movf	(sprintf@pb),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	38
	
l2255:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_printf
psect	text629,local,class=CODE,delta=2
global __ptext629
__ptext629:

;; *************** function _printf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\printf.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_9(2), STR_7(3), STR_3(2), 
;; Auto vars:     Size  Location     Type
;;  f               1   59[BANK0 ] PTR const unsigned char 
;;		 -> STR_9(2), STR_7(3), STR_3(2), 
;;  pb              2   61[BANK0 ] struct __prbuf
;;  ap              1   60[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   57[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text629
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\printf.c"
	line	14
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 3
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	23
	movwf	(printf@f)
	
l6258:	
	clrf	(printf@pb)
	line	24
	
l6260:	
	movlw	((fp__putch-fpbase))&0ffh
	movwf	(0+printf@pb+01h)
	line	25
	
l6262:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	26
	
l6264:	
;	Return value of _printf is never used
	movf	(printf@f),w
	movwf	(?__doprnt)
	movlw	(printf@ap)&0ffh
	movwf	(0+?__doprnt+01h)
	movlw	(printf@pb)&0ffh
	fcall	__doprnt
	line	28
	
l2248:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_lcd_init
psect	text630,local,class=CODE,delta=2
global __ptext630
__ptext630:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 270 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
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
psect	text630
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	line	270
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	273
	
l6218:	
	line	275
	
l6220:	
;SRPROG.c: 275: RC3 = 0;
	bcf	(59/8),(59)&7
	line	276
	
l6222:	
;SRPROG.c: 276: RC0 = 0;
	bcf	(56/8),(56)&7
	line	277
	
l6224:	
;SRPROG.c: 277: RC4 = 0;
	bcf	(60/8),(60)&7
	line	279
	
l6226:	
;SRPROG.c: 279: pause(15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	280
	
l6228:	
;SRPROG.c: 280: PORTD = init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	281
	
l6230:	
;SRPROG.c: 281: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l6232:	
	bcf	(56/8),(56)&7
	line	282
;SRPROG.c: 282: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	283
	
l6234:	
;SRPROG.c: 283: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l6236:	
	bcf	(56/8),(56)&7
	line	284
;SRPROG.c: 284: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	285
	
l6238:	
;SRPROG.c: 285: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l6240:	
	bcf	(56/8),(56)&7
	line	286
;SRPROG.c: 286: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	287
	
l6242:	
;SRPROG.c: 287: PORTD= 2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	288
	
l6244:	
;SRPROG.c: 288: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l6246:	
	bcf	(56/8),(56)&7
	line	290
	
l6248:	
;SRPROG.c: 290: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	291
	
l6250:	
;SRPROG.c: 291: lcd_write(0x0C);
	movlw	(0Ch)
	fcall	_lcd_write
	line	292
	
l6252:	
;SRPROG.c: 292: lcd_write(0x0F);
	movlw	(0Fh)
	fcall	_lcd_write
	line	293
	
l6254:	
;SRPROG.c: 293: lcd_clear();
	fcall	_lcd_clear
	line	294
	
l6256:	
;SRPROG.c: 294: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	295
	
l1112:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	__doprnt
psect	text631,local,class=CODE,delta=2
global __ptext631
__ptext631:

;; *************** function __doprnt *****************
;; Defined at:
;;		line 455 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  pb              1    wreg     PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  f               1   50[BANK0 ] PTR const unsigned char 
;;		 -> STR_9(2), STR_7(3), STR_4(4), STR_3(2), 
;;  ap              1   51[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), printf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  pb              1   23[BANK1 ] PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  _val            4   13[BANK1 ] struct .
;;  fval            3   19[BANK1 ] struct .
;;  integ           3    6[BANK1 ] struct .
;;  ival            3    0        struct .
;;  exp             2   17[BANK1 ] int 
;;  prec            2   11[BANK1 ] int 
;;  width           2    9[BANK1 ] int 
;;  flag            2    4[BANK1 ] unsigned short 
;;  c               1   22[BANK1 ] char 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   50[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0      24       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       7      24       0       0
;;Total ram usage:       31 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Absolute function
;;		_putch
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
;;		_printf
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text631
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	455
	global	__size_of__doprnt
	__size_of__doprnt	equ	__end_of__doprnt-__doprnt
	
__doprnt:	
	opt	stack 3
; Regs used in __doprnt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;__doprnt@pb stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@pb)^080h
	line	540
	
l5932:	
	goto	l6212
	line	542
	
l5934:	
	movf	(__doprnt@c)^080h,w
	xorlw	025h
	skipnz
	goto	u3001
	goto	u3000
u3001:
	goto	l5944
u3000:
	line	545
	
l5936:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3011
	goto	u3010
u3011:
	goto	l5940
u3010:
	
l5938:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l6212
	
l5940:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c)^080h,w
	movwf	indf
	
l5942:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	goto	l6212
	line	550
	
l5944:	
	clrf	(__doprnt@width)^080h
	clrf	(__doprnt@width+1)^080h
	line	552
	clrf	(__doprnt@flag)^080h
	clrf	(__doprnt@flag+1)^080h
	line	601
	
l5946:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u3021
	goto	u3020
u3021:
	goto	l5958
u3020:
	line	602
	
l5948:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(__doprnt@width)^080h
	clrf	(__doprnt@width+1)^080h
	line	604
	
l5950:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@width+1)^080h,w
	movwf	(?___wmul+1)
	movf	(__doprnt@width)^080h,w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??__doprnt+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??__doprnt+0)+0
	movf	0+(??__doprnt+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@width)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??__doprnt+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(__doprnt@width)^080h
	
l5952:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(__doprnt@f),f
	line	605
	
l5954:	
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3031
	goto	u3030
u3031:
	goto	l5950
u3030:
	goto	l5958
	line	665
	
l1168:	
	line	666
	bsf	(__doprnt@flag)^080h+(10/8),(10)&7
	line	667
	goto	l5960
	line	638
	
l5958:	
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@c)^080h
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
	goto	l6214
	xorlw	100^0	; case 100
	skipnz
	goto	l5960
	xorlw	102^100	; case 102
	skipnz
	goto	l1168
	xorlw	105^102	; case 105
	skipnz
	goto	l5960
	goto	l6212
	opt asmopt_on

	line	828
	
l5960:	
	movlw	low(0700h)
	andwf	(__doprnt@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	movlw	high(0700h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(__doprnt@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(??__doprnt+0)+0
	movf	1+(??__doprnt+0)+0,w
	iorwf	0+(??__doprnt+0)+0,w
	skipnz
	goto	u3041
	goto	u3040
u3041:
	goto	l6144
u3040:
	line	832
	
l5962:	
	movlw	06h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@prec)^080h
	clrf	(__doprnt@prec+1)^080h
	line	833
	
l5964:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(__doprnt@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	((??__doprnt+0)+0)
	movlw	03h
	addwf	indf,f
	movf	((??__doprnt+0)+0),w
	movwf	fsr0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(__doprnt@fval+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(__doprnt@fval+2)^080h
	line	834
	
l5966:	
	movf	(__doprnt@fval)^080h,w
	movwf	(?___ftge)
	movf	(__doprnt@fval+1)^080h,w
	movwf	(?___ftge+1)
	movf	(__doprnt@fval+2)^080h,w
	movwf	(?___ftge+2)
	clrf	0+(?___ftge)+03h
	clrf	1+(?___ftge)+03h
	clrf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3051
	goto	u3050
u3051:
	goto	l5972
u3050:
	line	835
	
l5968:	
	movf	(__doprnt@fval)^080h,w
	movwf	(?___ftneg)
	movf	(__doprnt@fval+1)^080h,w
	movwf	(?___ftneg+1)
	movf	(__doprnt@fval+2)^080h,w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(__doprnt@fval)^080h
	movf	(1+(?___ftneg)),w
	movwf	(__doprnt@fval+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(__doprnt@fval+2)^080h
	line	836
	
l5970:	
	movlw	03h
	iorwf	(__doprnt@flag)^080h,f
	line	838
	
l5972:	
	clrf	(__doprnt@exp)^080h
	clrf	(__doprnt@exp+1)^080h
	line	839
	
l5974:	
	movf	(__doprnt@fval+2)^080h,w
	iorwf	(__doprnt@fval+1)^080h,w
	iorwf	(__doprnt@fval)^080h,w
	skipnz
	goto	u3061
	goto	u3060
u3061:
	goto	l6004
u3060:
	line	840
	
l5976:	
	movlw	low(__doprnt@fval)
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+0)+0+3
	movlw	0Fh
u3075:
	clrc
	rrf	(??__doprnt+0)+3,f
	rrf	(??__doprnt+0)+2,f
	rrf	(??__doprnt+0)+1,f
	rrf	(??__doprnt+0)+0,f
u3070:
	addlw	-1
	skipz
	goto	u3075
	movf	1+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@exp)^080h
	
l5978:	
	movlw	0FFh
	andwf	(__doprnt@exp)^080h,f
	clrf	(__doprnt@exp+1)^080h
	
l5980:	
	movlw	-126
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	841
	
l5982:	
	movlw	-1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	842
	
l5984:	
	movlw	03h
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movf	(__doprnt@exp+1)^080h,w
	movwf	1+(?___wmul)+02h
	movf	(__doprnt@exp)^080h,w
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(__doprnt@exp+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(__doprnt@exp)^080h
	line	843
	
l5986:	
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(__doprnt@exp+1)^080h,w
	movwf	1+(?___awdiv)+02h
	movf	(__doprnt@exp)^080h,w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(__doprnt@exp+1)^080h
	movf	(0+(?___awdiv)),w
	movwf	(__doprnt@exp)^080h
	line	844
	
l5988:	
	btfss	(__doprnt@exp+1)^080h,7
	goto	u3081
	goto	u3080
u3081:
	goto	l5992
u3080:
	line	845
	
l5990:	
	movlw	-1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	849
	
l5992:	
	decf	(__doprnt@exp)^080h,w
	xorlw	0ffh
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+2)^080h
	line	850
	
l5994:	
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+2)^080h
	line	851
	
l5996:	
	movf	(__doprnt@integ)^080h,w
	movwf	(?___ftge)
	movf	(__doprnt@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(__doprnt@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x80
	movwf	1+(?___ftge)+03h
	movlw	0x3f
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3091
	goto	u3090
u3091:
	goto	l6000
u3090:
	line	852
	
l5998:	
	movlw	-1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	goto	l6004
	line	853
	
l6000:	
	movf	(__doprnt@integ)^080h,w
	movwf	(?___ftge)
	movf	(__doprnt@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(__doprnt@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x20
	movwf	1+(?___ftge)+03h
	movlw	0x41
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3101
	goto	u3100
u3101:
	goto	l6004
u3100:
	line	854
	
l6002:	
	incf	(__doprnt@exp)^080h,f
	skipnz
	incf	(__doprnt@exp+1)^080h,f
	line	1115
	
l6004:	
	line	1116
	
l6006:	
	movlw	(06h)
	fcall	_fround
	movf	(0+(?_fround)),w
	movwf	(?___ftadd)
	movf	(1+(?_fround)),w
	movwf	(?___ftadd+1)
	movf	(2+(?_fround)),w
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+2)^080h
	line	1119
	
l6008:	
	movf	(__doprnt@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3115
	movlw	low(0Ah)
	subwf	(__doprnt@exp)^080h,w
u3115:

	skipnc
	goto	u3111
	goto	u3110
u3111:
	goto	l6016
u3110:
	
l6010:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+2)^080h,w
	iorwf	(__doprnt@fval+1)^080h,w
	iorwf	(__doprnt@fval)^080h,w
	skipnz
	goto	u3121
	goto	u3120
u3121:
	goto	l6032
u3120:
	
l6012:	
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	iorwf	(2+(?___fttol)),w
	iorwf	(1+(?___fttol)),w
	iorwf	(0+(?___fttol)),w
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l6032
u3130:
	
l6014:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3145
	movlw	low(02h)
	subwf	(__doprnt@exp)^080h,w
u3145:

	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l6032
u3140:
	line	1123
	
l6016:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@integ)^080h,w
	movwf	(?___ftge)
	movf	(__doprnt@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(__doprnt@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x70
	movwf	0+(?___ftge)+03h
	movlw	0x89
	movwf	1+(?___ftge)+03h
	movlw	0x40
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3151
	goto	u3150
u3151:
	goto	l6020
u3150:
	line	1124
	
l6018:	
	movlw	-9
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	1125
	goto	l6022
	line	1126
	
l6020:	
	movlw	-8
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	1128
	
l6022:	
	movf	(__doprnt@exp)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+2)^080h
	line	1129
	
l6026:	
	movf	(__doprnt@fval)^080h,w
	movwf	(?__tdiv_to_l_)
	movf	(__doprnt@fval+1)^080h,w
	movwf	(?__tdiv_to_l_+1)
	movf	(__doprnt@fval+2)^080h,w
	movwf	(?__tdiv_to_l_+2)
	movf	(__doprnt@integ)^080h,w
	movwf	0+(?__tdiv_to_l_)+03h
	movf	(__doprnt@integ+1)^080h,w
	movwf	1+(?__tdiv_to_l_)+03h
	movf	(__doprnt@integ+2)^080h,w
	movwf	2+(?__tdiv_to_l_)+03h
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt$1925+3)^080h
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(__doprnt$1925+2)^080h
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(__doprnt$1925+1)^080h
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(__doprnt$1925)^080h

	
l6028:	
	movf	(__doprnt$1925+3)^080h,w
	movwf	(__doprnt@_val+3)^080h
	movf	(__doprnt$1925+2)^080h,w
	movwf	(__doprnt@_val+2)^080h
	movf	(__doprnt$1925+1)^080h,w
	movwf	(__doprnt@_val+1)^080h
	movf	(__doprnt$1925)^080h,w
	movwf	(__doprnt@_val)^080h

	line	1132
	
l6030:	
	clrf	(__doprnt@fval)^080h
	clrf	(__doprnt@fval+1)^080h
	clrf	(__doprnt@fval+2)^080h
	line	1133
	goto	l6036
	line	1134
	
l6032:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val)^080h

	line	1135
	movf	(__doprnt@_val+3)^080h,w
	movwf	(?___lltoft+3)
	movf	(__doprnt@_val+2)^080h,w
	movwf	(?___lltoft+2)
	movf	(__doprnt@_val+1)^080h,w
	movwf	(?___lltoft+1)
	movf	(__doprnt@_val)^080h,w
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
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+2)^080h
	line	1136
	
l6034:	
	clrf	(__doprnt@exp)^080h
	clrf	(__doprnt@exp+1)^080h
	line	1139
	
l6036:	
	clrf	(__doprnt@c)^080h
	incf	(__doprnt@c)^080h,f
	line	1140
	
l6042:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??__doprnt+1)+0)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+1)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+2)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+3)
	movf	3+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val+3)^080h,w
	skipz
	goto	u3165
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val+2)^080h,w
	skipz
	goto	u3165
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val+1)^080h,w
	skipz
	goto	u3165
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val)^080h,w
u3165:
	skipnc
	goto	u3161
	goto	u3160
u3161:
	goto	l6046
u3160:
	goto	l6050
	line	1139
	
l6046:	
	incf	(__doprnt@c)^080h,f
	
l6048:	
	movf	(__doprnt@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u3171
	goto	u3170
u3171:
	goto	l6042
u3170:
	line	1145
	
l6050:	
	movf	(__doprnt@prec)^080h,w
	addwf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@prec+1)^080h,w
	skipnc
	incf	(__doprnt@prec+1)^080h,w
	addlw	0
	btfsc	(__doprnt@c)^080h,7
	addlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	0+(??__doprnt+0)+0,w
	movwf	(??__doprnt+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@exp+1)^080h,w
	skipnc
	incf	(__doprnt@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	1+(??__doprnt+0)+0,w
	movwf	1+(??__doprnt+2)+0
	movf	0+(??__doprnt+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@width)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??__doprnt+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(__doprnt@width+1)^080h,f
	subwf	(__doprnt@width+1)^080h,f
	line	1150
	
l6052:	
	movf	(__doprnt@prec+1)^080h,w
	iorwf	(__doprnt@prec)^080h,w
	skipnz
	goto	u3181
	goto	u3180
u3181:
	goto	l6056
u3180:
	line	1151
	
l6054:	
	movlw	-1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	line	1152
	
l6056:	
	movf	(__doprnt@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l6070
u3190:
	line	1153
	
l6058:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	goto	l6070
	line	1182
	
l6060:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3201
	goto	u3200
u3201:
	goto	l6064
u3200:
	
l6062:	
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l6058
	
l6064:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(020h)
	movwf	indf
	
l6066:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	goto	l6058
	line	1181
	
l6070:	
	movf	(__doprnt@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3215
	movlw	low(01h)
	subwf	(__doprnt@width)^080h,w
u3215:

	skipnc
	goto	u3211
	goto	u3210
u3211:
	goto	l6060
u3210:
	line	1189
	
l6072:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l6090
u3220:
	line	1191
	
l6074:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3231
	goto	u3230
u3231:
	goto	l6078
u3230:
	
l6076:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l6090
	
l6078:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l6080:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	goto	l6090
	line	1201
	
l6082:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3241
	goto	u3240
u3241:
	goto	l6086
u3240:
	
l6084:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
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
	movf	(__doprnt@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(__doprnt@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(__doprnt@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(__doprnt@_val)^080h,w
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
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l6090
	
l6086:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
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
	movf	(__doprnt@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(__doprnt@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(__doprnt@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(__doprnt@_val)^080h,w
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
	movwf	(??__doprnt+1)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	movf	(??__doprnt+1)+0,w
	movwf	indf
	goto	l6080
	line	1197
	
l6090:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	decf	(__doprnt@c)^080h,f
	incf	((__doprnt@c)^080h),w
	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l6082
u3250:
	goto	l6102
	line	1205
	
l6092:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3261
	goto	u3260
u3261:
	goto	l6096
u3260:
	
l6094:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l6100
	
l6096:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(030h)
	movwf	indf
	
l6098:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1206
	
l6100:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	1204
	
l6102:	
	movf	(__doprnt@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3275
	movlw	low(01h)
	subwf	(__doprnt@exp)^080h,w
u3275:

	skipnc
	goto	u3271
	goto	u3270
u3271:
	goto	l6092
u3270:
	line	1208
	
l6104:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3285
	movlw	low(09h)
	subwf	(__doprnt@prec)^080h,w
u3285:

	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l6108
u3280:
	line	1209
	
l6106:	
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@c)^080h
	goto	l1215
	line	1211
	
l6108:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec)^080h,w
	movwf	(__doprnt@c)^080h
	
l1215:	
	line	1212
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrf	(??__doprnt+0)+0+1
	btfsc	(??__doprnt+0)+0,7
	decf	(??__doprnt+0)+0+1,f
	movf	0+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@prec)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(__doprnt@prec+1)^080h,f
	subwf	(__doprnt@prec+1)^080h,f
	line	1216
	movf	(__doprnt@c)^080h,w
	skipz
	goto	u3290
	goto	l6118
u3290:
	line	1218
	
l6110:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3301
	goto	u3300
u3301:
	goto	l6114
u3300:
	
l6112:	
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l6118
	
l6114:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Eh)
	movwf	indf
	
l6116:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1224
	
l6118:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?_scale)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?_scale)),w
	movwf	2+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
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
	movwf	(__doprnt@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val)^080h

	line	1225
	goto	l6130
	line	1226
	
l6120:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3311
	goto	u3310
u3311:
	goto	l6124
u3310:
	
l6122:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
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
	movf	(__doprnt@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(__doprnt@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(__doprnt@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(__doprnt@_val)^080h,w
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
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l6128
	
l6124:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
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
	movf	(__doprnt@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(__doprnt@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(__doprnt@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(__doprnt@_val)^080h,w
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
	movwf	(??__doprnt+1)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	movf	(??__doprnt+1)+0,w
	movwf	indf
	
l6126:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1227
	
l6128:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
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
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val)^080h

	line	1225
	
l6130:	
	decf	(__doprnt@c)^080h,f
	incf	((__doprnt@c)^080h),w
	skipz
	goto	u3321
	goto	u3320
u3321:
	goto	l6120
u3320:
	goto	l6142
	line	1231
	
l6132:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3331
	goto	u3330
u3331:
	goto	l6136
u3330:
	
l6134:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l6140
	
l6136:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(030h)
	movwf	indf
	
l6138:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1232
	
l6140:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@prec)^080h,f
	skipc
	decf	(__doprnt@prec+1)^080h,f
	line	1230
	
l6142:	
	movf	((__doprnt@prec+1)^080h),w
	iorwf	((__doprnt@prec)^080h),w
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l6132
u3340:
	goto	l6212
	line	1254
	
l6144:	
	movf	(__doprnt@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	((??__doprnt+0)+0)
	movlw	02h
	addwf	indf,f
	movf	((??__doprnt+0)+0),w
	movwf	fsr0
	movf	indf,w
	movwf	(??__doprnt+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+1)+0+1
	movf	0+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+1)^080h
	movlw	0
	btfsc	(__doprnt@_val+1)^080h,7
	movlw	255
	movwf	(__doprnt@_val+2)^080h
	movwf	(__doprnt@_val+3)^080h
	line	1256
	
l6146:	
	btfss	(__doprnt@_val+3)^080h,7
	goto	u3351
	goto	u3350
u3351:
	goto	l6152
u3350:
	line	1257
	
l6148:	
	movlw	03h
	iorwf	(__doprnt@flag)^080h,f
	line	1258
	
l6150:	
	comf	(__doprnt@_val)^080h,f
	comf	(__doprnt@_val+1)^080h,f
	comf	(__doprnt@_val+2)^080h,f
	comf	(__doprnt@_val+3)^080h,f
	incf	(__doprnt@_val)^080h,f
	skipnz
	incf	(__doprnt@_val+1)^080h,f
	skipnz
	incf	(__doprnt@_val+2)^080h,f
	skipnz
	incf	(__doprnt@_val+3)^080h,f
	line	1300
	
l6152:	
	clrf	(__doprnt@c)^080h
	incf	(__doprnt@c)^080h,f
	line	1301
	
l6156:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??__doprnt+1)+0)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+1)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+2)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+3)
	movf	3+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val+3)^080h,w
	skipz
	goto	u3365
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val+2)^080h,w
	skipz
	goto	u3365
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val+1)^080h,w
	skipz
	goto	u3365
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val)^080h,w
u3365:
	skipnc
	goto	u3361
	goto	u3360
u3361:
	goto	l6160
u3360:
	goto	l6164
	line	1300
	
l6160:	
	incf	(__doprnt@c)^080h,f
	
l6162:	
	movf	(__doprnt@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l6156
u3370:
	line	1340
	
l6164:	
	movf	(__doprnt@width+1)^080h,w
	iorwf	(__doprnt@width)^080h,w
	skipnz
	goto	u3381
	goto	u3380
u3381:
	goto	l6170
u3380:
	
l6166:	
	movf	(__doprnt@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l6170
u3390:
	line	1341
	
l6168:	
	movlw	-1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	line	1376
	
l6170:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrf	(??__doprnt+0)+0+1
	btfsc	(??__doprnt+0)+0,7
	decf	(??__doprnt+0)+0+1,f
	movf	1+(??__doprnt+0)+0,w
	xorlw	80h
	movwf	(??__doprnt+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@width+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??__doprnt+2)+0,w
	skipz
	goto	u3405
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??__doprnt+0)+0,w
u3405:

	skipnc
	goto	u3401
	goto	u3400
u3401:
	goto	l6174
u3400:
	line	1377
	
l6172:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrf	(??__doprnt+0)+0+1
	btfsc	(??__doprnt+0)+0,7
	decf	(??__doprnt+0)+0+1,f
	movf	0+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@width)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(__doprnt@width+1)^080h,f
	subwf	(__doprnt@width+1)^080h,f
	goto	l6176
	line	1379
	
l6174:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(__doprnt@width)^080h
	clrf	(__doprnt@width+1)^080h
	line	1423
	
l6176:	
	movf	(__doprnt@width+1)^080h,w
	iorwf	(__doprnt@width)^080h,w
	skipnz
	goto	u3411
	goto	u3410
u3411:
	goto	l6188
u3410:
	line	1425
	
l6178:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3421
	goto	u3420
u3421:
	goto	l6182
u3420:
	
l6180:	
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l6186
	
l6182:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(020h)
	movwf	indf
	
l6184:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1426
	
l6186:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	movf	(((__doprnt@width+1)^080h)),w
	iorwf	(((__doprnt@width)^080h)),w
	skipz
	goto	u3431
	goto	u3430
u3431:
	goto	l6178
u3430:
	line	1433
	
l6188:	
	movf	(__doprnt@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l6198
u3440:
	line	1434
	
l6190:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3451
	goto	u3450
u3451:
	goto	l6194
u3450:
	
l6192:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l6198
	
l6194:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l6196:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1467
	
l6198:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	movwf	(__doprnt@prec)^080h
	clrf	(__doprnt@prec+1)^080h
	btfsc	(__doprnt@prec)^080h,7
	decf	(__doprnt@prec+1)^080h,f
	line	1469
	goto	l6210
	line	1484
	
l6200:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
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
	movf	(__doprnt@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(__doprnt@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(__doprnt@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(__doprnt@_val)^080h,w
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
	movwf	(__doprnt@c)^080h
	line	1516
	
l6202:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3461
	goto	u3460
u3461:
	goto	l6206
u3460:
	
l6204:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l6210
	
l6206:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c)^080h,w
	movwf	indf
	
l6208:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1469
	
l6210:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@prec)^080h,f
	skipc
	decf	(__doprnt@prec+1)^080h,f
	incf	((__doprnt@prec)^080h),w
	skipnz
	incf	((__doprnt@prec+1)^080h),w

	skipz
	goto	u3471
	goto	u3470
u3471:
	goto	l6200
u3470:
	line	540
	
l6212:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@c)^080h
	movf	((__doprnt@c)^080h),f
	skipz
	goto	u3481
	goto	u3480
u3481:
	goto	l5934
u3480:
	line	1532
	
l6214:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?__doprnt)
	clrf	(?__doprnt+1)
	line	1533
	
l1250:	
	return
	opt stack 0
GLOBAL	__end_of__doprnt
	__end_of__doprnt:
;; =============== function __doprnt ends ============

	signat	__doprnt,12410
	global	_lcd_clear
psect	text632,local,class=CODE,delta=2
global __ptext632
__ptext632:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 248 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
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
;;		_main
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text632
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	line	248
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	249
	
l5928:	
;SRPROG.c: 249: RC3 = 0;
	bcf	(59/8),(59)&7
	line	250
	
l5930:	
;SRPROG.c: 250: lcd_write(0x01);
	movlw	(01h)
	fcall	_lcd_write
	line	251
;SRPROG.c: 251: pause (2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	252
	
l1097:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_puts
psect	text633,local,class=CODE,delta=2
global __ptext633
__ptext633:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 254 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
;; Parameters:    Size  Location     Type
;;  s               2    5[COMMON] PTR const unsigned char 
;;		 -> STR_8(5), STR_6(3), STR_5(6), carac1(3), 
;;		 -> STR_2(12), STR_1(13), 
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
psect	text633
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	line	254
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 4
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	255
	
l5920:	
;SRPROG.c: 255: RC3 = 1;
	bsf	(59/8),(59)&7
	line	256
;SRPROG.c: 256: while(*s)
	goto	l5926
	line	257
	
l5922:	
;SRPROG.c: 257: lcd_write(*s++);
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	
l5924:	
	incf	(lcd_puts@s),f
	skipnz
	incf	(lcd_puts@s+1),f
	line	256
	
l5926:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l5922
u2990:
	line	258
	
l1103:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_goto
psect	text634,local,class=CODE,delta=2
global __ptext634
__ptext634:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 265 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/60
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
psect	text634
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	line	265
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	266
	
l5916:	
;SRPROG.c: 266: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	267
	
l5918:	
;SRPROG.c: 267: lcd_write(0x80 + pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	268
	
l1109:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	___ftsub
psect	text635,local,class=CODE,delta=2
global __ptext635
__ptext635:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text635
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 3
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l5910:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	19
	
l5912:	
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
	
l2347:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text636,local,class=CODE,delta=2
global __ptext636
__ptext636:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text636
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
	
l5870:	
	btfss	(scale@scl),7
	goto	u2941
	goto	u2940
u2941:
	goto	l5892
u2940:
	line	425
	
l5872:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l5874:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l5882
u2950:
	line	427
	
l5876:	
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
	movwf	(_scale$2923)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$2923+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$2923+2)
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
	movf	(_scale$2923),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$2923+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$2923+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1149
	line	428
	
l5882:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u2961
	goto	u2960
u2961:
	goto	l5888
u2960:
	line	429
	
l5884:	
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
	goto	l1149
	line	430
	
l5888:	
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
	goto	l1149
	line	432
	
l5892:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u2971
	goto	u2970
u2971:
	goto	l5900
u2970:
	line	433
	
l5894:	
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
	movwf	(_scale$2923)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$2923+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$2923+2)
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
	movf	(_scale$2923),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$2923+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$2923+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1149
	line	434
	
l5900:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u2981
	goto	u2980
u2981:
	goto	l5906
u2980:
	line	435
	
l5902:	
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
	goto	l1149
	line	436
	
l5906:	
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
	
l1149:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text637,local,class=CODE,delta=2
global __ptext637
__ptext637:

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
;;		On entry : 160/20
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text637
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
	
l5848:	
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l5858
u2920:
	line	410
	
l5850:	
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
	movwf	(_fround$2921)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2921+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2921+2)
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
	movf	(_fround$2921),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2921+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2921+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$2922)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2922+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2922+2)
	
l5852:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$2922),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2922+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2922+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l1142
	line	411
	
l5858:	
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l5866
u2930:
	line	412
	
l5860:	
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
	movwf	(_fround$2921)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2921+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2921+2)
	
l5862:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$2921),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2921+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2921+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l1142
	line	413
	
l5866:	
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
	
l1142:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_lcd_write
psect	text638,local,class=CODE,delta=2
global __ptext638
__ptext638:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 240 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
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
psect	text638
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	line	240
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	241
	
l5834:	
;SRPROG.c: 241: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	242
	
l5836:	
;SRPROG.c: 242: PORTD = ( ( c >> 4) & 0x0F);
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	243
	
l5838:	
;SRPROG.c: 243: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l5840:	
	bcf	(56/8),(56)&7
	line	244
	
l5842:	
;SRPROG.c: 244: PORTD = (c & 0x0F);
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	245
	
l5844:	
;SRPROG.c: 245: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l5846:	
	bcf	(56/8),(56)&7
	line	246
	
l1094:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_distance
psect	text639,local,class=CODE,delta=2
global __ptext639
__ptext639:

;; *************** function _distance *****************
;; Defined at:
;;		line 89 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
;; Parameters:    Size  Location     Type
;;  ticks           1    wreg     PTR float 
;;		 -> dist(2), 
;; Auto vars:     Size  Location     Type
;;  ticks           1    0[BANK0 ] PTR float 
;;		 -> dist(2), 
;; Return value:  Size  Location     Type
;;                  2   12[COMMON] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       1       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awtoft
;;		___ftge
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text639
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	line	89
	global	__size_of_distance
	__size_of_distance	equ	__end_of_distance-_distance
	
_distance:	
	opt	stack 5
; Regs used in _distance: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;distance@ticks stored from wreg
	line	91
	movwf	(distance@ticks)
	
l5810:	
;SRPROG.c: 91: *ticks=0;
	movf	(distance@ticks),w
	movwf	fsr0
	movlw	0x0
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	0x0
	movwf	indf
	incf	fsr0,f
	movlw	0x0
	movwf	indf
	line	92
	
l5812:	
;SRPROG.c: 92: TMR1H=0;
	clrf	(15)	;volatile
	line	93
	
l5814:	
;SRPROG.c: 93: TMR1L=0;
	clrf	(14)	;volatile
	line	95
;SRPROG.c: 95: while(RB0 && (*ticks < 23200)){
	goto	l5818
	line	96
	
l5816:	
;SRPROG.c: 96: *ticks=(TMR1H<<8)|TMR1L;
	movf	(15),w	;volatile
	movwf	(?___awtoft+1)
	clrf	(?___awtoft)
	movf	(14),w	;volatile
	iorwf	(?___awtoft),f
	fcall	___awtoft
	movf	(distance@ticks),w
	movwf	fsr0
	movf	(0+(?___awtoft)),w
	movwf	indf
	incf	fsr0,f
	movf	(1+(?___awtoft)),w
	movwf	indf
	incf	fsr0,f
	movf	(2+(?___awtoft)),w
	movwf	indf
	line	95
	
l5818:	
	btfss	(48/8),(48)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l1078
u2890:
	
l5820:	
	movf	(distance@ticks),w
	movwf	fsr0
	movf	indf,w
	movwf	(?___ftge)
	incf	fsr0,f
	movf	indf,w
	movwf	(?___ftge+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(?___ftge+2)
	movlw	0x40
	movwf	0+(?___ftge)+03h
	movlw	0xb5
	movwf	1+(?___ftge)+03h
	movlw	0x46
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u2901
	goto	u2900
u2901:
	goto	l5816
u2900:
	
l1078:	
	line	99
;SRPROG.c: 97: }
;SRPROG.c: 99: TMR1ON=0;
	bcf	(128/8),(128)&7
	line	101
	
l5822:	
;SRPROG.c: 101: if(*ticks >= 23200){
	movf	(distance@ticks),w
	movwf	fsr0
	movf	indf,w
	movwf	(?___ftge)
	incf	fsr0,f
	movf	indf,w
	movwf	(?___ftge+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(?___ftge+2)
	movlw	0x40
	movwf	0+(?___ftge)+03h
	movlw	0xb5
	movwf	1+(?___ftge)+03h
	movlw	0x46
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u2911
	goto	u2910
u2911:
	goto	l5830
u2910:
	line	102
	
l5824:	
;SRPROG.c: 102: return 1;
	clrf	(?_distance)
	incf	(?_distance),f
	clrf	(?_distance+1)
	goto	l1080
	line	104
	
l5830:	
;SRPROG.c: 104: return 0;
	clrf	(?_distance)
	clrf	(?_distance+1)
	line	107
	
l1080:	
	return
	opt stack 0
GLOBAL	__end_of_distance
	__end_of_distance:
;; =============== function _distance ends ============

	signat	_distance,4218
	global	___lltoft
psect	text640,local,class=CODE,delta=2
global __ptext640
__ptext640:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text640
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 4
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l5800:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l5804
	line	42
	
l5802:	
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l5804:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l5802
u2880:
	line	45
	
l5806:	
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
	
l2504:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___awtoft
psect	text641,local,class=CODE,delta=2
global __ptext641
__ptext641:

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
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
;;		_distance
;; This function uses a non-reentrant model
;;
psect	text641
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l5788:	
	clrf	(___awtoft@sign)
	line	37
	
l5790:	
	btfss	(___awtoft@c+1),7
	goto	u2871
	goto	u2870
u2871:
	goto	l5796
u2870:
	line	38
	
l5792:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l5794:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l5796:	
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
	
l2401:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text642,local,class=CODE,delta=2
global __ptext642
__ptext642:

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
;;		_fround
;;		_scale
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text642
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 3
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l5732:	
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
	goto	u2791
	goto	u2790
u2791:
	goto	l5738
u2790:
	line	57
	
l5734:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2363
	line	58
	
l5738:	
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
	goto	u2801
	goto	u2800
u2801:
	goto	l5744
u2800:
	line	59
	
l5740:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2363
	line	60
	
l5744:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l5746:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l5748:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l5750:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l5752:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l5754:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l5756:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l5758:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l5760:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l5762:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l5766
u2810:
	line	72
	
l5764:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2821
	addwf	(___ftmul@f3_as_product+1),f
u2821:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2822
	addwf	(___ftmul@f3_as_product+2),f
u2822:

	line	73
	
l5766:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l5768:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l5770:	
	decfsz	(___ftmul@cntr),f
	goto	u2831
	goto	u2830
u2831:
	goto	l5762
u2830:
	line	76
	
l5772:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l5774:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l5778
u2840:
	line	79
	
l5776:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2851
	addwf	(___ftmul@f3_as_product+1),f
u2851:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2852
	addwf	(___ftmul@f3_as_product+2),f
u2852:

	line	80
	
l5778:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l5780:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l5782:	
	decfsz	(___ftmul@cntr),f
	goto	u2861
	goto	u2860
u2861:
	goto	l5774
u2860:
	line	83
	
l5784:	
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
	
l2363:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text643,local,class=CODE,delta=2
global __ptext643
__ptext643:

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
;;		__doprnt
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text643
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l5654:	
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
	
l5656:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2590
	goto	l5662
u2590:
	
l5658:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2601
	goto	u2600
u2601:
	goto	l5666
u2600:
	
l5660:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l5666
u2610:
	line	93
	
l5662:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2311
	line	94
	
l5666:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2620
	goto	l2314
u2620:
	
l5668:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2631
	goto	u2630
u2631:
	goto	l5672
u2630:
	
l5670:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l5672
u2640:
	
l2314:	
	line	95
	goto	l2311
	line	96
	
l5672:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l5674:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l2315
u2650:
	line	98
	
l5676:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2315:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l2316
u2660:
	line	100
	
l5678:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2316:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l5680:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l5682:	
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
	goto	u2671
	goto	u2670
u2671:
	goto	l5694
u2670:
	line	110
	
l5684:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l5686:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2681
	goto	u2680
u2681:
	goto	l5692
u2680:
	
l5688:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l5684
u2690:
	goto	l5692
	line	114
	
l5690:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l5692:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l5690
u2700:
	goto	l2325
	line	117
	
l5694:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2711
	goto	u2710
u2711:
	goto	l2325
u2710:
	line	121
	
l5696:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l5698:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2721
	goto	u2720
u2721:
	goto	l5704
u2720:
	
l5700:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l5696
u2730:
	goto	l5704
	line	125
	
l5702:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l5704:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l5702
u2740:
	line	129
	
l2325:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l5710
u2750:
	line	131
	
l5706:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l5708:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l5710:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l5716
u2760:
	line	136
	
l5712:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l5714:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l5716:	
	clrf	(___ftadd@sign)
	line	140
	
l5718:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2771
	addwf	(___ftadd@f2+1),f
u2771:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2772
	addwf	(___ftadd@f2+2),f
u2772:

	line	141
	
l5720:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l5728
u2780:
	line	142
	
l5722:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l5724:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l5726:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l5728:	
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
	
l2311:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_pause
psect	text644,local,class=CODE,delta=2
global __ptext644
__ptext644:

;; *************** function _pause *****************
;; Defined at:
;;		line 297 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
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
;;		_lcd_write
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text644
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	line	297
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 5
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	299
	
l5646:	
;SRPROG.c: 298: unsigned short x;
;SRPROG.c: 299: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l5652
	line	301
	
l5648:	
;SRPROG.c: 300: {
;SRPROG.c: 301: msecbase();
	fcall	_msecbase
	line	299
	
l5650:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l5652:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u2585
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u2585:
	skipnc
	goto	u2581
	goto	u2580
u2581:
	goto	l5648
u2580:
	line	303
	
l1118:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	___awmod
psect	text645,local,class=CODE,delta=2
global __ptext645
__ptext645:

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
psect	text645
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l5610:	
	clrf	(___awmod@sign)
	line	9
	
l5612:	
	btfss	(___awmod@dividend+1),7
	goto	u2511
	goto	u2510
u2511:
	goto	l5618
u2510:
	line	10
	
l5614:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l5616:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l5618:	
	btfss	(___awmod@divisor+1),7
	goto	u2521
	goto	u2520
u2521:
	goto	l5622
u2520:
	line	14
	
l5620:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l5622:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2531
	goto	u2530
u2531:
	goto	l5638
u2530:
	line	16
	
l5624:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l5628
	line	18
	
l5626:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l5628:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l5626
u2540:
	line	22
	
l5630:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2555
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2555:
	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l5634
u2550:
	line	23
	
l5632:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l5634:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l5636:	
	decfsz	(___awmod@counter),f
	goto	u2561
	goto	u2560
u2561:
	goto	l5630
u2560:
	line	27
	
l5638:	
	movf	(___awmod@sign),w
	skipz
	goto	u2570
	goto	l5642
u2570:
	line	28
	
l5640:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l5642:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l2482:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text646,local,class=CODE,delta=2
global __ptext646
__ptext646:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text646
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 5
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l5584:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l5586:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u2471
	goto	u2470
u2471:
	goto	l5606
u2470:
	line	11
	
l5588:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l5592
	line	13
	
l5590:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l5592:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l5590
u2480:
	line	17
	
l5594:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l5596:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u2495
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u2495
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u2495
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u2495:
	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l5602
u2490:
	line	19
	
l5598:	
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
	
l5600:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l5602:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l5604:	
	decfsz	(___lldiv@counter),f
	goto	u2501
	goto	u2500
u2501:
	goto	l5594
u2500:
	line	25
	
l5606:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l2443:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text647,local,class=CODE,delta=2
global __ptext647
__ptext647:

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
;;		On entry : 40/20
;;		On exit  : 40/20
;;		Unchanged: FFFBF/0
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
;;		_distance
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text647
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 5
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l5564:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l5568
u2440:
	line	7
	
l5566:	
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
	
l5568:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2451
	goto	u2450
u2451:
	goto	l5572
u2450:
	line	9
	
l5570:	
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
	
l5572:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l5574:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l5576:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2465
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2465
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2465:
	skipnc
	goto	u2461
	goto	u2460
u2461:
	goto	l5580
u2460:
	
l5578:	
	clrc
	
	goto	l2433
	
l5580:	
	setc
	
	line	13
	
l2433:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text648,local,class=CODE,delta=2
global __ptext648
__ptext648:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text648
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 5
; Regs used in ___ftneg: [wreg]
	line	17
	
l5556:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2431
	goto	u2430
u2431:
	goto	l5560
u2430:
	line	18
	
l5558:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l5560:	
	line	20
	
l2428:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text649,local,class=CODE,delta=2
global __ptext649
__ptext649:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text649
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 5
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l5536:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u2391
	goto	u2390
u2391:
	goto	l5552
u2390:
	line	9
	
l5538:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	10
	goto	l5542
	line	11
	
l5540:	
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	12
	incf	(___llmod@counter),f
	line	10
	
l5542:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l5540
u2400:
	line	15
	
l5544:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u2415
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u2415
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u2415
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u2415:
	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l5548
u2410:
	line	16
	
l5546:	
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
	
l5548:	
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	18
	
l5550:	
	decfsz	(___llmod@counter),f
	goto	u2421
	goto	u2420
u2421:
	goto	l5544
u2420:
	line	20
	
l5552:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	21
	
l2424:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text650,local,class=CODE,delta=2
global __ptext650
__ptext650:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text650
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l5492:	
	clrf	(___awdiv@sign)
	line	10
	
l5494:	
	btfss	(___awdiv@divisor+1),7
	goto	u2321
	goto	u2320
u2321:
	goto	l5500
u2320:
	line	11
	
l5496:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l5498:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l5500:	
	btfss	(___awdiv@dividend+1),7
	goto	u2331
	goto	u2330
u2331:
	goto	l5506
u2330:
	line	15
	
l5502:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l5504:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l5506:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l5508:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2341
	goto	u2340
u2341:
	goto	l5528
u2340:
	line	20
	
l5510:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l5514
	line	22
	
l5512:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l5514:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l5512
u2350:
	line	26
	
l5516:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l5518:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2365
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2365:
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l5524
u2360:
	line	28
	
l5520:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l5522:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l5524:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l5526:	
	decfsz	(___awdiv@counter),f
	goto	u2371
	goto	u2370
u2371:
	goto	l5516
u2370:
	line	34
	
l5528:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2380
	goto	l5532
u2380:
	line	35
	
l5530:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l5532:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2414:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text651,local,class=CODE,delta=2
global __ptext651
__ptext651:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text651
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l5454:	
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
	goto	u2241
	goto	u2240
u2241:
	goto	l5458
u2240:
	line	50
	
l5456:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l2374
	line	51
	
l5458:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2255:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2250:
	addlw	-1
	skipz
	goto	u2255
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l5460:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l5462:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l5464:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l5466:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l5468:	
	btfss	(___fttol@exp1),7
	goto	u2261
	goto	u2260
u2261:
	goto	l5478
u2260:
	line	57
	
l5470:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2271
	goto	u2270
u2271:
	goto	l5474
u2270:
	goto	l5456
	line	60
	
l5474:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l5476:	
	incfsz	(___fttol@exp1),f
	goto	u2281
	goto	u2280
u2281:
	goto	l5474
u2280:
	goto	l5484
	line	63
	
l5478:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l2381
u2290:
	goto	l5456
	line	66
	
l5482:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l2381:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u2301
	goto	u2300
u2301:
	goto	l5482
u2300:
	line	70
	
l5484:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2310
	goto	l5488
u2310:
	line	71
	
l5486:	
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
	
l5488:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l2374:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text652,local,class=CODE,delta=2
global __ptext652
__ptext652:

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
psect	text652
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l5426:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2170
	goto	l5430
u2170:
	
l5428:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2181
	goto	u2180
u2181:
	goto	l5436
u2180:
	line	65
	
l5430:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l2633
	line	67
	
l5434:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l5436:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2191
	goto	u2190
u2191:
	goto	l5434
u2190:
	goto	l5440
	line	71
	
l5438:	
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
	
l5440:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2201
	goto	u2200
u2201:
	goto	l5438
u2200:
	goto	l5444
	line	76
	
l5442:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l5444:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l5442
u2210:
	
l2642:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l2643
u2220:
	line	80
	
l5446:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l2643:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l5448:	
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
	
l5450:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2230
	goto	l2644
u2230:
	line	84
	
l5452:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2644:	
	line	85
	line	86
	
l2633:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lbmod
psect	text653,local,class=CODE,delta=2
global __ptext653
__ptext653:

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
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
psect	text653
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
	
l5408:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l5410:	
	clrf	(___lbmod@rem)
	line	12
	
l5412:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2145:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2145
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l5414:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l5416:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l5420
u2150:
	line	15
	
l5418:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l5420:	
	decfsz	(___lbmod@counter),f
	goto	u2161
	goto	u2160
u2161:
	goto	l5412
u2160:
	line	17
	
l5422:	
	movf	(___lbmod@rem),w
	line	18
	
l2303:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text654,local,class=CODE,delta=2
global __ptext654
__ptext654:

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
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
psect	text654
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
	
l5384:	
	clrf	(___lbdiv@quotient)
	line	10
	
l5386:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u2100
	goto	l5404
u2100:
	line	11
	
l5388:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l5392
	
l2292:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l5390:	
	incf	(___lbdiv@counter),f
	line	12
	
l5392:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u2111
	goto	u2110
u2111:
	goto	l2292
u2110:
	line	16
	
l2294:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l5394:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u2121
	goto	u2120
u2121:
	goto	l5400
u2120:
	line	19
	
l5396:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l5398:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l5400:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l5402:	
	decfsz	(___lbdiv@counter),f
	goto	u2131
	goto	u2130
u2131:
	goto	l2294
u2130:
	line	25
	
l5404:	
	movf	(___lbdiv@quotient),w
	line	26
	
l2297:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___lwdiv
psect	text655,local,class=CODE,delta=2
global __ptext655
__ptext655:

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
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text655
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l5358:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l5360:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2061
	goto	u2060
u2061:
	goto	l5380
u2060:
	line	11
	
l5362:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l5366
	line	13
	
l5364:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l5366:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2071
	goto	u2070
u2071:
	goto	l5364
u2070:
	line	17
	
l5368:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l5370:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2085
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2085:
	skipc
	goto	u2081
	goto	u2080
u2081:
	goto	l5376
u2080:
	line	19
	
l5372:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l5374:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l5376:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l5378:	
	decfsz	(___lwdiv@counter),f
	goto	u2091
	goto	u2090
u2091:
	goto	l5368
u2090:
	line	25
	
l5380:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2277:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text656,local,class=CODE,delta=2
global __ptext656
__ptext656:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text656
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l5342:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l5344:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2041
	goto	u2040
u2041:
	goto	l5348
u2040:
	line	8
	
l5346:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l5348:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l5350:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l5352:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2051
	goto	u2050
u2051:
	goto	l5344
u2050:
	line	12
	
l5354:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2267:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text657,local,class=CODE,delta=2
global __ptext657
__ptext657:

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
psect	text657
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
	
l5326:	
	clrf	(___bmul@product)
	line	7
	
l5328:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2021
	goto	u2020
u2021:
	goto	l5332
u2020:
	line	8
	
l5330:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l5332:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l5334:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l5336:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2031
	goto	u2030
u2031:
	goto	l5328
u2030:
	line	12
	
l5338:	
	movf	(___bmul@product),w
	line	13
	
l2261:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text658,local,class=CODE,delta=2
global __ptext658
__ptext658:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text658
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 5
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l5280:	
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
	goto	u1931
	goto	u1930
u1931:
	goto	l5284
u1930:
	line	67
	
l5282:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l2551
	line	68
	
l5284:	
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
	goto	u1941
	goto	u1940
u1941:
	goto	l5288
u1940:
	goto	l5282
	line	70
	
l5288:	
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
	
l5290:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l5292:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l5294:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l5296:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l5298:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l5300:	
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
	goto	u1955
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u1955
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u1955
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u1955:
	skipc
	goto	u1951
	goto	u1950
u1951:
	goto	l2554
u1950:
	line	81
	
l5302:	
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
	
l5304:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l2554:	
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
	
l5306:	
	decfsz	(__div_to_l_@cntr),f
	goto	u1961
	goto	u1960
u1961:
	goto	l5298
u1960:
	
l2555:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u1971
	goto	u1970
u1971:
	goto	l5316
u1970:
	line	87
	
l5308:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u1981
	goto	u1980
u1981:
	goto	l5312
u1980:
	goto	l5282
	line	90
	
l5312:	
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l5314:	
	incfsz	(__div_to_l_@exp1),f
	goto	u1991
	goto	u1990
u1991:
	goto	l5312
u1990:
	goto	l5322
	line	93
	
l5316:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u2001
	goto	u2000
u2001:
	goto	l2562
u2000:
	goto	l5282
	line	96
	
l5320:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l2562:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u2011
	goto	u2010
u2011:
	goto	l5320
u2010:
	line	100
	
l5322:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l2551:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text659,local,class=CODE,delta=2
global __ptext659
__ptext659:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text659
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 5
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l5232:	
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
	goto	u1841
	goto	u1840
u1841:
	goto	l5236
u1840:
	line	67
	
l5234:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l2508
	line	68
	
l5236:	
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
	goto	u1851
	goto	u1850
u1851:
	goto	l2509
u1850:
	goto	l5234
	line	69
	
l2509:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l5240:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l5242:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l5244:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l5246:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l5248:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l5250:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l5252:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u1865
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u1865
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u1865:
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l5258
u1860:
	line	81
	
l5254:	
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
	
l5256:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l5258:	
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l5260:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u1871
	goto	u1870
u1871:
	goto	l5250
u1870:
	
l2512:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u1881
	goto	u1880
u1881:
	goto	l5270
u1880:
	line	87
	
l5262:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u1891
	goto	u1890
u1891:
	goto	l5266
u1890:
	goto	l5234
	line	90
	
l5266:	
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l5268:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u1901
	goto	u1900
u1901:
	goto	l5266
u1900:
	goto	l5276
	line	93
	
l5270:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u1911
	goto	u1910
u1911:
	goto	l2519
u1910:
	goto	l5234
	line	96
	
l5274:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l2519:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u1921
	goto	u1920
u1921:
	goto	l5274
u1920:
	line	100
	
l5276:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l2508:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text660,local,class=CODE,delta=2
global __ptext660
__ptext660:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text660
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
	
l5220:	
	clrf	(_isdigit$2433)
	
l5222:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u1821
	goto	u1820
u1821:
	goto	l5228
u1820:
	
l5224:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u1831
	goto	u1830
u1831:
	goto	l5228
u1830:
	
l5226:	
	clrf	(_isdigit$2433)
	incf	(_isdigit$2433),f
	
l5228:	
	rrf	(_isdigit$2433),w
	
	line	15
	
l2235:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_msecbase
psect	text661,local,class=CODE,delta=2
global __ptext661
__ptext661:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 305 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
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
psect	text661
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	line	305
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 5
; Regs used in _msecbase: [wreg]
	line	306
	
l5218:	
;SRPROG.c: 306: OPTION_REG = 0b11010010;
	movlw	(0D2h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	307
;SRPROG.c: 307: TMR0 = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	308
;SRPROG.c: 308: TMR0 = 0x8E;
	movlw	(08Eh)
	movwf	(1)	;volatile
	line	309
;SRPROG.c: 309: while(!T0IF);
	
l1121:	
	btfss	(90/8),(90)&7
	goto	u1811
	goto	u1810
u1811:
	goto	l1121
u1810:
	
l1123:	
	line	310
;SRPROG.c: 310: T0IF = 0;
	bcf	(90/8),(90)&7
	line	311
	
l1124:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_wait_sensor
psect	text662,local,class=CODE,delta=2
global __ptext662
__ptext662:

;; *************** function _wait_sensor *****************
;; Defined at:
;;		line 70 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text662
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	line	70
	global	__size_of_wait_sensor
	__size_of_wait_sensor	equ	__end_of_wait_sensor-_wait_sensor
	
_wait_sensor:	
	opt	stack 7
; Regs used in _wait_sensor: [wreg+status,2+status,0]
	line	72
	
l5196:	
;SRPROG.c: 72: uint16_t i=0;
	clrf	(wait_sensor@i)
	clrf	(wait_sensor@i+1)
	line	73
;SRPROG.c: 73: TMR1H=0;
	clrf	(15)	;volatile
	line	74
;SRPROG.c: 74: TMR1L=0;
	clrf	(14)	;volatile
	line	75
	
l5198:	
;SRPROG.c: 75: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	77
;SRPROG.c: 77: while(!RB0 && (i<1000)){
	goto	l5202
	line	78
	
l5200:	
;SRPROG.c: 78: i=(TMR1H<<8)|TMR1L;
	movf	(15),w	;volatile
	movwf	(wait_sensor@i+1)
	clrf	(wait_sensor@i)
	movf	(14),w	;volatile
	iorwf	(wait_sensor@i),f
	line	77
	
l5202:	
	btfsc	(48/8),(48)&7
	goto	u1781
	goto	u1780
u1781:
	goto	l5206
u1780:
	
l5204:	
	movlw	high(03E8h)
	subwf	(wait_sensor@i+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(wait_sensor@i),w
	skipc
	goto	u1791
	goto	u1790
u1791:
	goto	l5200
u1790:
	line	81
	
l5206:	
;SRPROG.c: 79: }
;SRPROG.c: 81: if(i>=1000){
	movlw	high(03E8h)
	subwf	(wait_sensor@i+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(wait_sensor@i),w
	skipc
	goto	u1801
	goto	u1800
u1801:
	goto	l5214
u1800:
	line	82
	
l5208:	
;SRPROG.c: 82: return 0;
	clrf	(?_wait_sensor)
	clrf	(?_wait_sensor+1)
	goto	l1070
	line	84
	
l5214:	
;SRPROG.c: 84: return 1;
	clrf	(?_wait_sensor)
	incf	(?_wait_sensor),f
	clrf	(?_wait_sensor+1)
	line	87
	
l1070:	
	return
	opt stack 0
GLOBAL	__end_of_wait_sensor
	__end_of_wait_sensor:
;; =============== function _wait_sensor ends ============

	signat	_wait_sensor,90
	global	_init_comms
psect	text663,local,class=CODE,delta=2
global __ptext663
__ptext663:

;; *************** function _init_comms *****************
;; Defined at:
;;		line 60 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
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
psect	text663
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	line	60
	global	__size_of_init_comms
	__size_of_init_comms	equ	__end_of_init_comms-_init_comms
	
_init_comms:	
	opt	stack 7
; Regs used in _init_comms: [wreg+status,2]
	line	61
	
l5190:	
;SRPROG.c: 61: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	62
;SRPROG.c: 62: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	63
	
l5192:	
;SRPROG.c: 63: SPBRG = 0x19;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	65
;SRPROG.c: 65: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	66
;SRPROG.c: 66: TXSTA = 0x26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	67
	
l5194:	
;SRPROG.c: 67: BAUDCTL = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	68
	
l1061:	
	return
	opt stack 0
GLOBAL	__end_of_init_comms
	__end_of_init_comms:
;; =============== function _init_comms ends ============

	signat	_init_comms,88
	global	_getch
psect	text664,local,class=CODE,delta=2
global __ptext664
__ptext664:

;; *************** function _getch *****************
;; Defined at:
;;		line 53 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
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
;; This function uses a non-reentrant model
;;
psect	text664
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	line	53
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 7
; Regs used in _getch: [wreg]
	line	55
	
l5184:	
	line	56
;SRPROG.c: 55: while(!RCIF)
	
l1055:	
	line	55
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u1771
	goto	u1770
u1771:
	goto	l1055
u1770:
	line	57
	
l5186:	
;SRPROG.c: 57: return RCREG;
;	Return value of _getch is never used
	movf	(26),w	;volatile
	line	58
	
l1058:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_putch
psect	text665,local,class=CODE,delta=2
global __ptext665
__ptext665:

;; *************** function _putch *****************
;; Defined at:
;;		line 46 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
;; Parameters:    Size  Location     Type
;;  byte            1    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 160/20
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text665
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG\SRPROG.c"
	line	46
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 5
; Regs used in _putch: [wreg]
	line	48
	
l5180:	
	line	49
;SRPROG.c: 48: while(!TXIF)
	
l1049:	
	line	48
	bcf	status, 5	;RP0=0, select bank0
	btfss	(100/8),(100)&7
	goto	u1761
	goto	u1760
u1761:
	goto	l1049
u1760:
	line	50
	
l5182:	
;SRPROG.c: 50: TXREG = byte;
	movf	(putch@byte),w
	movwf	(25)	;volatile
	line	51
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	fptotal
fptotal equ 2
	file ""
	line	#
psect	functab,class=CODE,delta=2,reloc=256
global __pfunctab
__pfunctab:
	global	fptable
fptable:
	movwf (btemp+1)&07Fh
	movlw high(fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	fpbase
fpbase:
	goto fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp__putch:
	ljmp	_putch
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
