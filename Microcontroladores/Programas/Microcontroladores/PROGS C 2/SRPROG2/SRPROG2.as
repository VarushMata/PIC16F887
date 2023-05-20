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
# 8 "C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF& 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 9 "C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
	psect config,class=CONFIG,delta=2 ;#
# 9 "C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_init_comms
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_getch
	FNCALL	_main,_lcd_clear
	FNCALL	_main,___lwdiv
	FNCALL	_main,_sprintf
	FNCALL	_main,_atoi
	FNCALL	_main,_printf
	FNCALL	_lcd_init,_pause
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_init,_lcd_clear
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_pause
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_write,_pause
	FNCALL	_printf,__doprnt
	FNCALL	_sprintf,__doprnt
	FNCALL	__doprnt,Fake
	FNCALL	__doprnt,_putch
	FNCALL	__doprnt,___lwdiv
	FNCALL	__doprnt,___lwmod
	FNCALL	_pause,_msecbase
	FNCALL	_atoi,___wmul
	FNCALL	_atoi,_isdigit
	FNROOT	_main
	global	_dpowers
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
	global	_dato
	global	_dist
	global	_carac1
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
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
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
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	79	;'O'
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
	
STR_4:	
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_6:	
	retlw	99	;'c'
	retlw	109	;'m'
	retlw	0
psect	strings
	file	"SRPROG2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_dato:
       ds      2

_dist:
       ds      2

_carac1:
       ds      4

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
	global	?_putch
?_putch:	; 0 bytes @ 0x0
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
	global	?_getch
?_getch:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	global	_isdigit$2410
_isdigit$2410:	; 1 bytes @ 0x0
	global	pause@usvalue
pause@usvalue:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x1
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
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x5
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x5
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x5
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x5
	global	lcd_puts@s
lcd_puts@s:	; 2 bytes @ 0x5
	ds	1
	global	?_atoi
?_atoi:	; 2 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x7
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
	global	?__doprnt
?__doprnt:	; 2 bytes @ 0xC
	global	__doprnt@f
__doprnt@f:	; 1 bytes @ 0xC
	ds	1
	global	__doprnt@ap
__doprnt@ap:	; 1 bytes @ 0xD
	global	atoi@s
atoi@s:	; 1 bytes @ 0xD
	ds	1
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0xE
	global	??_printf
??_printf:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??__doprnt
??__doprnt:	; 0 bytes @ 0x0
	ds	2
	global	__doprnt@flag
__doprnt@flag:	; 1 bytes @ 0x2
	ds	1
	global	__doprnt@prec
__doprnt@prec:	; 1 bytes @ 0x3
	ds	1
	global	__doprnt@_val
__doprnt@_val:	; 4 bytes @ 0x4
	ds	4
	global	__doprnt@c
__doprnt@c:	; 1 bytes @ 0x8
	ds	1
	global	__doprnt@pb
__doprnt@pb:	; 1 bytes @ 0x9
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xA
	global	?_printf
?_printf:	; 2 bytes @ 0xA
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0xA
	ds	2
	global	printf@f
printf@f:	; 1 bytes @ 0xC
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0xD
	global	sprintf@wh
sprintf@wh:	; 1 bytes @ 0xD
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0xE
	global	printf@pb
printf@pb:	; 2 bytes @ 0xE
	ds	1
	global	sprintf@pb
sprintf@pb:	; 2 bytes @ 0xF
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x11
	ds	3
;;Data sizes: Strings 40, constant 10, data 0, bss 8, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     20      28
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?_atoi	int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 3
;;		 -> STR_3(CODE[3]), 
;;
;; ?_sprintf	int  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), carac1(BANK0[4]), 
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; sprintf@wh	PTR unsigned char  size(1) Largest target is 4
;;		 -> carac1(BANK0[4]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), carac1(BANK0[4]), 
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 5
;;		 -> STR_4(CODE[5]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), carac1(BANK0[4]), 
;;
;; atoi@s	PTR const unsigned char  size(1) Largest target is 4
;;		 -> carac1(BANK0[4]), 
;;
;; _doprnt@ap	PTR PTR void  size(1) Largest target is 2
;;		 -> sprintf@ap(BANK0[1]), printf@ap(BANK0[1]), 
;;
;; _doprnt@f	PTR const unsigned char  size(1) Largest target is 5
;;		 -> STR_4(CODE[5]), STR_3(CODE[3]), 
;;
;; S1857__prbuf$func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; _doprnt@pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; S1857__prbuf$ptr	PTR unsigned char  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), carac1(BANK0[4]), 
;;
;; _doprnt@pb.ptr	PTR unsigned char  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), carac1(BANK0[4]), 
;;
;; _doprnt@pb	PTR struct __prbuf size(1) Largest target is 3
;;		 -> sprintf@pb(BANK0[2]), printf@pb(BANK0[2]), 
;;
;; S1876$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 13
;;		 -> STR_6(CODE[3]), STR_5(CODE[6]), carac1(BANK0[4]), STR_2(CODE[10]), 
;;		 -> STR_1(CODE[13]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_atoi
;;   _lcd_init->_lcd_write
;;   _lcd_clear->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _lcd_goto->_lcd_write
;;   _lcd_write->_pause
;;   _printf->__doprnt
;;   _sprintf->__doprnt
;;   __doprnt->___lwmod
;;   _atoi->___wmul
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_sprintf
;;   _printf->__doprnt
;;   _sprintf->__doprnt
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    3572
;;                                             17 BANK0      3     3      0
;;                           _lcd_init
;;                         _init_comms
;;                           _lcd_goto
;;                           _lcd_puts
;;                              _getch
;;                          _lcd_clear
;;                            ___lwdiv
;;                            _sprintf
;;                               _atoi
;;                             _printf
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             1     1      0     295
;;                                              5 COMMON     1     1      0
;;                              _pause
;;                          _lcd_write
;;                          _lcd_clear
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
;; (2) _lcd_write                                            1     1      0      90
;;                                              4 COMMON     1     1      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _printf                                               6     4      2    1144
;;                                             10 BANK0      6     4      2
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                              7     4      3    1200
;;                                             10 BANK0      7     4      3
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (2) __doprnt                                             12    10      2    1035
;;                                             12 COMMON     2     0      2
;;                                              0 BANK0     10    10      0
;;                   Absolute function
;;                              _putch
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (2) _pause                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (1) _atoi                                                 8     6      2     388
;;                                              6 COMMON     8     6      2
;;                             ___wmul
;;                            _isdigit
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
;; (3) Absolute function(Fake)                               1     0      1       0
;;                                              0 COMMON     1     0      1
;; ---------------------------------------------------------------------------------
;; (3) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _init_comms                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _getch                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _putch                                                1     0      1      22
;;                                              0 COMMON     1     0      1
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
;;   ___lwdiv
;;   _sprintf
;;     __doprnt
;;       Absolute function(Fake)
;;       _putch
;;       ___lwdiv
;;       ___lwmod
;;         ___lwdiv (ARG)
;;   _atoi
;;     ___wmul
;;     _isdigit
;;   _printf
;;     __doprnt
;;       Absolute function(Fake)
;;       _putch
;;       ___lwdiv
;;       ___lwmod
;;         ___lwdiv (ARG)
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
;;ABS                  0      0      2A       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     14      1C       5       35.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      2F      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 66 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
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
;;		___lwdiv
;;		_sprintf
;;		_atoi
;;		_printf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
	line	66
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	68
	
l3290:	
;SRPROG2.c: 68: ANSEL = 0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	69
;SRPROG2.c: 69: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	70
;SRPROG2.c: 70: PORTB=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	71
	
l3292:	
;SRPROG2.c: 71: TRISB1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1073/8)^080h,(1073)&7
	line	72
;SRPROG2.c: 72: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	73
;SRPROG2.c: 73: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	74
;SRPROG2.c: 74: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	75
;SRPROG2.c: 75: TRISE = 0x00;
	clrf	(137)^080h	;volatile
	line	76
	
l3294:	
;SRPROG2.c: 76: ADCON1 = 0xFF;
	movlw	(0FFh)
	movwf	(159)^080h	;volatile
	line	77
	
l3296:	
;SRPROG2.c: 77: T1CON = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(16)	;volatile
	line	78
	
l3298:	
;SRPROG2.c: 78: TMR1H=0x00;
	clrf	(15)	;volatile
	line	79
	
l3300:	
;SRPROG2.c: 79: TMR1L=0x00;
	clrf	(14)	;volatile
	line	81
	
l3302:	
;SRPROG2.c: 81: RB1=0;
	bcf	(49/8),(49)&7
	line	82
	
l3304:	
;SRPROG2.c: 82: RB0=0;
	bcf	(48/8),(48)&7
	line	84
	
l3306:	
;SRPROG2.c: 84: lcd_init();
	fcall	_lcd_init
	line	86
	
l3308:	
;SRPROG2.c: 86: init_comms();
	fcall	_init_comms
	line	88
	
l3310:	
;SRPROG2.c: 88: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	89
	
l3312:	
;SRPROG2.c: 89: lcd_puts("INICIANDO...");
	movlw	low((STR_1-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	91
	
l3314:	
;SRPROG2.c: 91: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u837:
	decfsz	((??_main+0)+0),f
	goto	u837
	decfsz	((??_main+0)+0+1),f
	goto	u837
	decfsz	((??_main+0)+0+2),f
	goto	u837
	nop2
opt asmopt_on

	line	95
	
l3316:	
;SRPROG2.c: 95: TMR1H=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(15)	;volatile
	line	96
	
l3318:	
;SRPROG2.c: 96: TMR1L=0x00;
	clrf	(14)	;volatile
	line	98
	
l3320:	
;SRPROG2.c: 98: dist=0;
	clrf	(_dist)
	clrf	(_dist+1)
	line	100
	
l3322:	
;SRPROG2.c: 100: getch();
	fcall	_getch
	line	102
	
l3324:	
;SRPROG2.c: 102: lcd_clear();
	fcall	_lcd_clear
	line	104
	
l3326:	
;SRPROG2.c: 104: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	106
	
l3328:	
;SRPROG2.c: 106: _delay((unsigned long)((2)*(4000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	108
	
l3330:	
;SRPROG2.c: 108: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	110
	
l3332:	
;SRPROG2.c: 110: _delay((unsigned long)((10)*(4000000/4000000.0)));
	opt asmopt_off
movlw	3
movwf	(??_main+0)+0,f
u847:
decfsz	(??_main+0)+0,f
	goto	u847
opt asmopt_on

	line	112
	
l3334:	
;SRPROG2.c: 112: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	114
;SRPROG2.c: 114: while(!RB0);
	
l1067:	
	btfss	(48/8),(48)&7
	goto	u751
	goto	u750
u751:
	goto	l1067
u750:
	
l1069:	
	line	116
;SRPROG2.c: 116: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	118
;SRPROG2.c: 118: while(RB0 && !TMR1IF);
	
l1070:	
	btfss	(48/8),(48)&7
	goto	u761
	goto	u760
u761:
	goto	l1074
u760:
	
l3336:	
	btfss	(96/8),(96)&7
	goto	u771
	goto	u770
u771:
	goto	l1070
u770:
	
l1074:	
	line	120
;SRPROG2.c: 120: TMR1ON=0;
	bcf	(128/8),(128)&7
	line	122
;SRPROG2.c: 122: if(!TMR1IF){
	btfsc	(96/8),(96)&7
	goto	u781
	goto	u780
u781:
	goto	l3340
u780:
	line	124
	
l3338:	
;SRPROG2.c: 124: dist = (TMR1H<<8 | TMR1L);
	movf	(15),w	;volatile
	movwf	(_dist+1)
	clrf	(_dist)
	movf	(14),w	;volatile
	iorwf	(_dist),f
	line	132
;SRPROG2.c: 132: }else{
	goto	l3344
	line	133
	
l3340:	
;SRPROG2.c: 133: dist=0;
	clrf	(_dist)
	clrf	(_dist+1)
	line	134
	
l3342:	
;SRPROG2.c: 134: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	137
	
l3344:	
;SRPROG2.c: 135: }
;SRPROG2.c: 137: dist = (dist)/58;
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
	line	139
	
l3346:	
;SRPROG2.c: 139: if(dist<3 || 350<dist){
	movlw	high(03h)
	subwf	(_dist+1),w
	movlw	low(03h)
	skipnz
	subwf	(_dist),w
	skipc
	goto	u791
	goto	u790
u791:
	goto	l3350
u790:
	
l3348:	
	movlw	high(015Fh)
	subwf	(_dist+1),w
	movlw	low(015Fh)
	skipnz
	subwf	(_dist),w
	skipc
	goto	u801
	goto	u800
u801:
	goto	l3354
u800:
	line	140
	
l3350:	
;SRPROG2.c: 140: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	141
	
l3352:	
;SRPROG2.c: 141: lcd_puts("SIN RANGO");
	movlw	low((STR_2-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	142
;SRPROG2.c: 142: }else if(3<dist || dist<350){
	goto	l3374
	
l3354:	
	movlw	high(04h)
	subwf	(_dist+1),w
	movlw	low(04h)
	skipnz
	subwf	(_dist),w
	skipnc
	goto	u811
	goto	u810
u811:
	goto	l3358
u810:
	
l3356:	
	movlw	high(015Eh)
	subwf	(_dist+1),w
	movlw	low(015Eh)
	skipnz
	subwf	(_dist),w
	skipnc
	goto	u821
	goto	u820
u821:
	goto	l3374
u820:
	line	143
	
l3358:	
;SRPROG2.c: 143: sprintf(carac1, "%d",dist);
	movlw	((STR_3-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_dist+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_dist),w
	movwf	0+(?_sprintf)+01h
	movlw	(_carac1)&0ffh
	fcall	_sprintf
	line	145
	
l3360:	
;SRPROG2.c: 145: dato = atoi(carac1);
	movlw	(_carac1)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	movwf	(_dato+1)
	movf	(0+(?_atoi)),w
	movwf	(_dato)
	line	146
	
l3362:	
;SRPROG2.c: 146: printf(" %d ",dato);
	movf	(_dato+1),w
	movwf	(?_printf+1)
	movf	(_dato),w
	movwf	(?_printf)
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_printf
	line	148
	
l3364:	
;SRPROG2.c: 148: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	149
	
l3366:	
;SRPROG2.c: 149: lcd_puts("Dist:");
	movlw	low((STR_5-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	150
	
l3368:	
;SRPROG2.c: 150: lcd_puts(carac1);
	movlw	(_carac1&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x0/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	151
	
l3370:	
;SRPROG2.c: 151: lcd_goto(0x0A);
	movlw	(0Ah)
	fcall	_lcd_goto
	line	152
	
l3372:	
;SRPROG2.c: 152: lcd_puts("cm");
	movlw	low((STR_6-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	155
	
l3374:	
;SRPROG2.c: 153: }
;SRPROG2.c: 155: _delay((unsigned long)((200)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	186
movwf	((??_main+0)+0),f
u857:
	decfsz	((??_main+0)+0),f
	goto	u857
	decfsz	((??_main+0)+0+1),f
	goto	u857
	decfsz	((??_main+0)+0+2),f
	goto	u857
	clrwdt
opt asmopt_on

	goto	l3316
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	158
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text342,local,class=CODE,delta=2
global __ptext342
__ptext342:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 192 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
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
psect	text342
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
	line	192
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	195
	
l3250:	
	line	197
	
l3252:	
;SRPROG2.c: 197: RC3 = 0;
	bcf	(59/8),(59)&7
	line	198
	
l3254:	
;SRPROG2.c: 198: RC0 = 0;
	bcf	(56/8),(56)&7
	line	199
	
l3256:	
;SRPROG2.c: 199: RC4 = 0;
	bcf	(60/8),(60)&7
	line	201
	
l3258:	
;SRPROG2.c: 201: pause(15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	202
	
l3260:	
;SRPROG2.c: 202: PORTD = init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	203
	
l3262:	
;SRPROG2.c: 203: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3264:	
	bcf	(56/8),(56)&7
	line	204
;SRPROG2.c: 204: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	205
	
l3266:	
;SRPROG2.c: 205: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l3268:	
	bcf	(56/8),(56)&7
	line	206
;SRPROG2.c: 206: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	207
	
l3270:	
;SRPROG2.c: 207: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l3272:	
	bcf	(56/8),(56)&7
	line	208
;SRPROG2.c: 208: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	209
	
l3274:	
;SRPROG2.c: 209: PORTD= 2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	210
	
l3276:	
;SRPROG2.c: 210: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3278:	
	bcf	(56/8),(56)&7
	line	212
	
l3280:	
;SRPROG2.c: 212: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	213
	
l3282:	
;SRPROG2.c: 213: lcd_write(0x0C);
	movlw	(0Ch)
	fcall	_lcd_write
	line	214
	
l3284:	
;SRPROG2.c: 214: lcd_write(0x0F);
	movlw	(0Fh)
	fcall	_lcd_write
	line	215
	
l3286:	
;SRPROG2.c: 215: lcd_clear();
	fcall	_lcd_clear
	line	216
	
l3288:	
;SRPROG2.c: 216: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	217
	
l1107:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_clear
psect	text343,local,class=CODE,delta=2
global __ptext343
__ptext343:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 170 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
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
psect	text343
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
	line	170
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	171
	
l3246:	
;SRPROG2.c: 171: RC3 = 0;
	bcf	(59/8),(59)&7
	line	172
	
l3248:	
;SRPROG2.c: 172: lcd_write(0x01);
	movlw	(01h)
	fcall	_lcd_write
	line	173
;SRPROG2.c: 173: pause (2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	174
	
l1092:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_puts
psect	text344,local,class=CODE,delta=2
global __ptext344
__ptext344:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 176 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
;; Parameters:    Size  Location     Type
;;  s               2    5[COMMON] PTR const unsigned char 
;;		 -> STR_6(3), STR_5(6), carac1(4), STR_2(10), 
;;		 -> STR_1(13), 
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
psect	text344
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
	line	176
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 4
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	177
	
l3238:	
;SRPROG2.c: 177: RC3 = 1;
	bsf	(59/8),(59)&7
	line	178
;SRPROG2.c: 178: while(*s)
	goto	l3244
	line	179
	
l3240:	
;SRPROG2.c: 179: lcd_write(*s++);
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	
l3242:	
	incf	(lcd_puts@s),f
	skipnz
	incf	(lcd_puts@s+1),f
	line	178
	
l3244:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u741
	goto	u740
u741:
	goto	l3240
u740:
	line	180
	
l1098:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_goto
psect	text345,local,class=CODE,delta=2
global __ptext345
__ptext345:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 187 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
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
psect	text345
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
	line	187
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	188
	
l3234:	
;SRPROG2.c: 188: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	189
	
l3236:	
;SRPROG2.c: 189: lcd_write(0x80 + pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	190
	
l1104:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_write
psect	text346,local,class=CODE,delta=2
global __ptext346
__ptext346:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 162 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
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
psect	text346
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
	line	162
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	163
	
l3220:	
;SRPROG2.c: 163: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	164
	
l3222:	
;SRPROG2.c: 164: PORTD = ( ( c >> 4) & 0x0F);
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	165
	
l3224:	
;SRPROG2.c: 165: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3226:	
	bcf	(56/8),(56)&7
	line	166
	
l3228:	
;SRPROG2.c: 166: PORTD = (c & 0x0F);
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	167
	
l3230:	
;SRPROG2.c: 167: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3232:	
	bcf	(56/8),(56)&7
	line	168
	
l1089:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_printf
psect	text347,local,class=CODE,delta=2
global __ptext347
__ptext347:

;; *************** function _printf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\printf.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_4(5), 
;; Auto vars:     Size  Location     Type
;;  f               1   12[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(5), 
;;  pb              2   14[BANK0 ] struct __prbuf
;;  ap              1   13[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   10[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text347
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\printf.c"
	line	14
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 5
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	23
	movwf	(printf@f)
	
l3210:	
	clrf	(printf@pb)
	line	24
	
l3212:	
	movlw	((fp__putch-fpbase))&0ffh
	movwf	(0+printf@pb+01h)
	line	25
	
l3214:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	26
	
l3216:	
;	Return value of _printf is never used
	movf	(printf@f),w
	movwf	(?__doprnt)
	movlw	(printf@ap)&0ffh
	movwf	0+(?__doprnt)+01h
	movlw	(printf@pb)&0ffh
	fcall	__doprnt
	line	28
	
l2160:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_sprintf
psect	text348,local,class=CODE,delta=2
global __ptext348
__ptext348:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\sprintf.c"
;; Parameters:    Size  Location     Type
;;  wh              1    wreg     PTR unsigned char 
;;		 -> carac1(4), 
;;  f               1   10[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(3), 
;; Auto vars:     Size  Location     Type
;;  wh              1   13[BANK0 ] PTR unsigned char 
;;		 -> carac1(4), 
;;  pb              2   15[BANK0 ] struct __prbuf
;;  ap              1   14[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   10[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text348
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\sprintf.c"
	line	14
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 5
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@wh stored from wreg
	line	31
	movwf	(sprintf@wh)
	
l3198:	
	movf	(sprintf@wh),w
	movwf	(sprintf@pb)
	line	32
	
l3200:	
	clrf	(0+sprintf@pb+01h)
	line	33
	
l3202:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)
	line	34
	
l3204:	
	movf	(sprintf@f),w
	movwf	(?__doprnt)
	movlw	(sprintf@ap)&0ffh
	movwf	0+(?__doprnt)+01h
	movlw	(sprintf@pb)&0ffh
	fcall	__doprnt
	line	35
	
l3206:	
	movf	(sprintf@pb),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	38
	
l2167:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	__doprnt
psect	text349,local,class=CODE,delta=2
global __ptext349
__ptext349:

;; *************** function __doprnt *****************
;; Defined at:
;;		line 455 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  pb              1    wreg     PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  f               1   12[COMMON] PTR const unsigned char 
;;		 -> STR_4(5), STR_3(3), 
;;  ap              1   13[COMMON] PTR PTR void 
;;		 -> sprintf@ap(1), printf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  pb              1    9[BANK0 ] PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  _val            4    4[BANK0 ] struct .
;;  c               1    8[BANK0 ] char 
;;  prec            1    3[BANK0 ] char 
;;  flag            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   12[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       8       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         2      10       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Absolute function
;;		_putch
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_printf
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text349
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	455
	global	__size_of__doprnt
	__size_of__doprnt	equ	__end_of__doprnt-__doprnt
	
__doprnt:	
	opt	stack 5
; Regs used in __doprnt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;__doprnt@pb stored from wreg
	movwf	(__doprnt@pb)
	line	540
	
l3130:	
	goto	l3192
	line	542
	
l3132:	
	movf	(__doprnt@c),w
	xorlw	025h
	skipnz
	goto	u641
	goto	u640
u641:
	goto	l3142
u640:
	line	545
	
l3134:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u651
	goto	u650
u651:
	goto	l3138
u650:
	
l3136:	
	movf	(__doprnt@c),w
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l3192
	
l3138:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c),w
	movwf	indf
	
l3140:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	goto	l3192
	line	552
	
l3142:	
	clrf	(__doprnt@flag)
	line	638
	
l3146:	
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(__doprnt@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
; rangetable           110     6 (fixed)
; spacedrange          218     9 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3194
	xorlw	100^0	; case 100
	skipnz
	goto	l3148
	xorlw	105^100	; case 105
	skipnz
	goto	l3148
	goto	l3192
	opt asmopt_on

	line	1254
	
l3148:	
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
	movwf	(__doprnt@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(__doprnt@_val+1)
	line	1256
	
l3150:	
	btfss	(__doprnt@_val+1),7
	goto	u661
	goto	u660
u661:
	goto	l3156
u660:
	line	1257
	
l3152:	
	movlw	(03h)
	iorwf	(__doprnt@flag),f
	line	1258
	
l3154:	
	comf	(__doprnt@_val),f
	comf	(__doprnt@_val+1),f
	incf	(__doprnt@_val),f
	skipnz
	incf	(__doprnt@_val+1),f
	line	1300
	
l3156:	
	clrf	(__doprnt@c)
	incf	(__doprnt@c),f
	line	1301
	
l3160:	
	clrc
	rlf	(__doprnt@c),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??__doprnt+0)+0
	fcall	stringdir
	movwf	(??__doprnt+0)+0+1
	movf	1+(??__doprnt+0)+0,w
	subwf	(__doprnt@_val+1),w
	skipz
	goto	u675
	movf	0+(??__doprnt+0)+0,w
	subwf	(__doprnt@_val),w
u675:
	skipnc
	goto	u671
	goto	u670
u671:
	goto	l3164
u670:
	goto	l3168
	line	1300
	
l3164:	
	incf	(__doprnt@c),f
	
l3166:	
	movf	(__doprnt@c),w
	xorlw	05h
	skipz
	goto	u681
	goto	u680
u681:
	goto	l3160
u680:
	line	1433
	
l3168:	
	movf	(__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u691
	goto	u690
u691:
	goto	l3178
u690:
	line	1434
	
l3170:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u701
	goto	u700
u701:
	goto	l3174
u700:
	
l3172:	
	movlw	(02Dh)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l3178
	
l3174:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l3176:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1467
	
l3178:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@c),w
	movwf	(__doprnt@prec)
	line	1469
	goto	l3190
	line	1484
	
l3180:	
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	clrc
	rlf	(__doprnt@prec),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(__doprnt@_val+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(__doprnt@_val),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(__doprnt@c)
	line	1516
	
l3182:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u711
	goto	u710
u711:
	goto	l3186
u710:
	
l3184:	
	movf	(__doprnt@c),w
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l3190
	
l3186:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c),w
	movwf	indf
	
l3188:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1469
	
l3190:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(__doprnt@prec),f
	incf	((__doprnt@prec)),w
	skipz
	goto	u721
	goto	u720
u721:
	goto	l3180
u720:
	line	540
	
l3192:	
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__doprnt@c)
	movf	((__doprnt@c)),f
	skipz
	goto	u731
	goto	u730
u731:
	goto	l3132
u730:
	line	1532
	
l3194:	
	clrf	(?__doprnt)
	clrf	(?__doprnt+1)
	line	1533
	
l1151:	
	return
	opt stack 0
GLOBAL	__end_of__doprnt
	__end_of__doprnt:
;; =============== function __doprnt ends ============

	signat	__doprnt,12410
	global	_pause
psect	text350,local,class=CODE,delta=2
global __ptext350
__ptext350:

;; *************** function _pause *****************
;; Defined at:
;;		line 219 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
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
psect	text350
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
	line	219
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 5
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	221
	
l3122:	
;SRPROG2.c: 220: unsigned short x;
;SRPROG2.c: 221: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l3128
	line	223
	
l3124:	
;SRPROG2.c: 222: {
;SRPROG2.c: 223: msecbase();
	fcall	_msecbase
	line	221
	
l3126:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l3128:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u635
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u635:
	skipnc
	goto	u631
	goto	u630
u631:
	goto	l3124
u630:
	line	225
	
l1113:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	_atoi
psect	text351,local,class=CODE,delta=2
global __ptext351
__ptext351:

;; *************** function _atoi *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\atoi.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> carac1(4), 
;; Auto vars:     Size  Location     Type
;;  s               1   13[COMMON] PTR const unsigned char 
;;		 -> carac1(4), 
;;  a               2   11[COMMON] int 
;;  sign            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
psect	text351
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
	
l3088:	
	goto	l3092
	line	11
	
l3090:	
	incf	(atoi@s),f
	line	10
	
l3092:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	020h
	skipnz
	goto	u571
	goto	u570
u571:
	goto	l3090
u570:
	
l3094:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	09h
	skipnz
	goto	u581
	goto	u580
u581:
	goto	l3090
u580:
	line	12
	
l3096:	
	clrf	(atoi@a)
	clrf	(atoi@a+1)
	line	13
	clrf	(atoi@sign)
	line	14
	
l3098:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u591
	goto	u590
u591:
	goto	l3102
u590:
	line	15
	
l3100:	
	incf	(atoi@sign),f
	line	16
	incf	(atoi@s),f
	line	17
	goto	l3110
	
l3102:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Bh
	skipz
	goto	u601
	goto	u600
u601:
	goto	l3110
u600:
	line	18
	
l3104:	
	incf	(atoi@s),f
	goto	l3110
	line	20
	
l3106:	
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
	goto	l3104
	line	19
	
l3110:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_isdigit
	btfsc	status,0
	goto	u611
	goto	u610
u611:
	goto	l3106
u610:
	line	21
	
l3112:	
	movf	(atoi@sign),w
	skipz
	goto	u620
	goto	l3118
u620:
	line	22
	
l3114:	
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
	goto	l2146
	line	23
	
l3118:	
	movf	(atoi@a+1),w
	movwf	(?_atoi+1)
	movf	(atoi@a),w
	movwf	(?_atoi)
	line	24
	
l2146:	
	return
	opt stack 0
GLOBAL	__end_of_atoi
	__end_of_atoi:
;; =============== function _atoi ends ============

	signat	_atoi,4218
	global	___lwmod
psect	text352,local,class=CODE,delta=2
global __ptext352
__ptext352:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text352
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3068:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u531
	goto	u530
u531:
	goto	l3084
u530:
	line	9
	
l3070:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l3074
	line	11
	
l3072:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l3074:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u541
	goto	u540
u541:
	goto	l3072
u540:
	line	15
	
l3076:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u555
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u555:
	skipc
	goto	u551
	goto	u550
u551:
	goto	l3080
u550:
	line	16
	
l3078:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l3080:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l3082:	
	decfsz	(___lwmod@counter),f
	goto	u561
	goto	u560
u561:
	goto	l3076
u560:
	line	20
	
l3084:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l2199:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text353,local,class=CODE,delta=2
global __ptext353
__ptext353:

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
;;		_main
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text353
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3042:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3044:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u491
	goto	u490
u491:
	goto	l3064
u490:
	line	11
	
l3046:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l3050
	line	13
	
l3048:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l3050:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u501
	goto	u500
u501:
	goto	l3048
u500:
	line	17
	
l3052:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l3054:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u515
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u515:
	skipc
	goto	u511
	goto	u510
u511:
	goto	l3060
u510:
	line	19
	
l3056:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3058:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3060:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3062:	
	decfsz	(___lwdiv@counter),f
	goto	u521
	goto	u520
u521:
	goto	l3052
u520:
	line	25
	
l3064:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2189:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text354,local,class=CODE,delta=2
global __ptext354
__ptext354:

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
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text354
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3026:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l3028:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u471
	goto	u470
u471:
	goto	l3032
u470:
	line	8
	
l3030:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l3032:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l3034:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l3036:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u481
	goto	u480
u481:
	goto	l3028
u480:
	line	12
	
l3038:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2179:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text355,local,class=CODE,delta=2
global __ptext355
__ptext355:

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
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
psect	text355
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 6
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l3014:	
	clrf	(_isdigit$2410)
	
l3016:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u451
	goto	u450
u451:
	goto	l3022
u450:
	
l3018:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u461
	goto	u460
u461:
	goto	l3022
u460:
	
l3020:	
	clrf	(_isdigit$2410)
	incf	(_isdigit$2410),f
	
l3022:	
	rrf	(_isdigit$2410),w
	
	line	15
	
l2151:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_msecbase
psect	text356,local,class=CODE,delta=2
global __ptext356
__ptext356:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 227 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
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
psect	text356
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
	line	227
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 5
; Regs used in _msecbase: [wreg]
	line	228
	
l3012:	
;SRPROG2.c: 228: OPTION_REG = 0b11010010;
	movlw	(0D2h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	229
;SRPROG2.c: 229: TMR0 = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	230
;SRPROG2.c: 230: TMR0 = 0x8E;
	movlw	(08Eh)
	movwf	(1)	;volatile
	line	231
;SRPROG2.c: 231: while(!T0IF);
	
l1116:	
	btfss	(90/8),(90)&7
	goto	u441
	goto	u440
u441:
	goto	l1116
u440:
	
l1118:	
	line	232
;SRPROG2.c: 232: T0IF = 0;
	bcf	(90/8),(90)&7
	line	233
	
l1119:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_init_comms
psect	text357,local,class=CODE,delta=2
global __ptext357
__ptext357:

;; *************** function _init_comms *****************
;; Defined at:
;;		line 52 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
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
psect	text357
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
	line	52
	global	__size_of_init_comms
	__size_of_init_comms	equ	__end_of_init_comms-_init_comms
	
_init_comms:	
	opt	stack 7
; Regs used in _init_comms: [wreg+status,2]
	line	53
	
l3006:	
;SRPROG2.c: 53: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	54
;SRPROG2.c: 54: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	55
	
l3008:	
;SRPROG2.c: 55: SPBRG = 0x19;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	57
;SRPROG2.c: 57: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	58
;SRPROG2.c: 58: TXSTA = 0x26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	59
	
l3010:	
;SRPROG2.c: 59: BAUDCTL = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	60
	
l1063:	
	return
	opt stack 0
GLOBAL	__end_of_init_comms
	__end_of_init_comms:
;; =============== function _init_comms ends ============

	signat	_init_comms,88
	global	_getch
psect	text358,local,class=CODE,delta=2
global __ptext358
__ptext358:

;; *************** function _getch *****************
;; Defined at:
;;		line 45 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
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
psect	text358
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
	line	45
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 7
; Regs used in _getch: [wreg]
	line	47
	
l3000:	
	line	48
;SRPROG2.c: 47: while(!RCIF)
	
l1057:	
	line	47
	btfss	(101/8),(101)&7
	goto	u431
	goto	u430
u431:
	goto	l1057
u430:
	line	49
	
l3002:	
;SRPROG2.c: 49: return RCREG;
;	Return value of _getch is never used
	movf	(26),w	;volatile
	line	50
	
l1060:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_putch
psect	text359,local,class=CODE,delta=2
global __ptext359
__ptext359:

;; *************** function _putch *****************
;; Defined at:
;;		line 38 in file "C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
;; Parameters:    Size  Location     Type
;;  byte            1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text359
	file	"C:\Users\Jorge\OneDrive\Escritorio\SRPROG2\SRPROG2.c"
	line	38
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 5
; Regs used in _putch: [wreg]
	line	40
	
l2996:	
	line	41
;SRPROG2.c: 40: while(!TXIF)
	
l1051:	
	line	40
	btfss	(100/8),(100)&7
	goto	u421
	goto	u420
u421:
	goto	l1051
u420:
	line	42
	
l2998:	
;SRPROG2.c: 42: TXREG = byte;
	movf	(putch@byte),w
	movwf	(25)	;volatile
	line	43
	
l1054:	
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
