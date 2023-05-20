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
# 2 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 3 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_init_comms
	FNCALL	_main,___ftge
	FNCALL	_main,_putch
	FNCALL	_main,_printf
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_sprintf
	FNCALL	_main,_lcd_puts
	FNCALL	_main,___ftadd
	FNCALL	_main,_getch
	FNCALL	_sprintf,__doprnt
	FNCALL	_printf,__doprnt
	FNCALL	_lcd_init,_pause
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_init,_lcd_clear
	FNCALL	__doprnt,Fake
	FNCALL	__doprnt,_putch
	FNCALL	__doprnt,___ftge
	FNCALL	__doprnt,___ftneg
	FNCALL	__doprnt,___wmul
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
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_goto,_lcd_write
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
	global	_carac
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TMR0
_TMR0	set	1
	global	_TXREG
_TXREG	set	25
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
	global	_ADCON1
_ADCON1	set	159
	global	_OPTION_REG
_OPTION_REG	set	129
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
	
STR_7:	
	retlw	13
	retlw	10
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	32	;' '
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	58	;':'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_9:	
	retlw	76	;'L'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	58	;':'
	retlw	91	;'['
	retlw	37	;'%'
	retlw	99	;'c'
	retlw	93	;']'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_8:	
	retlw	76	;'L'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_12:	
	retlw	37	;'%'
	retlw	99	;'c'
	retlw	0
psect	strings
	
STR_2:	
	retlw	37	;'%'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_1:	
	retlw	44	;','
	retlw	0
psect	strings
STR_4	equ	STR_2+0
STR_6	equ	STR_2+0
STR_10	equ	STR_2+0
STR_14	equ	STR_12+0
STR_3	equ	STR_1+0
STR_5	equ	STR_1+0
STR_11	equ	STR_9+0
STR_13	equ	STR_9+0
	file	"USART1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_carac:
       ds      1

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bsf	status, 5	;RP0=1, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	?_printf
?_printf:	; 2 bytes @ 0x0
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x0
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x0
	ds	2
	global	printf@f
printf@f:	; 1 bytes @ 0x2
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x3
	global	sprintf@wh
sprintf@wh:	; 1 bytes @ 0x3
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x4
	global	printf@pb
printf@pb:	; 2 bytes @ 0x4
	ds	1
	global	sprintf@pb
sprintf@pb:	; 2 bytes @ 0x5
	ds	2
	global	main@num
main@num:	; 3 bytes @ 0x7
	ds	3
	global	main@count_1835
main@count_1835:	; 1 bytes @ 0xA
	ds	1
	global	main@count_1838
main@count_1838:	; 1 bytes @ 0xB
	ds	1
	global	main@input
main@input:	; 1 bytes @ 0xC
	ds	1
	global	main@count
main@count:	; 1 bytes @ 0xD
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
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x8
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
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0xB
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
	global	??_printf
??_printf:	; 0 bytes @ 0xE
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0xE
	global	??_putch
??_putch:	; 0 bytes @ 0xE
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
	global	_scale$2904
_scale$2904:	; 3 bytes @ 0x23
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
	global	_fround$2903
_fround$2903:	; 3 bytes @ 0x2B
	ds	3
	global	_fround$2902
_fround$2902:	; 3 bytes @ 0x2E
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
	global	__doprnt$1919
__doprnt$1919:	; 4 bytes @ 0x39
	ds	4
	global	__doprnt@flag
__doprnt@flag:	; 2 bytes @ 0x3D
	ds	2
	global	__doprnt@prec
__doprnt@prec:	; 2 bytes @ 0x3F
	ds	2
	global	__doprnt@integ
__doprnt@integ:	; 3 bytes @ 0x41
	ds	3
	global	__doprnt@_val
__doprnt@_val:	; 4 bytes @ 0x44
	ds	4
	global	__doprnt@exp
__doprnt@exp:	; 2 bytes @ 0x48
	ds	2
	global	__doprnt@fval
__doprnt@fval:	; 3 bytes @ 0x4A
	ds	3
	global	__doprnt@c
__doprnt@c:	; 1 bytes @ 0x4D
	ds	1
	global	__doprnt@pb
__doprnt@pb:	; 1 bytes @ 0x4E
	ds	1
;;Data sizes: Strings 65, constant 118, data 0, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     79      79
;; BANK1           80     14      15
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), 
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), 
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
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), 
;;
;; ?___ftneg	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), 
;;
;; ?___awmod	int  size(2) Largest target is 40
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), dpowers(CODE[40]), 
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
;; ?___ftadd	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), 
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 3
;;		 -> STR_14(CODE[3]), STR_12(CODE[3]), STR_10(CODE[3]), STR_6(CODE[3]), 
;;		 -> STR_4(CODE[3]), STR_2(CODE[3]), 
;;
;; ?_sprintf	int  size(1) Largest target is 1
;;		 -> NULL(NULL[0]), carac(BANK1[1]), 
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), 
;;
;; sprintf@wh	PTR unsigned char  size(1) Largest target is 1
;;		 -> carac(BANK1[1]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 1
;;		 -> NULL(NULL[0]), carac(BANK1[1]), 
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 25
;;		 -> STR_13(CODE[19]), STR_11(CODE[19]), STR_9(CODE[19]), STR_7(CODE[25]), 
;;		 -> STR_5(CODE[2]), STR_3(CODE[2]), STR_1(CODE[2]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 1
;;		 -> NULL(NULL[0]), carac(BANK1[1]), 
;;
;; _doprnt@f	PTR const unsigned char  size(1) Largest target is 25
;;		 -> STR_14(CODE[3]), STR_13(CODE[19]), STR_12(CODE[3]), STR_11(CODE[19]), 
;;		 -> STR_10(CODE[3]), STR_9(CODE[19]), STR_7(CODE[25]), STR_6(CODE[3]), 
;;		 -> STR_5(CODE[2]), STR_4(CODE[3]), STR_3(CODE[2]), STR_2(CODE[3]), 
;;		 -> STR_1(CODE[2]), 
;;
;; _doprnt@ap	PTR PTR void  size(1) Largest target is 2
;;		 -> sprintf@ap(BANK1[1]), printf@ap(BANK1[1]), 
;;
;; S1860__prbuf$func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; _doprnt@pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; S1860__prbuf$ptr	PTR unsigned char  size(1) Largest target is 1
;;		 -> NULL(NULL[0]), carac(BANK1[1]), 
;;
;; _doprnt@pb.ptr	PTR unsigned char  size(1) Largest target is 1
;;		 -> NULL(NULL[0]), carac(BANK1[1]), 
;;
;; _doprnt@pb	PTR struct __prbuf size(1) Largest target is 3
;;		 -> sprintf@pb(BANK1[2]), printf@pb(BANK1[2]), 
;;
;; S1901$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 13
;;		 -> STR_8(CODE[13]), carac(BANK1[1]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _lcd_init->_lcd_write
;;   __doprnt->___awdiv
;;   __doprnt->__div_to_l_
;;   __doprnt->___llmod
;;   _lcd_puts->_lcd_write
;;   _lcd_goto->_lcd_write
;;   _lcd_clear->_lcd_write
;;   _scale->___awdiv
;;   _lcd_write->_pause
;;   ___lltoft->___ftpack
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
;; (0) _main                                                 7     7      0   23044
;;                                              7 BANK1      7     7      0
;;                           _lcd_init
;;                          _lcd_clear
;;                         _init_comms
;;                             ___ftge
;;                              _putch
;;                             _printf
;;                           _lcd_goto
;;                            _sprintf
;;                           _lcd_puts
;;                            ___ftadd
;;                              _getch
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                              7     4      3   10237
;;                                              0 BANK1      7     4      3
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (1) _printf                                               6     4      2   10181
;;                                              0 BANK1      6     4      2
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             1     1      0     295
;;                                              5 COMMON     1     1      0
;;                              _pause
;;                          _lcd_write
;;                          _lcd_clear
;; ---------------------------------------------------------------------------------
;; (2) __doprnt                                             35    33      2   10040
;;                                             50 BANK0     29    27      2
;;                   Absolute function
;;                              _putch
;;                             ___ftge
;;                            ___ftneg
;;                             ___wmul
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
;; (1) _lcd_puts                                             2     0      2     135
;;                                              5 COMMON     2     0      2
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0     112
;;                                              5 COMMON     1     1      0
;;                          _lcd_write
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
;; (3) ___lltoft                                             5     1      4     278
;;                                              8 COMMON     5     1      4
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
;; (1) ___ftadd                                             12     6      6    1049
;;                                             28 BANK0     12     6      6
;;                           ___ftpack
;;                            ___lbmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___ftmul (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _pause                                                4     2      2      46
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
;; (2) ___ftpack                                             8     3      5     209
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
;; (3) Absolute function(Fake)                               1     0      1       0
;;                                              0 COMMON     1     0      1
;; ---------------------------------------------------------------------------------
;; (4) _msecbase                                             0     0      0       0
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
;;   _init_comms
;;   ___ftge
;;   _putch
;;     ___llmod (ARG)
;;       ___lldiv (ARG)
;;     ___lldiv (ARG)
;;   _printf
;;     __doprnt
;;       Absolute function(Fake)
;;       _putch
;;         ___llmod (ARG)
;;           ___lldiv (ARG)
;;         ___lldiv (ARG)
;;       ___ftge
;;       ___ftneg
;;       ___wmul
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
;;   _lcd_goto
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _sprintf
;;     __doprnt
;;       Absolute function(Fake)
;;       _putch
;;         ___llmod (ARG)
;;           ___lldiv (ARG)
;;         ___lldiv (ARG)
;;       ___ftge
;;       ___ftneg
;;       ___wmul
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
;;   _lcd_puts
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   ___ftadd
;;     ___ftpack
;;     ___lbmod (ARG)
;;     ___bmul (ARG)
;;       ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;     ___lbdiv (ARG)
;;       ___lbmod (ARG)
;;     ___ftmul (ARG)
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
;;   _getch
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
;;ABS                  0      0      6C       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     4F      4F       5       98.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      E       F       7       18.8%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      71      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 73 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           1   11[BANK1 ] unsigned char 
;;  count           1   10[BANK1 ] unsigned char 
;;  count           1   13[BANK1 ] unsigned char 
;;  num             3    7[BANK1 ] float 
;;  input           1   12[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/20
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       7       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_init
;;		_lcd_clear
;;		_init_comms
;;		___ftge
;;		_putch
;;		_printf
;;		_lcd_goto
;;		_sprintf
;;		_lcd_puts
;;		___ftadd
;;		_getch
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
	line	73
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	75
	
l5861:	
;USART1.c: 75: ANSEL = 0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	76
;USART1.c: 76: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	78
;USART1.c: 78: TRISA = 0x00; TRISB = 0x00;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	clrf	(134)^080h	;volatile
	line	79
;USART1.c: 79: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	80
;USART1.c: 80: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	81
	
l5863:	
;USART1.c: 81: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	82
	
l5865:	
;USART1.c: 82: ADCON1 = 0x80;
	movlw	(080h)
	movwf	(159)^080h	;volatile
	line	84
	
l5867:	
;USART1.c: 84: lcd_init();
	fcall	_lcd_init
	line	85
	
l5869:	
;USART1.c: 85: lcd_clear();
	fcall	_lcd_clear
	line	88
	
l5871:	
;USART1.c: 87: char input;
;USART1.c: 88: float num=0x30;
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@num)^080h
	movlw	0x40
	movwf	(main@num+1)^080h
	movlw	0x42
	movwf	(main@num+2)^080h
	line	89
	
l5873:	
;USART1.c: 89: ANSEL = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	90
	
l5875:	
;USART1.c: 90: ANSELH = 0;
	clrf	(393)^0180h	;volatile
	line	93
	
l5877:	
;USART1.c: 93: init_comms();
	fcall	_init_comms
	line	102
	
l5879:	
	movlw	0x0
	movwf	(?___ftge)
	movlw	0x78
	movwf	(?___ftge+1)
	movlw	0x42
	movwf	(?___ftge+2)
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@num)^080h,w
	movwf	0+(?___ftge)+03h
	movf	(main@num+1)^080h,w
	movwf	1+(?___ftge)+03h
	movf	(main@num+2)^080h,w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3001
	goto	u3000
u3001:
	goto	l5883
u3000:
	goto	l5927
	line	103
	
l5883:	
;USART1.c: 103: for (count = 0x30; count <= 0x39; count = count +1)
	movlw	(030h)
	movwf	(main@count)^080h
	line	105
	
l5887:	
;USART1.c: 104: {
;USART1.c: 105: putch(count);
	movf	(main@count)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	fcall	_putch
	line	106
	
l5889:	
;USART1.c: 106: printf(",");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	107
	
l5891:	
;USART1.c: 107: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	108
;USART1.c: 108: sprintf(carac,"%f",input);
	movlw	((STR_2-__stringbase))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_sprintf)^080h
	movf	(main@input)^080h,w
	movwf	0+(?_sprintf)^080h+01h
	clrf	1+(?_sprintf)^080h+01h
	movlw	(_carac)&0ffh
	fcall	_sprintf
	line	109
;USART1.c: 109: lcd_puts(carac);
	movlw	(_carac&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	103
	
l5893:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(main@count)^080h,f
	
l5895:	
	movlw	(03Ah)
	subwf	(main@count)^080h,w
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l5887
u3010:
	line	112
	
l5897:	
;USART1.c: 110: }
;USART1.c: 112: for (count = 0x41; count <= 0x5A; count = count +1)
	movlw	(041h)
	movwf	(main@count)^080h
	line	114
	
l5901:	
;USART1.c: 113: {
;USART1.c: 114: putch(count);
	movf	(main@count)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	fcall	_putch
	line	115
	
l5903:	
;USART1.c: 115: printf(",");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	line	116
	
l5905:	
;USART1.c: 116: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	117
;USART1.c: 117: sprintf(carac,"%f",input);
	movlw	((STR_4-__stringbase))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_sprintf)^080h
	movf	(main@input)^080h,w
	movwf	0+(?_sprintf)^080h+01h
	clrf	1+(?_sprintf)^080h+01h
	movlw	(_carac)&0ffh
	fcall	_sprintf
	line	118
;USART1.c: 118: lcd_puts(carac);
	movlw	(_carac&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	112
	
l5907:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(main@count)^080h,f
	
l5909:	
	movlw	(05Bh)
	subwf	(main@count)^080h,w
	skipc
	goto	u3021
	goto	u3020
u3021:
	goto	l5901
u3020:
	line	121
	
l5911:	
;USART1.c: 119: }
;USART1.c: 121: for (count = 0x61; count <= 0x7A; count = count +1)
	movlw	(061h)
	movwf	(main@count)^080h
	line	123
	
l5915:	
;USART1.c: 122: {
;USART1.c: 123: putch(count);
	movf	(main@count)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	fcall	_putch
	line	124
	
l5917:	
;USART1.c: 124: printf(",");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_printf
	line	125
	
l5919:	
;USART1.c: 125: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	126
;USART1.c: 126: sprintf(carac,"%f",input);
	movlw	((STR_6-__stringbase))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_sprintf)^080h
	movf	(main@input)^080h,w
	movwf	0+(?_sprintf)^080h+01h
	clrf	1+(?_sprintf)^080h+01h
	movlw	(_carac)&0ffh
	fcall	_sprintf
	line	127
;USART1.c: 127: lcd_puts(carac);
	movlw	(_carac&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	121
	
l5921:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(main@count)^080h,f
	
l5923:	
	movlw	(07Bh)
	subwf	(main@count)^080h,w
	skipc
	goto	u3031
	goto	u3030
u3031:
	goto	l5915
u3030:
	line	102
	
l5925:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0x3f
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@num)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@num+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@num+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@num)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@num+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@num+2)^080h
	movlw	0x0
	movwf	(?___ftge)
	movlw	0x78
	movwf	(?___ftge+1)
	movlw	0x42
	movwf	(?___ftge+2)
	movf	(main@num)^080h,w
	movwf	0+(?___ftge)+03h
	movf	(main@num+1)^080h,w
	movwf	1+(?___ftge)+03h
	movf	(main@num+2)^080h,w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3041
	goto	u3040
u3041:
	goto	l5883
u3040:
	line	131
	
l5927:	
;USART1.c: 128: }
;USART1.c: 129: }
;USART1.c: 131: printf("\r\nDa clic a una tecla:\r\n");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_printf
	line	132
	
l5929:	
;USART1.c: 132: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	133
	
l5931:	
;USART1.c: 133: lcd_puts("La tecla es:");
	movlw	low((STR_8-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	134
	
l5933:	
;USART1.c: 134: input = getch();
	fcall	_getch
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@input)^080h
	line	136
	
l5935:	
;USART1.c: 136: for (count = 0x30; count <= 0x39; count = count +1)
	movlw	(030h)
	movwf	(main@count)^080h
	line	138
	
l5941:	
;USART1.c: 137: {
;USART1.c: 138: if(input==count){
	movf	(main@input)^080h,w
	xorwf	(main@count)^080h,w
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l5949
u3050:
	line	139
	
l5943:	
;USART1.c: 139: printf("La tecla es:[%c]\r\n",input);
	movf	(main@input)^080h,w
	movwf	(?_printf)^080h
	clrf	(?_printf+1)^080h
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_printf
	line	140
;USART1.c: 140: sprintf(carac,"%f",input);
	movlw	((STR_10-__stringbase))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_sprintf)^080h
	movf	(main@input)^080h,w
	movwf	0+(?_sprintf)^080h+01h
	clrf	1+(?_sprintf)^080h+01h
	movlw	(_carac)&0ffh
	fcall	_sprintf
	line	141
	
l5945:	
;USART1.c: 141: lcd_goto(0x08);
	movlw	(08h)
	fcall	_lcd_goto
	line	142
	
l5947:	
;USART1.c: 142: lcd_puts(carac);
	movlw	(_carac&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	136
;USART1.c: 143: }else;
	
l5949:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(main@count)^080h,f
	
l5951:	
	movlw	(03Ah)
	subwf	(main@count)^080h,w
	skipc
	goto	u3061
	goto	u3060
u3061:
	goto	l5941
u3060:
	line	146
	
l5953:	
;USART1.c: 144: }
;USART1.c: 146: for (char count = 0x41; count <= 0x5A; count = count +1)
	movlw	(041h)
	movwf	(main@count_1835)^080h
	line	148
	
l5957:	
;USART1.c: 147: {
;USART1.c: 148: if(input==count){
	movf	(main@input)^080h,w
	xorwf	(main@count_1835)^080h,w
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l5965
u3070:
	line	149
	
l5959:	
;USART1.c: 149: printf("La tecla es:[%c]\r\n",input);
	movf	(main@input)^080h,w
	movwf	(?_printf)^080h
	clrf	(?_printf+1)^080h
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_printf
	line	150
;USART1.c: 150: sprintf(carac,"%c",input);
	movlw	((STR_12-__stringbase))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_sprintf)^080h
	movf	(main@input)^080h,w
	movwf	0+(?_sprintf)^080h+01h
	clrf	1+(?_sprintf)^080h+01h
	movlw	(_carac)&0ffh
	fcall	_sprintf
	line	151
	
l5961:	
;USART1.c: 151: lcd_goto(0x08);
	movlw	(08h)
	fcall	_lcd_goto
	line	152
	
l5963:	
;USART1.c: 152: lcd_puts(carac);
	movlw	(_carac&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	146
;USART1.c: 153: }else;
	
l5965:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(main@count_1835)^080h,f
	
l5967:	
	movlw	(05Bh)
	subwf	(main@count_1835)^080h,w
	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l5957
u3080:
	line	156
	
l5969:	
;USART1.c: 154: }
;USART1.c: 156: for (char count = 0x61; count <= 0x7A; count = count +1)
	movlw	(061h)
	movwf	(main@count_1838)^080h
	line	158
	
l5973:	
;USART1.c: 157: {
;USART1.c: 158: if(input==count){
	movf	(main@input)^080h,w
	xorwf	(main@count_1838)^080h,w
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l5981
u3090:
	line	159
	
l5975:	
;USART1.c: 159: printf("La tecla es:[%c]\r\n",input);
	movf	(main@input)^080h,w
	movwf	(?_printf)^080h
	clrf	(?_printf+1)^080h
	movlw	((STR_13-__stringbase))&0ffh
	fcall	_printf
	line	160
;USART1.c: 160: sprintf(carac,"%c",input);
	movlw	((STR_14-__stringbase))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_sprintf)^080h
	movf	(main@input)^080h,w
	movwf	0+(?_sprintf)^080h+01h
	clrf	1+(?_sprintf)^080h+01h
	movlw	(_carac)&0ffh
	fcall	_sprintf
	line	161
	
l5977:	
;USART1.c: 161: lcd_goto(0x08);
	movlw	(08h)
	fcall	_lcd_goto
	line	162
	
l5979:	
;USART1.c: 162: lcd_puts(carac);
	movlw	(_carac&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	156
;USART1.c: 163: }else;
	
l5981:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(main@count_1838)^080h,f
	
l5983:	
	movlw	(07Bh)
	subwf	(main@count_1838)^080h,w
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l5973
u3100:
	goto	l5879
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	176
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_sprintf
psect	text560,local,class=CODE,delta=2
global __ptext560
__ptext560:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\sprintf.c"
;; Parameters:    Size  Location     Type
;;  wh              1    wreg     PTR unsigned char 
;;		 -> carac(1), 
;;  f               1    0[BANK1 ] PTR const unsigned char 
;;		 -> STR_14(3), STR_12(3), STR_10(3), STR_6(3), 
;;		 -> STR_4(3), STR_2(3), 
;; Auto vars:     Size  Location     Type
;;  wh              1    3[BANK1 ] PTR unsigned char 
;;		 -> carac(1), 
;;  pb              2    5[BANK1 ] struct __prbuf
;;  ap              1    4[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 160/20
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text560
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\sprintf.c"
	line	14
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@wh stored from wreg
	line	31
	movwf	(sprintf@wh)^080h
	
l5849:	
	movf	(sprintf@wh)^080h,w
	movwf	(sprintf@pb)^080h
	line	32
	
l5851:	
	clrf	(0+sprintf@pb+01h)^080h
	line	33
	
l5853:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)^080h
	line	34
	
l5855:	
	movf	(sprintf@f)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?__doprnt)
	movlw	(sprintf@ap)&0ffh
	movwf	(0+?__doprnt+01h)
	movlw	(sprintf@pb)&0ffh
	fcall	__doprnt
	line	35
	
l5857:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@pb)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	38
	
l2212:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_printf
psect	text561,local,class=CODE,delta=2
global __ptext561
__ptext561:

;; *************** function _printf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\printf.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_13(19), STR_11(19), STR_9(19), STR_7(25), 
;;		 -> STR_5(2), STR_3(2), STR_1(2), 
;; Auto vars:     Size  Location     Type
;;  f               1    2[BANK1 ] PTR const unsigned char 
;;		 -> STR_13(19), STR_11(19), STR_9(19), STR_7(25), 
;;		 -> STR_5(2), STR_3(2), STR_1(2), 
;;  pb              2    4[BANK1 ] struct __prbuf
;;  ap              1    3[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       2       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text561
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\printf.c"
	line	14
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 3
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	23
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@f)^080h
	
l5839:	
	clrf	(printf@pb)^080h
	line	24
	
l5841:	
	movlw	((fp__putch-fpbase))&0ffh
	movwf	(0+printf@pb+01h)^080h
	line	25
	
l5843:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)^080h
	line	26
	
l5845:	
;	Return value of _printf is never used
	movf	(printf@f)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?__doprnt)
	movlw	(printf@ap)&0ffh
	movwf	(0+?__doprnt+01h)
	movlw	(printf@pb)&0ffh
	fcall	__doprnt
	line	28
	
l2205:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_lcd_init
psect	text562,local,class=CODE,delta=2
global __ptext562
__ptext562:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 215 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
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
psect	text562
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
	line	215
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	218
	
l5799:	
	line	220
	
l5801:	
;USART1.c: 220: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(60/8),(60)&7
	line	221
	
l5803:	
;USART1.c: 221: RC0 = 0;
	bcf	(56/8),(56)&7
	line	222
	
l5805:	
;USART1.c: 222: RC3 = 0;
	bcf	(59/8),(59)&7
	line	224
	
l5807:	
;USART1.c: 224: pause(15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	225
	
l5809:	
;USART1.c: 225: PORTD = init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	226
	
l5811:	
;USART1.c: 226: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l5813:	
	bcf	(56/8),(56)&7
	line	227
;USART1.c: 227: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	228
	
l5815:	
;USART1.c: 228: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l5817:	
	bcf	(56/8),(56)&7
	line	229
;USART1.c: 229: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	230
	
l5819:	
;USART1.c: 230: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l5821:	
	bcf	(56/8),(56)&7
	line	231
;USART1.c: 231: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	232
	
l5823:	
;USART1.c: 232: PORTD= 2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	233
	
l5825:	
;USART1.c: 233: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l5827:	
	bcf	(56/8),(56)&7
	line	235
	
l5829:	
;USART1.c: 235: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	236
	
l5831:	
;USART1.c: 236: lcd_write(0x0C);
	movlw	(0Ch)
	fcall	_lcd_write
	line	237
	
l5833:	
;USART1.c: 237: lcd_write(0x0F);
	movlw	(0Fh)
	fcall	_lcd_write
	line	238
	
l5835:	
;USART1.c: 238: lcd_clear();
	fcall	_lcd_clear
	line	239
	
l5837:	
;USART1.c: 239: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	240
	
l1102:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	__doprnt
psect	text563,local,class=CODE,delta=2
global __ptext563
__ptext563:

;; *************** function __doprnt *****************
;; Defined at:
;;		line 455 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  pb              1    wreg     PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  f               1   50[BANK0 ] PTR const unsigned char 
;;		 -> STR_14(3), STR_13(19), STR_12(3), STR_11(19), 
;;		 -> STR_10(3), STR_9(19), STR_7(25), STR_6(3), 
;;		 -> STR_5(2), STR_4(3), STR_3(2), STR_2(3), 
;;		 -> STR_1(2), 
;;  ap              1   51[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), printf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  pb              1   78[BANK0 ] PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  _val            4   68[BANK0 ] struct .
;;  fval            3   74[BANK0 ] struct .
;;  integ           3   65[BANK0 ] struct .
;;  ival            3    0        struct .
;;  exp             2   72[BANK0 ] int 
;;  prec            2   63[BANK0 ] int 
;;  flag            2   61[BANK0 ] unsigned short 
;;  width           2    0        int 
;;  c               1   77[BANK0 ] char 
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
;;      Locals:         0      22       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      29       0       0       0
;;Total ram usage:       29 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Absolute function
;;		_putch
;;		___ftge
;;		___ftneg
;;		___wmul
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
psect	text563
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	455
	global	__size_of__doprnt
	__size_of__doprnt	equ	__end_of__doprnt-__doprnt
	
__doprnt:	
	opt	stack 3
; Regs used in __doprnt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;__doprnt@pb stored from wreg
	movwf	(__doprnt@pb)
	line	540
	
l5593:	
	goto	l5793
	line	542
	
l5595:	
	movf	(__doprnt@c),w
	xorlw	025h
	skipnz
	goto	u2671
	goto	u2670
u2671:
	goto	l5605
u2670:
	line	545
	
l5597:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2681
	goto	u2680
u2681:
	goto	l5601
u2680:
	
l5599:	
	movf	(__doprnt@c),w
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l5793
	
l5601:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c),w
	movwf	indf
	
l5603:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	goto	l5793
	line	552
	
l5605:	
	clrf	(__doprnt@flag)
	clrf	(__doprnt@flag+1)
	line	638
	goto	l5619
	line	665
	
l1153:	
	line	666
	bsf	(__doprnt@flag)+(10/8),(10)&7
	line	667
	goto	l5621
	line	802
	
l5607:	
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
	movwf	(__doprnt@c)
	line	812
	
l5609:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2691
	goto	u2690
u2691:
	goto	l5601
u2690:
	goto	l5599
	line	638
	
l5619:	
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(__doprnt@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 102
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
; rangetable           107     6 (fixed)
; spacedrange          212     9 (fixed)
; locatedrange         103     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l5795
	xorlw	99^0	; case 99
	skipnz
	goto	l5607
	xorlw	102^99	; case 102
	skipnz
	goto	l1153
	goto	l5609
	opt asmopt_on

	line	828
	
l5621:	
	movlw	low(0700h)
	andwf	(__doprnt@flag),w
	movwf	(??__doprnt+0)+0
	movlw	high(0700h)
	andwf	(__doprnt@flag+1),w
	movwf	1+(??__doprnt+0)+0
	movf	1+(??__doprnt+0)+0,w
	iorwf	0+(??__doprnt+0)+0,w
	skipnz
	goto	u2701
	goto	u2700
u2701:
	goto	l5783
u2700:
	line	832
	
l5623:	
	movlw	06h
	movwf	(__doprnt@prec)
	clrf	(__doprnt@prec+1)
	line	833
	
l5625:	
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
	movwf	(__doprnt@fval)
	incf	fsr0,f
	movf	indf,w
	movwf	(__doprnt@fval+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(__doprnt@fval+2)
	line	834
	
l5627:	
	movf	(__doprnt@fval),w
	movwf	(?___ftge)
	movf	(__doprnt@fval+1),w
	movwf	(?___ftge+1)
	movf	(__doprnt@fval+2),w
	movwf	(?___ftge+2)
	clrf	0+(?___ftge)+03h
	clrf	1+(?___ftge)+03h
	clrf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u2711
	goto	u2710
u2711:
	goto	l5633
u2710:
	line	835
	
l5629:	
	movf	(__doprnt@fval),w
	movwf	(?___ftneg)
	movf	(__doprnt@fval+1),w
	movwf	(?___ftneg+1)
	movf	(__doprnt@fval+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(__doprnt@fval)
	movf	(1+(?___ftneg)),w
	movwf	(__doprnt@fval+1)
	movf	(2+(?___ftneg)),w
	movwf	(__doprnt@fval+2)
	line	836
	
l5631:	
	movlw	03h
	iorwf	(__doprnt@flag),f
	line	838
	
l5633:	
	clrf	(__doprnt@exp)
	clrf	(__doprnt@exp+1)
	line	839
	
l5635:	
	movf	(__doprnt@fval+2),w
	iorwf	(__doprnt@fval+1),w
	iorwf	(__doprnt@fval),w
	skipnz
	goto	u2721
	goto	u2720
u2721:
	goto	l5665
u2720:
	line	840
	
l5637:	
	movlw	low(__doprnt@fval)
	movwf	fsr0
	movf	indf,w
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
u2735:
	clrc
	rrf	(??__doprnt+0)+3,f
	rrf	(??__doprnt+0)+2,f
	rrf	(??__doprnt+0)+1,f
	rrf	(??__doprnt+0)+0,f
u2730:
	addlw	-1
	skipz
	goto	u2735
	movf	1+(??__doprnt+0)+0,w
	movwf	(__doprnt@exp+1)
	movf	0+(??__doprnt+0)+0,w
	movwf	(__doprnt@exp)
	
l5639:	
	movlw	0FFh
	andwf	(__doprnt@exp),f
	clrf	(__doprnt@exp+1)
	
l5641:	
	movlw	-126
	addwf	(__doprnt@exp),f
	skipc
	decf	(__doprnt@exp+1),f
	line	841
	
l5643:	
	movlw	-1
	addwf	(__doprnt@exp),f
	skipc
	decf	(__doprnt@exp+1),f
	line	842
	
l5645:	
	movlw	03h
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movf	(__doprnt@exp+1),w
	movwf	1+(?___wmul)+02h
	movf	(__doprnt@exp),w
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(__doprnt@exp+1)
	movf	(0+(?___wmul)),w
	movwf	(__doprnt@exp)
	line	843
	
l5647:	
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(__doprnt@exp+1),w
	movwf	1+(?___awdiv)+02h
	movf	(__doprnt@exp),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(__doprnt@exp+1)
	movf	(0+(?___awdiv)),w
	movwf	(__doprnt@exp)
	line	844
	
l5649:	
	btfss	(__doprnt@exp+1),7
	goto	u2741
	goto	u2740
u2741:
	goto	l5653
u2740:
	line	845
	
l5651:	
	movlw	-1
	addwf	(__doprnt@exp),f
	skipc
	decf	(__doprnt@exp+1),f
	line	849
	
l5653:	
	decf	(__doprnt@exp),w
	xorlw	0ffh
	fcall	_scale
	movf	(0+(?_scale)),w
	movwf	(__doprnt@integ)
	movf	(1+(?_scale)),w
	movwf	(__doprnt@integ+1)
	movf	(2+(?_scale)),w
	movwf	(__doprnt@integ+2)
	line	850
	
l5655:	
	movf	(__doprnt@fval),w
	movwf	(?___ftmul)
	movf	(__doprnt@fval+1),w
	movwf	(?___ftmul+1)
	movf	(__doprnt@fval+2),w
	movwf	(?___ftmul+2)
	movf	(__doprnt@integ),w
	movwf	0+(?___ftmul)+03h
	movf	(__doprnt@integ+1),w
	movwf	1+(?___ftmul)+03h
	movf	(__doprnt@integ+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(__doprnt@integ)
	movf	(1+(?___ftmul)),w
	movwf	(__doprnt@integ+1)
	movf	(2+(?___ftmul)),w
	movwf	(__doprnt@integ+2)
	line	851
	
l5657:	
	movf	(__doprnt@integ),w
	movwf	(?___ftge)
	movf	(__doprnt@integ+1),w
	movwf	(?___ftge+1)
	movf	(__doprnt@integ+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x80
	movwf	1+(?___ftge)+03h
	movlw	0x3f
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u2751
	goto	u2750
u2751:
	goto	l5661
u2750:
	line	852
	
l5659:	
	movlw	-1
	addwf	(__doprnt@exp),f
	skipc
	decf	(__doprnt@exp+1),f
	goto	l5665
	line	853
	
l5661:	
	movf	(__doprnt@integ),w
	movwf	(?___ftge)
	movf	(__doprnt@integ+1),w
	movwf	(?___ftge+1)
	movf	(__doprnt@integ+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x20
	movwf	1+(?___ftge)+03h
	movlw	0x41
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u2761
	goto	u2760
u2761:
	goto	l5665
u2760:
	line	854
	
l5663:	
	incf	(__doprnt@exp),f
	skipnz
	incf	(__doprnt@exp+1),f
	line	1115
	
l5665:	
	line	1116
	
l5667:	
	movlw	(06h)
	fcall	_fround
	movf	(0+(?_fround)),w
	movwf	(?___ftadd)
	movf	(1+(?_fround)),w
	movwf	(?___ftadd+1)
	movf	(2+(?_fround)),w
	movwf	(?___ftadd+2)
	movf	(__doprnt@fval),w
	movwf	0+(?___ftadd)+03h
	movf	(__doprnt@fval+1),w
	movwf	1+(?___ftadd)+03h
	movf	(__doprnt@fval+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(__doprnt@fval)
	movf	(1+(?___ftadd)),w
	movwf	(__doprnt@fval+1)
	movf	(2+(?___ftadd)),w
	movwf	(__doprnt@fval+2)
	line	1119
	
l5669:	
	movf	(__doprnt@exp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2775
	movlw	low(0Ah)
	subwf	(__doprnt@exp),w
u2775:

	skipnc
	goto	u2771
	goto	u2770
u2771:
	goto	l5677
u2770:
	
l5671:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@fval+2),w
	iorwf	(__doprnt@fval+1),w
	iorwf	(__doprnt@fval),w
	skipnz
	goto	u2781
	goto	u2780
u2781:
	goto	l5693
u2780:
	
l5673:	
	movf	(__doprnt@fval),w
	movwf	(?___fttol)
	movf	(__doprnt@fval+1),w
	movwf	(?___fttol+1)
	movf	(__doprnt@fval+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	iorwf	(2+(?___fttol)),w
	iorwf	(1+(?___fttol)),w
	iorwf	(0+(?___fttol)),w
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l5693
u2790:
	
l5675:	
	movf	(__doprnt@exp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2805
	movlw	low(02h)
	subwf	(__doprnt@exp),w
u2805:

	skipc
	goto	u2801
	goto	u2800
u2801:
	goto	l5693
u2800:
	line	1123
	
l5677:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@integ),w
	movwf	(?___ftge)
	movf	(__doprnt@integ+1),w
	movwf	(?___ftge+1)
	movf	(__doprnt@integ+2),w
	movwf	(?___ftge+2)
	movlw	0x70
	movwf	0+(?___ftge)+03h
	movlw	0x89
	movwf	1+(?___ftge)+03h
	movlw	0x40
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u2811
	goto	u2810
u2811:
	goto	l5681
u2810:
	line	1124
	
l5679:	
	movlw	-9
	addwf	(__doprnt@exp),f
	skipc
	decf	(__doprnt@exp+1),f
	line	1125
	goto	l5683
	line	1126
	
l5681:	
	movlw	-8
	addwf	(__doprnt@exp),f
	skipc
	decf	(__doprnt@exp+1),f
	line	1128
	
l5683:	
	movf	(__doprnt@exp),w
	fcall	_scale
	movf	(0+(?_scale)),w
	movwf	(__doprnt@integ)
	movf	(1+(?_scale)),w
	movwf	(__doprnt@integ+1)
	movf	(2+(?_scale)),w
	movwf	(__doprnt@integ+2)
	line	1129
	
l5687:	
	movf	(__doprnt@fval),w
	movwf	(?__tdiv_to_l_)
	movf	(__doprnt@fval+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__doprnt@fval+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__doprnt@integ),w
	movwf	0+(?__tdiv_to_l_)+03h
	movf	(__doprnt@integ+1),w
	movwf	1+(?__tdiv_to_l_)+03h
	movf	(__doprnt@integ+2),w
	movwf	2+(?__tdiv_to_l_)+03h
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	movwf	(__doprnt$1919+3)
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(__doprnt$1919+2)
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(__doprnt$1919+1)
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(__doprnt$1919)

	
l5689:	
	movf	(__doprnt$1919+3),w
	movwf	(__doprnt@_val+3)
	movf	(__doprnt$1919+2),w
	movwf	(__doprnt@_val+2)
	movf	(__doprnt$1919+1),w
	movwf	(__doprnt@_val+1)
	movf	(__doprnt$1919),w
	movwf	(__doprnt@_val)

	line	1132
	
l5691:	
	clrf	(__doprnt@fval)
	clrf	(__doprnt@fval+1)
	clrf	(__doprnt@fval+2)
	line	1133
	goto	l5697
	line	1134
	
l5693:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@fval),w
	movwf	(?___fttol)
	movf	(__doprnt@fval+1),w
	movwf	(?___fttol+1)
	movf	(__doprnt@fval+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	movwf	(__doprnt@_val+3)
	movf	(2+(?___fttol)),w
	movwf	(__doprnt@_val+2)
	movf	(1+(?___fttol)),w
	movwf	(__doprnt@_val+1)
	movf	(0+(?___fttol)),w
	movwf	(__doprnt@_val)

	line	1135
	movf	(__doprnt@_val+3),w
	movwf	(?___lltoft+3)
	movf	(__doprnt@_val+2),w
	movwf	(?___lltoft+2)
	movf	(__doprnt@_val+1),w
	movwf	(?___lltoft+1)
	movf	(__doprnt@_val),w
	movwf	(?___lltoft)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	movwf	(?___ftsub)
	movf	(1+(?___lltoft)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___lltoft)),w
	movwf	(?___ftsub+2)
	movf	(__doprnt@fval),w
	movwf	0+(?___ftsub)+03h
	movf	(__doprnt@fval+1),w
	movwf	1+(?___ftsub)+03h
	movf	(__doprnt@fval+2),w
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	movwf	(__doprnt@fval)
	movf	(1+(?___ftsub)),w
	movwf	(__doprnt@fval+1)
	movf	(2+(?___ftsub)),w
	movwf	(__doprnt@fval+2)
	line	1136
	
l5695:	
	clrf	(__doprnt@exp)
	clrf	(__doprnt@exp+1)
	line	1139
	
l5697:	
	clrf	(__doprnt@c)
	incf	(__doprnt@c),f
	line	1140
	
l5703:	
	movf	(__doprnt@c),w
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
	subwf	(__doprnt@_val+3),w
	skipz
	goto	u2825
	movf	2+(??__doprnt+1)+0,w
	subwf	(__doprnt@_val+2),w
	skipz
	goto	u2825
	movf	1+(??__doprnt+1)+0,w
	subwf	(__doprnt@_val+1),w
	skipz
	goto	u2825
	movf	0+(??__doprnt+1)+0,w
	subwf	(__doprnt@_val),w
u2825:
	skipnc
	goto	u2821
	goto	u2820
u2821:
	goto	l5707
u2820:
	goto	l5711
	line	1139
	
l5707:	
	incf	(__doprnt@c),f
	
l5709:	
	movf	(__doprnt@c),w
	xorlw	0Ah
	skipz
	goto	u2831
	goto	u2830
u2831:
	goto	l5703
u2830:
	line	1189
	
l5711:	
	movf	(__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l5729
u2840:
	line	1191
	
l5713:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2851
	goto	u2850
u2851:
	goto	l5717
u2850:
	
l5715:	
	movlw	(02Dh)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l5729
	
l5717:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l5719:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	goto	l5729
	line	1201
	
l5721:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2861
	goto	u2860
u2861:
	goto	l5725
u2860:
	
l5723:	
	movlw	0Ah
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	movf	(__doprnt@c),w
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
	movf	(__doprnt@_val+3),w
	movwf	3+(?___lldiv)+04h
	movf	(__doprnt@_val+2),w
	movwf	2+(?___lldiv)+04h
	movf	(__doprnt@_val+1),w
	movwf	1+(?___lldiv)+04h
	movf	(__doprnt@_val),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
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
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l5729
	
l5725:	
	movlw	0Ah
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	movf	(__doprnt@c),w
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
	movf	(__doprnt@_val+3),w
	movwf	3+(?___lldiv)+04h
	movf	(__doprnt@_val+2),w
	movwf	2+(?___lldiv)+04h
	movf	(__doprnt@_val+1),w
	movwf	1+(?___lldiv)+04h
	movf	(__doprnt@_val),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
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
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(??__doprnt+1)+0,w
	movwf	indf
	goto	l5719
	line	1197
	
l5729:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(__doprnt@c),f
	incf	((__doprnt@c)),w
	skipz
	goto	u2871
	goto	u2870
u2871:
	goto	l5721
u2870:
	goto	l5741
	line	1205
	
l5731:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2881
	goto	u2880
u2881:
	goto	l5735
u2880:
	
l5733:	
	movlw	(030h)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l5739
	
l5735:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(030h)
	movwf	indf
	
l5737:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1206
	
l5739:	
	movlw	-1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(__doprnt@exp),f
	skipc
	decf	(__doprnt@exp+1),f
	line	1204
	
l5741:	
	movf	(__doprnt@exp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2895
	movlw	low(01h)
	subwf	(__doprnt@exp),w
u2895:

	skipnc
	goto	u2891
	goto	u2890
u2891:
	goto	l5731
u2890:
	line	1208
	
l5743:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@prec+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2905
	movlw	low(09h)
	subwf	(__doprnt@prec),w
u2905:

	skipc
	goto	u2901
	goto	u2900
u2901:
	goto	l5747
u2900:
	line	1209
	
l5745:	
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__doprnt@c)
	goto	l1194
	line	1211
	
l5747:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@prec),w
	movwf	(__doprnt@c)
	
l1194:	
	line	1212
	movf	(__doprnt@c),w
	movwf	(??__doprnt+0)+0
	clrf	(??__doprnt+0)+0+1
	btfsc	(??__doprnt+0)+0,7
	decf	(??__doprnt+0)+0+1,f
	movf	0+(??__doprnt+0)+0,w
	subwf	(__doprnt@prec),f
	movf	1+(??__doprnt+0)+0,w
	skipc
	decf	(__doprnt@prec+1),f
	subwf	(__doprnt@prec+1),f
	line	1216
	movf	(__doprnt@c),w
	skipz
	goto	u2910
	goto	l5757
u2910:
	line	1218
	
l5749:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2921
	goto	u2920
u2921:
	goto	l5753
u2920:
	
l5751:	
	movlw	(02Eh)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l5757
	
l5753:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Eh)
	movwf	indf
	
l5755:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1224
	
l5757:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@c),w
	fcall	_scale
	movf	(0+(?_scale)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?_scale)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?_scale)),w
	movwf	2+(?___ftmul)+03h
	movf	(__doprnt@fval),w
	movwf	(?___ftmul)
	movf	(__doprnt@fval+1),w
	movwf	(?___ftmul+1)
	movf	(__doprnt@fval+2),w
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
	movwf	(__doprnt@_val+3)
	movf	(2+(?___fttol)),w
	movwf	(__doprnt@_val+2)
	movf	(1+(?___fttol)),w
	movwf	(__doprnt@_val+1)
	movf	(0+(?___fttol)),w
	movwf	(__doprnt@_val)

	line	1225
	goto	l5769
	line	1226
	
l5759:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2931
	goto	u2930
u2931:
	goto	l5763
u2930:
	
l5761:	
	movlw	0Ah
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	movf	(__doprnt@c),w
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
	movf	(__doprnt@_val+3),w
	movwf	3+(?___lldiv)+04h
	movf	(__doprnt@_val+2),w
	movwf	2+(?___lldiv)+04h
	movf	(__doprnt@_val+1),w
	movwf	1+(?___lldiv)+04h
	movf	(__doprnt@_val),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
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
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l5767
	
l5763:	
	movlw	0Ah
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	movf	(__doprnt@c),w
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
	movf	(__doprnt@_val+3),w
	movwf	3+(?___lldiv)+04h
	movf	(__doprnt@_val+2),w
	movwf	2+(?___lldiv)+04h
	movf	(__doprnt@_val+1),w
	movwf	1+(?___lldiv)+04h
	movf	(__doprnt@_val),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
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
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(??__doprnt+1)+0,w
	movwf	indf
	
l5765:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1227
	
l5767:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@c),w
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
	movf	(__doprnt@_val+3),w
	movwf	3+(?___llmod)+04h
	movf	(__doprnt@_val+2),w
	movwf	2+(?___llmod)+04h
	movf	(__doprnt@_val+1),w
	movwf	1+(?___llmod)+04h
	movf	(__doprnt@_val),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	movwf	(__doprnt@_val+3)
	movf	(2+(?___llmod)),w
	movwf	(__doprnt@_val+2)
	movf	(1+(?___llmod)),w
	movwf	(__doprnt@_val+1)
	movf	(0+(?___llmod)),w
	movwf	(__doprnt@_val)

	line	1225
	
l5769:	
	decf	(__doprnt@c),f
	incf	((__doprnt@c)),w
	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l5759
u2940:
	goto	l5781
	line	1231
	
l5771:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2951
	goto	u2950
u2951:
	goto	l5775
u2950:
	
l5773:	
	movlw	(030h)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l5779
	
l5775:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(030h)
	movwf	indf
	
l5777:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1232
	
l5779:	
	movlw	-1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(__doprnt@prec),f
	skipc
	decf	(__doprnt@prec+1),f
	line	1230
	
l5781:	
	movf	((__doprnt@prec+1)),w
	iorwf	((__doprnt@prec)),w
	skipz
	goto	u2961
	goto	u2960
u2961:
	goto	l5771
u2960:
	goto	l5793
	line	1433
	
l5783:	
	movf	(__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l5793
u2970:
	line	1434
	
l5785:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2981
	goto	u2980
u2981:
	goto	l5789
u2980:
	
l5787:	
	movlw	(02Dh)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l5593
	
l5789:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l5791:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	goto	l5593
	line	540
	
l5793:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(__doprnt@c)
	movf	((__doprnt@c)),f
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l5595
u2990:
	line	1532
	
l5795:	
	clrf	(?__doprnt)
	clrf	(?__doprnt+1)
	line	1533
	
l1212:	
	return
	opt stack 0
GLOBAL	__end_of__doprnt
	__end_of__doprnt:
;; =============== function __doprnt ends ============

	signat	__doprnt,12410
	global	_lcd_puts
psect	text564,local,class=CODE,delta=2
global __ptext564
__ptext564:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 196 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
;; Parameters:    Size  Location     Type
;;  s               2    5[COMMON] PTR const unsigned char 
;;		 -> STR_8(13), carac(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 40/20
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
psect	text564
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
	line	196
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 4
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	197
	
l5585:	
;USART1.c: 197: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(60/8),(60)&7
	line	198
;USART1.c: 198: while(*s)
	goto	l5591
	line	199
	
l5587:	
;USART1.c: 199: lcd_write(*s++);
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	
l5589:	
	incf	(lcd_puts@s),f
	skipnz
	incf	(lcd_puts@s+1),f
	line	198
	
l5591:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2661
	goto	u2660
u2661:
	goto	l5587
u2660:
	line	200
	
l1093:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_goto
psect	text565,local,class=CODE,delta=2
global __ptext565
__ptext565:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 209 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 40/0
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
psect	text565
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
	line	209
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	210
	
l5581:	
;USART1.c: 210: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(60/8),(60)&7
	line	211
	
l5583:	
;USART1.c: 211: lcd_write(0x80 + pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	212
	
l1099:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_clear
psect	text566,local,class=CODE,delta=2
global __ptext566
__ptext566:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 189 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
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
psect	text566
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
	line	189
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	190
	
l5577:	
;USART1.c: 190: RC4 = 0;
	bcf	(60/8),(60)&7
	line	191
	
l5579:	
;USART1.c: 191: lcd_write(0x01);
	movlw	(01h)
	fcall	_lcd_write
	line	192
;USART1.c: 192: pause (2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	193
	
l1087:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	___ftsub
psect	text567,local,class=CODE,delta=2
global __ptext567
__ptext567:

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
psect	text567
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 3
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l5571:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	19
	
l5573:	
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
	
l2304:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text568,local,class=CODE,delta=2
global __ptext568
__ptext568:

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
;;		On entry : 60/0
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
psect	text568
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	422
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
	opt	stack 3
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	line	424
	movwf	(scale@scl)
	
l5531:	
	btfss	(scale@scl),7
	goto	u2611
	goto	u2610
u2611:
	goto	l5553
u2610:
	line	425
	
l5533:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l5535:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l5543
u2620:
	line	427
	
l5537:	
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
	movwf	(_scale$2904)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$2904+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$2904+2)
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
	movf	(_scale$2904),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$2904+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$2904+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1137
	line	428
	
l5543:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l5549
u2630:
	line	429
	
l5545:	
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
	goto	l1137
	line	430
	
l5549:	
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
	goto	l1137
	line	432
	
l5553:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l5561
u2640:
	line	433
	
l5555:	
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
	movwf	(_scale$2904)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$2904+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$2904+2)
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
	movf	(_scale$2904),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$2904+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$2904+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1137
	line	434
	
l5561:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l5567
u2650:
	line	435
	
l5563:	
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
	goto	l1137
	line	436
	
l5567:	
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
	
l1137:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text569,local,class=CODE,delta=2
global __ptext569
__ptext569:

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
;;		On entry : 160/0
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
psect	text569
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	406
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
	opt	stack 3
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	line	409
	movwf	(fround@prec)
	
l5509:	
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u2591
	goto	u2590
u2591:
	goto	l5519
u2590:
	line	410
	
l5511:	
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
	movwf	(_fround$2902)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2902+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2902+2)
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
	movf	(_fround$2902),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2902+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2902+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$2903)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2903+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2903+2)
	
l5513:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$2903),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2903+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2903+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l1130
	line	411
	
l5519:	
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u2601
	goto	u2600
u2601:
	goto	l5527
u2600:
	line	412
	
l5521:	
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
	movwf	(_fround$2902)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2902+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2902+2)
	
l5523:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$2902),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2902+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2902+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l1130
	line	413
	
l5527:	
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
	
l1130:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_lcd_write
psect	text570,local,class=CODE,delta=2
global __ptext570
__ptext570:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 180 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
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
psect	text570
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
	line	180
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	181
	
l5495:	
;USART1.c: 181: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	182
	
l5497:	
;USART1.c: 182: PORTD = ( ( c >> 4) & 0x0F);
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	183
	
l5499:	
;USART1.c: 183: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l5501:	
	bcf	(56/8),(56)&7
	line	184
	
l5503:	
;USART1.c: 184: PORTD = (c & 0x0F);
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	185
	
l5505:	
;USART1.c: 185: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l5507:	
	bcf	(56/8),(56)&7
	line	186
	
l1084:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	___lltoft
psect	text571,local,class=CODE,delta=2
global __ptext571
__ptext571:

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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text571
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 4
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l5485:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l5489
	line	42
	
l5487:	
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l5489:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l5487
u2580:
	line	45
	
l5491:	
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
	
l2461:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___ftmul
psect	text572,local,class=CODE,delta=2
global __ptext572
__ptext572:

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
psect	text572
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 3
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l5429:	
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
	goto	u2501
	goto	u2500
u2501:
	goto	l5435
u2500:
	line	57
	
l5431:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2320
	line	58
	
l5435:	
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
	goto	u2511
	goto	u2510
u2511:
	goto	l5441
u2510:
	line	59
	
l5437:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2320
	line	60
	
l5441:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l5443:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l5445:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l5447:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l5449:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l5451:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l5453:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l5455:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l5457:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l5459:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l5463
u2520:
	line	72
	
l5461:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2531
	addwf	(___ftmul@f3_as_product+1),f
u2531:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2532
	addwf	(___ftmul@f3_as_product+2),f
u2532:

	line	73
	
l5463:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l5465:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l5467:	
	decfsz	(___ftmul@cntr),f
	goto	u2541
	goto	u2540
u2541:
	goto	l5459
u2540:
	line	76
	
l5469:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l5471:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l5475
u2550:
	line	79
	
l5473:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2561
	addwf	(___ftmul@f3_as_product+1),f
u2561:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2562
	addwf	(___ftmul@f3_as_product+2),f
u2562:

	line	80
	
l5475:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l5477:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l5479:	
	decfsz	(___ftmul@cntr),f
	goto	u2571
	goto	u2570
u2571:
	goto	l5471
u2570:
	line	83
	
l5481:	
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
	
l2320:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text573,local,class=CODE,delta=2
global __ptext573
__ptext573:

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
;;		_main
;;		__doprnt
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text573
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 6
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l5351:	
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
	
l5353:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2300
	goto	l5359
u2300:
	
l5355:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2311
	goto	u2310
u2311:
	goto	l5363
u2310:
	
l5357:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l5363
u2320:
	line	93
	
l5359:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2268
	line	94
	
l5363:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2330
	goto	l2271
u2330:
	
l5365:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2341
	goto	u2340
u2341:
	goto	l5369
u2340:
	
l5367:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l5369
u2350:
	
l2271:	
	line	95
	goto	l2268
	line	96
	
l5369:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l5371:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l2272
u2360:
	line	98
	
l5373:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2272:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l2273
u2370:
	line	100
	
l5375:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2273:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l5377:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l5379:	
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
	goto	u2381
	goto	u2380
u2381:
	goto	l5391
u2380:
	line	110
	
l5381:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l5383:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2391
	goto	u2390
u2391:
	goto	l5389
u2390:
	
l5385:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l5381
u2400:
	goto	l5389
	line	114
	
l5387:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l5389:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l5387
u2410:
	goto	l2282
	line	117
	
l5391:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2421
	goto	u2420
u2421:
	goto	l2282
u2420:
	line	121
	
l5393:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l5395:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2431
	goto	u2430
u2431:
	goto	l5401
u2430:
	
l5397:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l5393
u2440:
	goto	l5401
	line	125
	
l5399:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l5401:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l5399
u2450:
	line	129
	
l2282:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l5407
u2460:
	line	131
	
l5403:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l5405:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l5407:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l5413
u2470:
	line	136
	
l5409:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l5411:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l5413:	
	clrf	(___ftadd@sign)
	line	140
	
l5415:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2481
	addwf	(___ftadd@f2+1),f
u2481:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2482
	addwf	(___ftadd@f2+2),f
u2482:

	line	141
	
l5417:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l5425
u2490:
	line	142
	
l5419:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l5421:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l5423:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l5425:	
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
	
l2268:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_pause
psect	text574,local,class=CODE,delta=2
global __ptext574
__ptext574:

;; *************** function _pause *****************
;; Defined at:
;;		line 243 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
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
psect	text574
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
	line	243
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 4
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	246
	
l5343:	
;USART1.c: 244: unsigned short x;
;USART1.c: 246: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l5349
	line	248
	
l5345:	
;USART1.c: 247: {
;USART1.c: 248: msecbase();
	fcall	_msecbase
	line	246
	
l5347:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l5349:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u2295
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u2295:
	skipnc
	goto	u2291
	goto	u2290
u2291:
	goto	l5345
u2290:
	line	250
	
l1108:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	___awmod
psect	text575,local,class=CODE,delta=2
global __ptext575
__ptext575:

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
psect	text575
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l5307:	
	clrf	(___awmod@sign)
	line	9
	
l5309:	
	btfss	(___awmod@dividend+1),7
	goto	u2221
	goto	u2220
u2221:
	goto	l5315
u2220:
	line	10
	
l5311:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l5313:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l5315:	
	btfss	(___awmod@divisor+1),7
	goto	u2231
	goto	u2230
u2231:
	goto	l5319
u2230:
	line	14
	
l5317:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l5319:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2241
	goto	u2240
u2241:
	goto	l5335
u2240:
	line	16
	
l5321:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l5325
	line	18
	
l5323:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l5325:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l5323
u2250:
	line	22
	
l5327:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2265
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2265:
	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l5331
u2260:
	line	23
	
l5329:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l5331:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l5333:	
	decfsz	(___awmod@counter),f
	goto	u2271
	goto	u2270
u2271:
	goto	l5327
u2270:
	line	27
	
l5335:	
	movf	(___awmod@sign),w
	skipz
	goto	u2280
	goto	l5339
u2280:
	line	28
	
l5337:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l5339:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l2439:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text576,local,class=CODE,delta=2
global __ptext576
__ptext576:

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
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
psect	text576
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 5
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l5281:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l5283:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u2181
	goto	u2180
u2181:
	goto	l5303
u2180:
	line	11
	
l5285:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l5289
	line	13
	
l5287:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l5289:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l5287
u2190:
	line	17
	
l5291:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l5293:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u2205
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u2205
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u2205
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u2205:
	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l5299
u2200:
	line	19
	
l5295:	
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
	
l5297:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l5299:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l5301:	
	decfsz	(___lldiv@counter),f
	goto	u2211
	goto	u2210
u2211:
	goto	l5291
u2210:
	line	25
	
l5303:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l2400:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text577,local,class=CODE,delta=2
global __ptext577
__ptext577:

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
;;		_main
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text577
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 5
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l5261:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l5265
u2150:
	line	7
	
l5263:	
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
	
l5265:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l5269
u2160:
	line	9
	
l5267:	
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
	
l5269:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l5271:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l5273:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2175
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2175
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2175:
	skipnc
	goto	u2171
	goto	u2170
u2171:
	goto	l5277
u2170:
	
l5275:	
	clrc
	
	goto	l2390
	
l5277:	
	setc
	
	line	13
	
l2390:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text578,local,class=CODE,delta=2
global __ptext578
__ptext578:

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
;;		On entry : 160/0
;;		On exit  : 160/0
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
psect	text578
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 5
; Regs used in ___ftneg: [wreg]
	line	17
	
l5253:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2141
	goto	u2140
u2141:
	goto	l5257
u2140:
	line	18
	
l5255:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l5257:	
	line	20
	
l2385:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text579,local,class=CODE,delta=2
global __ptext579
__ptext579:

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
psect	text579
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 5
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l5233:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u2101
	goto	u2100
u2101:
	goto	l5249
u2100:
	line	9
	
l5235:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	10
	goto	l5239
	line	11
	
l5237:	
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	12
	incf	(___llmod@counter),f
	line	10
	
l5239:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u2111
	goto	u2110
u2111:
	goto	l5237
u2110:
	line	15
	
l5241:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u2125
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u2125
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u2125
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u2125:
	skipc
	goto	u2121
	goto	u2120
u2121:
	goto	l5245
u2120:
	line	16
	
l5243:	
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
	
l5245:	
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	18
	
l5247:	
	decfsz	(___llmod@counter),f
	goto	u2131
	goto	u2130
u2131:
	goto	l5241
u2130:
	line	20
	
l5249:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	21
	
l2381:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text580,local,class=CODE,delta=2
global __ptext580
__ptext580:

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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
psect	text580
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l5189:	
	clrf	(___awdiv@sign)
	line	10
	
l5191:	
	btfss	(___awdiv@divisor+1),7
	goto	u2031
	goto	u2030
u2031:
	goto	l5197
u2030:
	line	11
	
l5193:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l5195:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l5197:	
	btfss	(___awdiv@dividend+1),7
	goto	u2041
	goto	u2040
u2041:
	goto	l5203
u2040:
	line	15
	
l5199:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l5201:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l5203:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l5205:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2051
	goto	u2050
u2051:
	goto	l5225
u2050:
	line	20
	
l5207:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l5211
	line	22
	
l5209:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l5211:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2061
	goto	u2060
u2061:
	goto	l5209
u2060:
	line	26
	
l5213:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l5215:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2075
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2075:
	skipc
	goto	u2071
	goto	u2070
u2071:
	goto	l5221
u2070:
	line	28
	
l5217:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l5219:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l5221:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l5223:	
	decfsz	(___awdiv@counter),f
	goto	u2081
	goto	u2080
u2081:
	goto	l5213
u2080:
	line	34
	
l5225:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2090
	goto	l5229
u2090:
	line	35
	
l5227:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l5229:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2371:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text581,local,class=CODE,delta=2
global __ptext581
__ptext581:

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
psect	text581
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l5151:	
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
	goto	u1951
	goto	u1950
u1951:
	goto	l5155
u1950:
	line	50
	
l5153:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l2331
	line	51
	
l5155:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1965:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1960:
	addlw	-1
	skipz
	goto	u1965
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l5157:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l5159:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l5161:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l5163:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l5165:	
	btfss	(___fttol@exp1),7
	goto	u1971
	goto	u1970
u1971:
	goto	l5175
u1970:
	line	57
	
l5167:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1981
	goto	u1980
u1981:
	goto	l5171
u1980:
	goto	l5153
	line	60
	
l5171:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l5173:	
	incfsz	(___fttol@exp1),f
	goto	u1991
	goto	u1990
u1991:
	goto	l5171
u1990:
	goto	l5181
	line	63
	
l5175:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2001
	goto	u2000
u2001:
	goto	l2338
u2000:
	goto	l5153
	line	66
	
l5179:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l2338:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u2011
	goto	u2010
u2011:
	goto	l5179
u2010:
	line	70
	
l5181:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2020
	goto	l5185
u2020:
	line	71
	
l5183:	
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
	
l5185:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l2331:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text582,local,class=CODE,delta=2
global __ptext582
__ptext582:

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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text582
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 6
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l5123:	
	movf	(___ftpack@exp),w
	skipz
	goto	u1880
	goto	l5127
u1880:
	
l5125:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1891
	goto	u1890
u1891:
	goto	l5133
u1890:
	line	65
	
l5127:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l2590
	line	67
	
l5131:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l5133:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1901
	goto	u1900
u1901:
	goto	l5131
u1900:
	goto	l5137
	line	71
	
l5135:	
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
	
l5137:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l5135
u1910:
	goto	l5141
	line	76
	
l5139:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l5141:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1921
	goto	u1920
u1921:
	goto	l5139
u1920:
	
l2599:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1931
	goto	u1930
u1931:
	goto	l2600
u1930:
	line	80
	
l5143:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l2600:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l5145:	
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
	
l5147:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1940
	goto	l2601
u1940:
	line	84
	
l5149:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2601:	
	line	85
	line	86
	
l2590:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lbmod
psect	text583,local,class=CODE,delta=2
global __ptext583
__ptext583:

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
psect	text583
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
	
l5105:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l5107:	
	clrf	(___lbmod@rem)
	line	12
	
l5109:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1855:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1855
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l5111:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l5113:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l5117
u1860:
	line	15
	
l5115:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l5117:	
	decfsz	(___lbmod@counter),f
	goto	u1871
	goto	u1870
u1871:
	goto	l5109
u1870:
	line	17
	
l5119:	
	movf	(___lbmod@rem),w
	line	18
	
l2260:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text584,local,class=CODE,delta=2
global __ptext584
__ptext584:

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
psect	text584
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
	
l5081:	
	clrf	(___lbdiv@quotient)
	line	10
	
l5083:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u1810
	goto	l5101
u1810:
	line	11
	
l5085:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l5089
	
l2249:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l5087:	
	incf	(___lbdiv@counter),f
	line	12
	
l5089:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1821
	goto	u1820
u1821:
	goto	l2249
u1820:
	line	16
	
l2251:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l5091:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1831
	goto	u1830
u1831:
	goto	l5097
u1830:
	line	19
	
l5093:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l5095:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l5097:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l5099:	
	decfsz	(___lbdiv@counter),f
	goto	u1841
	goto	u1840
u1841:
	goto	l2251
u1840:
	line	25
	
l5101:	
	movf	(___lbdiv@quotient),w
	line	26
	
l2254:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text585,local,class=CODE,delta=2
global __ptext585
__ptext585:

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
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
psect	text585
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l5065:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l5067:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1791
	goto	u1790
u1791:
	goto	l5071
u1790:
	line	8
	
l5069:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l5071:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l5073:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l5075:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1801
	goto	u1800
u1801:
	goto	l5067
u1800:
	line	12
	
l5077:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2224:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text586,local,class=CODE,delta=2
global __ptext586
__ptext586:

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
psect	text586
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
	
l5049:	
	clrf	(___bmul@product)
	line	7
	
l5051:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1771
	goto	u1770
u1771:
	goto	l5055
u1770:
	line	8
	
l5053:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l5055:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l5057:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l5059:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u1781
	goto	u1780
u1781:
	goto	l5051
u1780:
	line	12
	
l5061:	
	movf	(___bmul@product),w
	line	13
	
l2218:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text587,local,class=CODE,delta=2
global __ptext587
__ptext587:

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
psect	text587
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 5
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l5003:	
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
	goto	u1681
	goto	u1680
u1681:
	goto	l5007
u1680:
	line	67
	
l5005:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l2508
	line	68
	
l5007:	
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
	goto	u1691
	goto	u1690
u1691:
	goto	l5011
u1690:
	goto	l5005
	line	70
	
l5011:	
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
	
l5013:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l5015:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l5017:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l5019:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l5021:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l5023:	
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
	goto	u1705
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u1705
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u1705
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u1705:
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l2511
u1700:
	line	81
	
l5025:	
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
	
l5027:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l2511:	
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
	
l5029:	
	decfsz	(__div_to_l_@cntr),f
	goto	u1711
	goto	u1710
u1711:
	goto	l5021
u1710:
	
l2512:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u1721
	goto	u1720
u1721:
	goto	l5039
u1720:
	line	87
	
l5031:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u1731
	goto	u1730
u1731:
	goto	l5035
u1730:
	goto	l5005
	line	90
	
l5035:	
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l5037:	
	incfsz	(__div_to_l_@exp1),f
	goto	u1741
	goto	u1740
u1741:
	goto	l5035
u1740:
	goto	l5045
	line	93
	
l5039:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u1751
	goto	u1750
u1751:
	goto	l2519
u1750:
	goto	l5005
	line	96
	
l5043:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l2519:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u1761
	goto	u1760
u1761:
	goto	l5043
u1760:
	line	100
	
l5045:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l2508:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text588,local,class=CODE,delta=2
global __ptext588
__ptext588:

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
;;		On entry : 60/0
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
psect	text588
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 5
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l4955:	
	movf	(__tdiv_to_l_@f1),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f1+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f1+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(__tdiv_to_l_@exp1)
	movf	((__tdiv_to_l_@exp1)),f
	skipz
	goto	u1591
	goto	u1590
u1591:
	goto	l4959
u1590:
	line	67
	
l4957:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l2465
	line	68
	
l4959:	
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
	goto	u1601
	goto	u1600
u1601:
	goto	l2466
u1600:
	goto	l4957
	line	69
	
l2466:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l4963:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l4965:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l4967:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l4969:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l4971:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l4973:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l4975:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u1615
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u1615
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u1615:
	skipc
	goto	u1611
	goto	u1610
u1611:
	goto	l4981
u1610:
	line	81
	
l4977:	
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
	
l4979:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l4981:	
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l4983:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u1621
	goto	u1620
u1621:
	goto	l4973
u1620:
	
l2469:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u1631
	goto	u1630
u1631:
	goto	l4993
u1630:
	line	87
	
l4985:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u1641
	goto	u1640
u1641:
	goto	l4989
u1640:
	goto	l4957
	line	90
	
l4989:	
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l4991:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u1651
	goto	u1650
u1651:
	goto	l4989
u1650:
	goto	l4999
	line	93
	
l4993:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u1661
	goto	u1660
u1661:
	goto	l2476
u1660:
	goto	l4957
	line	96
	
l4997:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l2476:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u1671
	goto	u1670
u1671:
	goto	l4997
u1670:
	line	100
	
l4999:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l2465:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_msecbase
psect	text589,local,class=CODE,delta=2
global __ptext589
__ptext589:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 253 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
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
psect	text589
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
	line	253
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 4
; Regs used in _msecbase: [wreg]
	line	254
	
l4953:	
;USART1.c: 254: OPTION_REG = 0b11010001;
	movlw	(0D1h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	255
;USART1.c: 255: TMR0 = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	256
;USART1.c: 256: TMR0 = 0x8E;
	movlw	(08Eh)
	movwf	(1)	;volatile
	line	257
;USART1.c: 257: while(!T0IF);
	
l1111:	
	btfss	(90/8),(90)&7
	goto	u1581
	goto	u1580
u1581:
	goto	l1111
u1580:
	
l1113:	
	line	258
;USART1.c: 258: T0IF = 0;
	bcf	(90/8),(90)&7
	line	259
	
l1114:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_init_comms
psect	text590,local,class=CODE,delta=2
global __ptext590
__ptext590:

;; *************** function _init_comms *****************
;; Defined at:
;;		line 60 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/60
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
psect	text590
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
	line	60
	global	__size_of_init_comms
	__size_of_init_comms	equ	__end_of_init_comms-_init_comms
	
_init_comms:	
	opt	stack 7
; Regs used in _init_comms: [wreg+status,2]
	line	61
	
l4947:	
;USART1.c: 61: TRISC7 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	62
;USART1.c: 62: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	63
	
l4949:	
;USART1.c: 63: SPBRG = ((int)(4000000L/(64UL * 2400) -1));
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	65
;USART1.c: 65: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	66
;USART1.c: 66: TXSTA = 0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	67
	
l4951:	
;USART1.c: 67: BAUDCTL = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	68
	
l1055:	
	return
	opt stack 0
GLOBAL	__end_of_init_comms
	__end_of_init_comms:
;; =============== function _init_comms ends ============

	signat	_init_comms,88
	global	_getch
psect	text591,local,class=CODE,delta=2
global __ptext591
__ptext591:

;; *************** function _getch *****************
;; Defined at:
;;		line 52 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
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
;; This function uses a non-reentrant model
;;
psect	text591
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
	line	52
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 7
; Regs used in _getch: [wreg]
	line	54
	
l4941:	
	line	55
;USART1.c: 54: while(!RCIF)
	
l1049:	
	line	54
	btfss	(101/8),(101)&7
	goto	u1571
	goto	u1570
u1571:
	goto	l1049
u1570:
	line	56
	
l4943:	
;USART1.c: 56: return RCREG;
	movf	(26),w	;volatile
	line	57
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_putch
psect	text592,local,class=CODE,delta=2
global __ptext592
__ptext592:

;; *************** function _putch *****************
;; Defined at:
;;		line 44 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
;; Parameters:    Size  Location     Type
;;  byte            1    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_main
;;		_printf
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text592
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART1\USART1.c"
	line	44
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 5
; Regs used in _putch: [wreg]
	line	46
	
l4937:	
	line	47
;USART1.c: 46: while(!TXIF)
	
l1043:	
	line	46
	btfss	(100/8),(100)&7
	goto	u1561
	goto	u1560
u1561:
	goto	l1043
u1560:
	line	48
	
l4939:	
;USART1.c: 48: TXREG = byte;
	movf	(putch@byte),w
	movwf	(25)	;volatile
	line	49
	
l1046:	
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
entry__putch:
	global	entry__putch
	ljmp	_putch
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
