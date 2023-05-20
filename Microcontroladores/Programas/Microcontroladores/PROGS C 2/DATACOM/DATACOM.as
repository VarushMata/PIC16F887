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
# 7 "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF& 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 8 "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_init_comms
	FNCALL	_main,_getch
	FNCALL	_main,_ADC
	FNCALL	_main,_printf
	FNCALL	_main,_atoi
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_sprintf
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_PWM
	FNCALL	_lcd_init,_pause
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_init,_lcd_clear
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_pause
	FNCALL	_lcd_write,_pause
	FNCALL	_PWM,_pause
	FNCALL	_sprintf,__doprnt
	FNCALL	_printf,__doprnt
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
	global	_op
	global	_pwm1
	global	_pwm2
	global	_vadc1
	global	_vadc2
	global	_vporta
	global	_vportb
	global	_PA1
	global	_PA2
	global	_carac2
	global	_carac3
	global	_PA
	global	_carac1
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
	
STR_5:	
	retlw	112	;'p'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_7:	
	retlw	112	;'p'
	retlw	119	;'w'
	retlw	109	;'m'
	retlw	49	;'1'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_9:	
	retlw	112	;'p'
	retlw	119	;'w'
	retlw	109	;'m'
	retlw	50	;'2'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_1:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
STR_6	equ	STR_4+0
STR_8	equ	STR_4+0
STR_2	equ	STR_1+0
STR_3	equ	STR_1+0
	file	"DATACOM.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_op:
       ds      2

_pwm1:
       ds      2

_pwm2:
       ds      2

_vadc1:
       ds      2

_vadc2:
       ds      2

_vporta:
       ds      2

_vportb:
       ds      2

_PA1:
       ds      5

_PA2:
       ds      5

_carac2:
       ds      5

_carac3:
       ds      5

_PA:
       ds      4

_carac1:
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
	movlw	low((__pbssBANK0)+02Ah)
	fcall	clear_ram
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
	global	?_ADC
?_ADC:	; 0 bytes @ 0x0
	global	??_ADC
??_ADC:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_PWM
?_PWM:	; 0 bytes @ 0x0
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
	global	_isdigit$2431
_isdigit$2431:	; 1 bytes @ 0x0
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
	global	??_PWM
??_PWM:	; 0 bytes @ 0x4
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
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x5
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x5
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
	global	??_printf
??_printf:	; 0 bytes @ 0xE
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0xE
	global	??_main
??_main:	; 0 bytes @ 0xE
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
	global	?_printf
?_printf:	; 2 bytes @ 0xA
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xA
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
	global	main@i
main@i:	; 2 bytes @ 0x11
	ds	2
	global	main@i_1853
main@i_1853:	; 2 bytes @ 0x13
	ds	2
	global	main@i_1854
main@i_1854:	; 2 bytes @ 0x15
	ds	2
;;Data sizes: Strings 26, constant 10, data 0, bss 42, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     23      65
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?_atoi	int  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 3
;;		 -> STR_8(CODE[3]), STR_6(CODE[3]), STR_4(CODE[3]), 
;;
;; ?_sprintf	int  size(1) Largest target is 5
;;		 -> NULL(NULL[0]), carac3(BANK0[5]), carac2(BANK0[5]), carac1(BANK0[4]), 
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; sprintf@wh	PTR unsigned char  size(1) Largest target is 5
;;		 -> carac3(BANK0[5]), carac2(BANK0[5]), carac1(BANK0[4]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 5
;;		 -> NULL(NULL[0]), carac3(BANK0[5]), carac2(BANK0[5]), carac1(BANK0[4]), 
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 4
;;		 -> STR_3(CODE[4]), STR_2(CODE[4]), STR_1(CODE[4]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 5
;;		 -> NULL(NULL[0]), carac3(BANK0[5]), carac2(BANK0[5]), carac1(BANK0[4]), 
;;
;; atoi@s	PTR const unsigned char  size(1) Largest target is 5
;;		 -> PA2(BANK0[5]), PA1(BANK0[5]), PA(BANK0[4]), 
;;
;; _doprnt@ap	PTR PTR void  size(1) Largest target is 2
;;		 -> sprintf@ap(BANK0[1]), printf@ap(BANK0[1]), 
;;
;; _doprnt@f	PTR const unsigned char  size(1) Largest target is 4
;;		 -> STR_8(CODE[3]), STR_6(CODE[3]), STR_4(CODE[3]), STR_3(CODE[4]), 
;;		 -> STR_2(CODE[4]), STR_1(CODE[4]), 
;;
;; S1878__prbuf$func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; _doprnt@pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; S1878__prbuf$ptr	PTR unsigned char  size(1) Largest target is 5
;;		 -> NULL(NULL[0]), carac3(BANK0[5]), carac2(BANK0[5]), carac1(BANK0[4]), 
;;
;; _doprnt@pb.ptr	PTR unsigned char  size(1) Largest target is 5
;;		 -> NULL(NULL[0]), carac3(BANK0[5]), carac2(BANK0[5]), carac1(BANK0[4]), 
;;
;; _doprnt@pb	PTR struct __prbuf size(1) Largest target is 3
;;		 -> sprintf@pb(BANK0[2]), printf@pb(BANK0[2]), 
;;
;; S1897$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 7
;;		 -> STR_9(CODE[6]), carac3(BANK0[5]), STR_7(CODE[6]), carac2(BANK0[5]), 
;;		 -> STR_5(CODE[7]), carac1(BANK0[4]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_atoi
;;   _lcd_init->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _lcd_goto->_lcd_write
;;   _lcd_clear->_lcd_write
;;   _lcd_write->_pause
;;   _PWM->_pause
;;   _sprintf->__doprnt
;;   _printf->__doprnt
;;   __doprnt->___lwmod
;;   _atoi->___wmul
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_sprintf
;;   _sprintf->__doprnt
;;   _printf->__doprnt
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
;; (0) _main                                                 6     6      0    3660
;;                                             17 BANK0      6     6      0
;;                           _lcd_init
;;                         _init_comms
;;                              _getch
;;                                _ADC
;;                             _printf
;;                               _atoi
;;                          _lcd_clear
;;                            _sprintf
;;                           _lcd_goto
;;                           _lcd_puts
;;                                _PWM
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
;; (1) _lcd_clear                                            0     0      0     136
;;                          _lcd_write
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            1     1      0      90
;;                                              4 COMMON     1     1      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _PWM                                                  2     2      0      46
;;                                              4 COMMON     2     2      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                              7     4      3    1200
;;                                             10 BANK0      7     4      3
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (1) _printf                                               6     4      2    1144
;;                                             10 BANK0      6     4      2
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
;; (1) _ADC                                                  1     1      0       0
;;                                              0 COMMON     1     1      0
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
;;   _getch
;;   _ADC
;;   _printf
;;     __doprnt
;;       Absolute function(Fake)
;;       _putch
;;       ___lwdiv
;;       ___lwmod
;;         ___lwdiv (ARG)
;;   _atoi
;;     ___wmul
;;     _isdigit
;;   _lcd_clear
;;     _lcd_write
;;       _pause
;;         _msecbase
;;     _pause
;;       _msecbase
;;   _sprintf
;;     __doprnt
;;       Absolute function(Fake)
;;       _putch
;;       ___lwdiv
;;       ___lwmod
;;         ___lwdiv (ARG)
;;   _lcd_goto
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _lcd_puts
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _PWM
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
;;ABS                  0      0      4F       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     17      41       5       81.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      54      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 82 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   21[BANK0 ] int 
;;  i               2   19[BANK0 ] int 
;;  i               2   17[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
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
;;		_getch
;;		_ADC
;;		_printf
;;		_atoi
;;		_lcd_clear
;;		_sprintf
;;		_lcd_goto
;;		_lcd_puts
;;		_PWM
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	line	82
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	84
	
l3444:	
;DATACOM.c: 84: ANSEL = 0x60;
	movlw	(060h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	85
	
l3446:	
;DATACOM.c: 85: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	86
	
l3448:	
;DATACOM.c: 86: TRISB = 0xFF;
	movlw	(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	87
;DATACOM.c: 87: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	89
;DATACOM.c: 89: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	90
;DATACOM.c: 90: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	91
	
l3450:	
;DATACOM.c: 91: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	92
	
l3452:	
;DATACOM.c: 92: T2CON = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	93
	
l3454:	
;DATACOM.c: 93: PR2 = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	95
	
l3456:	
;DATACOM.c: 95: CCPR1L = 0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	96
	
l3458:	
;DATACOM.c: 96: CCP1CON = 0x0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	98
	
l3460:	
;DATACOM.c: 98: lcd_init();
	fcall	_lcd_init
	line	100
	
l3462:	
;DATACOM.c: 100: init_comms();
	fcall	_init_comms
	line	102
	
l3464:	
;DATACOM.c: 102: ADFM = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1279/8)^080h,(1279)&7
	line	104
	
l3466:	
;DATACOM.c: 104: PORTA=0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	108
	
l3468:	
;DATACOM.c: 108: op=getch();
	fcall	_getch
	movwf	(_op)
	clrf	(_op+1)
	line	110
;DATACOM.c: 110: switch(op){
	goto	l3558
	line	114
	
l3470:	
;DATACOM.c: 114: vportb = PORTB;
	movf	(6),w	;volatile
	movwf	(_vportb)
	clrf	(_vportb+1)
	line	116
	
l3472:	
;DATACOM.c: 116: ADC();
	fcall	_ADC
	line	118
	
l3474:	
;DATACOM.c: 118: printf("%d ",vadc1);
	movf	(_vadc1+1),w
	movwf	(?_printf+1)
	movf	(_vadc1),w
	movwf	(?_printf)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	119
	
l3476:	
;DATACOM.c: 119: printf("%d ",vadc2);
	movf	(_vadc2+1),w
	movwf	(?_printf+1)
	movf	(_vadc2),w
	movwf	(?_printf)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	120
	
l3478:	
;DATACOM.c: 120: printf("%d ",vportb);
	movf	(_vportb+1),w
	movwf	(?_printf+1)
	movf	(_vportb),w
	movwf	(?_printf)
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	line	121
;DATACOM.c: 121: break;
	goto	l3468
	line	125
	
l3480:	
;DATACOM.c: 125: for(int i=0;i<=2;i++){
	clrf	(main@i)
	clrf	(main@i+1)
	line	126
	
l3486:	
;DATACOM.c: 126: PA[i]=getch();}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	_PA&0ffh
	movwf	fsr0
	fcall	_getch
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	125
	
l3488:	
	incf	(main@i),f
	skipnz
	incf	(main@i+1),f
	
l3490:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u785
	movlw	low(03h)
	subwf	(main@i),w
u785:

	skipc
	goto	u781
	goto	u780
u781:
	goto	l3486
u780:
	line	127
	
l3492:	
;DATACOM.c: 127: vporta=atoi(PA);
	movlw	(_PA)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vporta+1)
	movf	(0+(?_atoi)),w
	movwf	(_vporta)
	line	129
	
l3494:	
;DATACOM.c: 129: PORTA=0x00;
	clrf	(5)	;volatile
	line	130
	
l3496:	
;DATACOM.c: 130: PORTA = vporta;
	movf	(_vporta),w
	movwf	(5)	;volatile
	line	132
	
l3498:	
;DATACOM.c: 132: lcd_clear();
	fcall	_lcd_clear
	line	134
	
l3500:	
;DATACOM.c: 134: sprintf(carac1, "%d",vporta);
	movlw	((STR_4-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_sprintf)
	movf	(_vporta+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_vporta),w
	movwf	0+(?_sprintf)+01h
	movlw	(_carac1)&0ffh
	fcall	_sprintf
	line	135
	
l3502:	
;DATACOM.c: 135: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	136
	
l3504:	
;DATACOM.c: 136: lcd_puts("porta:");
	movlw	low((STR_5-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	137
	
l3506:	
;DATACOM.c: 137: lcd_puts(carac1);
	movlw	(_carac1&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x0/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	139
;DATACOM.c: 139: break;
	goto	l3468
	line	145
	
l3508:	
;DATACOM.c: 145: for(int i=0;i<=3;i++){
	clrf	(main@i_1853)
	clrf	(main@i_1853+1)
	line	146
	
l3514:	
;DATACOM.c: 146: PA1[i]=getch();}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i_1853),w
	addlw	_PA1&0ffh
	movwf	fsr0
	fcall	_getch
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	145
	
l3516:	
	incf	(main@i_1853),f
	skipnz
	incf	(main@i_1853+1),f
	
l3518:	
	movf	(main@i_1853+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u795
	movlw	low(04h)
	subwf	(main@i_1853),w
u795:

	skipc
	goto	u791
	goto	u790
u791:
	goto	l3514
u790:
	line	147
	
l3520:	
;DATACOM.c: 147: pwm1=atoi(PA1);
	movlw	(_PA1)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pwm1+1)
	movf	(0+(?_atoi)),w
	movwf	(_pwm1)
	line	149
	
l3522:	
;DATACOM.c: 149: for(int i=0;i<=3;i++){
	clrf	(main@i_1854)
	clrf	(main@i_1854+1)
	line	150
	
l3528:	
;DATACOM.c: 150: PA2[i]=getch();}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i_1854),w
	addlw	_PA2&0ffh
	movwf	fsr0
	fcall	_getch
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	149
	
l3530:	
	incf	(main@i_1854),f
	skipnz
	incf	(main@i_1854+1),f
	
l3532:	
	movf	(main@i_1854+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u805
	movlw	low(04h)
	subwf	(main@i_1854),w
u805:

	skipc
	goto	u801
	goto	u800
u801:
	goto	l3528
u800:
	line	151
	
l3534:	
;DATACOM.c: 151: pwm2=atoi(PA2);
	movlw	(_PA2)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pwm2+1)
	movf	(0+(?_atoi)),w
	movwf	(_pwm2)
	line	153
	
l3536:	
;DATACOM.c: 153: lcd_clear();
	fcall	_lcd_clear
	line	155
	
l3538:	
;DATACOM.c: 155: sprintf(carac2, "%d",pwm1);
	movlw	((STR_6-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_sprintf)
	movf	(_pwm1+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_pwm1),w
	movwf	0+(?_sprintf)+01h
	movlw	(_carac2)&0ffh
	fcall	_sprintf
	line	156
	
l3540:	
;DATACOM.c: 156: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	157
	
l3542:	
;DATACOM.c: 157: lcd_puts("pwm1:");
	movlw	low((STR_7-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	158
	
l3544:	
;DATACOM.c: 158: lcd_puts(carac2);
	movlw	(_carac2&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x0/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	160
	
l3546:	
;DATACOM.c: 160: sprintf(carac3, "%d",pwm2);
	movlw	((STR_8-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_pwm2+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_pwm2),w
	movwf	0+(?_sprintf)+01h
	movlw	(_carac3)&0ffh
	fcall	_sprintf
	line	161
	
l3548:	
;DATACOM.c: 161: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	162
	
l3550:	
;DATACOM.c: 162: lcd_puts("pwm2:");
	movlw	low((STR_9-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	163
	
l3552:	
;DATACOM.c: 163: lcd_puts(carac3);
	movlw	(_carac3&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x0/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	165
	
l3554:	
;DATACOM.c: 165: PWM();
	fcall	_PWM
	line	167
;DATACOM.c: 167: break;
	goto	l3468
	line	110
	
l3558:	
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

	movf (_op+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3608
	goto	l3468
	opt asmopt_on
	
l3608:	
; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 49 to 51
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (_op),w
	opt asmopt_off
	xorlw	49^0	; case 49
	skipnz
	goto	l3470
	xorlw	50^49	; case 50
	skipnz
	goto	l3480
	xorlw	51^50	; case 51
	skipnz
	goto	l3508
	goto	l3468
	opt asmopt_on

	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	171
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text411,local,class=CODE,delta=2
global __ptext411
__ptext411:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 233 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
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
psect	text411
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	line	233
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	236
	
l3404:	
	line	238
	
l3406:	
;DATACOM.c: 238: RC3 = 0;
	bcf	(59/8),(59)&7
	line	239
	
l3408:	
;DATACOM.c: 239: RC0 = 0;
	bcf	(56/8),(56)&7
	line	240
	
l3410:	
;DATACOM.c: 240: RC4 = 0;
	bcf	(60/8),(60)&7
	line	242
	
l3412:	
;DATACOM.c: 242: pause(15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	243
	
l3414:	
;DATACOM.c: 243: PORTD = init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	244
	
l3416:	
;DATACOM.c: 244: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3418:	
	bcf	(56/8),(56)&7
	line	245
;DATACOM.c: 245: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	246
	
l3420:	
;DATACOM.c: 246: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l3422:	
	bcf	(56/8),(56)&7
	line	247
;DATACOM.c: 247: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	248
	
l3424:	
;DATACOM.c: 248: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l3426:	
	bcf	(56/8),(56)&7
	line	249
;DATACOM.c: 249: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	250
	
l3428:	
;DATACOM.c: 250: PORTD= 2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	251
	
l3430:	
;DATACOM.c: 251: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3432:	
	bcf	(56/8),(56)&7
	line	253
	
l3434:	
;DATACOM.c: 253: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	254
	
l3436:	
;DATACOM.c: 254: lcd_write(0x0C);
	movlw	(0Ch)
	fcall	_lcd_write
	line	255
	
l3438:	
;DATACOM.c: 255: lcd_write(0x0F);
	movlw	(0Fh)
	fcall	_lcd_write
	line	256
	
l3440:	
;DATACOM.c: 256: lcd_clear();
	fcall	_lcd_clear
	line	257
	
l3442:	
;DATACOM.c: 257: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	258
	
l1135:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_puts
psect	text412,local,class=CODE,delta=2
global __ptext412
__ptext412:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 217 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
;; Parameters:    Size  Location     Type
;;  s               2    5[COMMON] PTR const unsigned char 
;;		 -> STR_9(6), carac3(5), STR_7(6), carac2(5), 
;;		 -> STR_5(7), carac1(4), 
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
psect	text412
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	line	217
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 4
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	218
	
l3396:	
;DATACOM.c: 218: RC3 = 1;
	bsf	(59/8),(59)&7
	line	219
;DATACOM.c: 219: while(*s)
	goto	l3402
	line	220
	
l3398:	
;DATACOM.c: 220: lcd_write(*s++);
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	
l3400:	
	incf	(lcd_puts@s),f
	skipnz
	incf	(lcd_puts@s+1),f
	line	219
	
l3402:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u771
	goto	u770
u771:
	goto	l3398
u770:
	line	221
	
l1126:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_goto
psect	text413,local,class=CODE,delta=2
global __ptext413
__ptext413:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 228 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
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
psect	text413
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	line	228
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	229
	
l3392:	
;DATACOM.c: 229: RC3 = 0;
	bcf	(59/8),(59)&7
	line	230
	
l3394:	
;DATACOM.c: 230: lcd_write(0x80 + pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	231
	
l1132:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_clear
psect	text414,local,class=CODE,delta=2
global __ptext414
__ptext414:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 211 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 100/0
;;		Unchanged: FFE9F/0
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
psect	text414
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	line	211
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	212
	
l3388:	
;DATACOM.c: 212: RC3 = 0;
	bcf	(59/8),(59)&7
	line	213
	
l3390:	
;DATACOM.c: 213: lcd_write(0x01);
	movlw	(01h)
	fcall	_lcd_write
	line	214
;DATACOM.c: 214: pause (2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	215
	
l1120:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_write
psect	text415,local,class=CODE,delta=2
global __ptext415
__ptext415:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 203 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
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
psect	text415
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	line	203
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	204
	
l3374:	
;DATACOM.c: 204: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	205
	
l3376:	
;DATACOM.c: 205: PORTD = ( ( c >> 4) & 0x0F);
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	206
	
l3378:	
;DATACOM.c: 206: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3380:	
	bcf	(56/8),(56)&7
	line	207
	
l3382:	
;DATACOM.c: 207: PORTD = (c & 0x0F);
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	208
	
l3384:	
;DATACOM.c: 208: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3386:	
	bcf	(56/8),(56)&7
	line	209
	
l1117:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_PWM
psect	text416,local,class=CODE,delta=2
global __ptext416
__ptext416:

;; *************** function _PWM *****************
;; Defined at:
;;		line 187 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
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
psect	text416
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	line	187
	global	__size_of_PWM
	__size_of_PWM	equ	__end_of_PWM-_PWM
	
_PWM:	
	opt	stack 5
; Regs used in _PWM: [wreg+status,2+status,0+pclath+cstack]
	line	188
	
l3356:	
;DATACOM.c: 188: ADRESH=pwm1>>2;
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
	line	189
	
l3358:	
;DATACOM.c: 189: ADRESL=pwm1<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	190
	
l3360:	
;DATACOM.c: 190: CCPR1L=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(21)	;volatile
	line	191
	
l3362:	
;DATACOM.c: 191: CCP1CON=0X0C|(ADRESL>>2);
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
	line	192
	
l3364:	
;DATACOM.c: 192: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	194
	
l3366:	
;DATACOM.c: 194: ADRESH=pwm2>>2;
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
	line	195
	
l3368:	
;DATACOM.c: 195: ADRESL=pwm2<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	196
	
l3370:	
;DATACOM.c: 196: CCPR2L=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(27)	;volatile
	line	197
	
l3372:	
;DATACOM.c: 197: CCP2CON=0X0C|(ADRESL>>2);
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
	line	198
;DATACOM.c: 198: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	200
	
l1114:	
	return
	opt stack 0
GLOBAL	__end_of_PWM
	__end_of_PWM:
;; =============== function _PWM ends ============

	signat	_PWM,88
	global	_sprintf
psect	text417,local,class=CODE,delta=2
global __ptext417
__ptext417:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\sprintf.c"
;; Parameters:    Size  Location     Type
;;  wh              1    wreg     PTR unsigned char 
;;		 -> carac3(5), carac2(5), carac1(4), 
;;  f               1   10[BANK0 ] PTR const unsigned char 
;;		 -> STR_8(3), STR_6(3), STR_4(3), 
;; Auto vars:     Size  Location     Type
;;  wh              1   13[BANK0 ] PTR unsigned char 
;;		 -> carac3(5), carac2(5), carac1(4), 
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
psect	text417
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
	
l3344:	
	movf	(sprintf@wh),w
	movwf	(sprintf@pb)
	line	32
	
l3346:	
	clrf	(0+sprintf@pb+01h)
	line	33
	
l3348:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)
	line	34
	
l3350:	
	movf	(sprintf@f),w
	movwf	(?__doprnt)
	movlw	(sprintf@ap)&0ffh
	movwf	0+(?__doprnt)+01h
	movlw	(sprintf@pb)&0ffh
	fcall	__doprnt
	line	35
	
l3352:	
	movf	(sprintf@pb),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	38
	
l2195:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_printf
psect	text418,local,class=CODE,delta=2
global __ptext418
__ptext418:

;; *************** function _printf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\printf.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_3(4), STR_2(4), STR_1(4), 
;; Auto vars:     Size  Location     Type
;;  f               1   12[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(4), STR_2(4), STR_1(4), 
;;  pb              2   14[BANK0 ] struct __prbuf
;;  ap              1   13[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   10[BANK0 ] int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text418
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
	
l3334:	
	clrf	(printf@pb)
	line	24
	
l3336:	
	movlw	((fp__putch-fpbase))&0ffh
	movwf	(0+printf@pb+01h)
	line	25
	
l3338:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	26
	
l3340:	
;	Return value of _printf is never used
	movf	(printf@f),w
	movwf	(?__doprnt)
	movlw	(printf@ap)&0ffh
	movwf	0+(?__doprnt)+01h
	movlw	(printf@pb)&0ffh
	fcall	__doprnt
	line	28
	
l2188:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	__doprnt
psect	text419,local,class=CODE,delta=2
global __ptext419
__ptext419:

;; *************** function __doprnt *****************
;; Defined at:
;;		line 455 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  pb              1    wreg     PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  f               1   12[COMMON] PTR const unsigned char 
;;		 -> STR_8(3), STR_6(3), STR_4(3), STR_3(4), 
;;		 -> STR_2(4), STR_1(4), 
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
psect	text419
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
	
l3266:	
	goto	l3328
	line	542
	
l3268:	
	movf	(__doprnt@c),w
	xorlw	025h
	skipnz
	goto	u671
	goto	u670
u671:
	goto	l3278
u670:
	line	545
	
l3270:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u681
	goto	u680
u681:
	goto	l3274
u680:
	
l3272:	
	movf	(__doprnt@c),w
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l3328
	
l3274:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c),w
	movwf	indf
	
l3276:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	goto	l3328
	line	552
	
l3278:	
	clrf	(__doprnt@flag)
	line	638
	
l3282:	
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
	goto	l3330
	xorlw	100^0	; case 100
	skipnz
	goto	l3284
	xorlw	105^100	; case 105
	skipnz
	goto	l3284
	goto	l3328
	opt asmopt_on

	line	1254
	
l3284:	
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
	
l3286:	
	btfss	(__doprnt@_val+1),7
	goto	u691
	goto	u690
u691:
	goto	l3292
u690:
	line	1257
	
l3288:	
	movlw	(03h)
	iorwf	(__doprnt@flag),f
	line	1258
	
l3290:	
	comf	(__doprnt@_val),f
	comf	(__doprnt@_val+1),f
	incf	(__doprnt@_val),f
	skipnz
	incf	(__doprnt@_val+1),f
	line	1300
	
l3292:	
	clrf	(__doprnt@c)
	incf	(__doprnt@c),f
	line	1301
	
l3296:	
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
	goto	u705
	movf	0+(??__doprnt+0)+0,w
	subwf	(__doprnt@_val),w
u705:
	skipnc
	goto	u701
	goto	u700
u701:
	goto	l3300
u700:
	goto	l3304
	line	1300
	
l3300:	
	incf	(__doprnt@c),f
	
l3302:	
	movf	(__doprnt@c),w
	xorlw	05h
	skipz
	goto	u711
	goto	u710
u711:
	goto	l3296
u710:
	line	1433
	
l3304:	
	movf	(__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u721
	goto	u720
u721:
	goto	l3314
u720:
	line	1434
	
l3306:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u731
	goto	u730
u731:
	goto	l3310
u730:
	
l3308:	
	movlw	(02Dh)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l3314
	
l3310:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l3312:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1467
	
l3314:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@c),w
	movwf	(__doprnt@prec)
	line	1469
	goto	l3326
	line	1484
	
l3316:	
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
	
l3318:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u741
	goto	u740
u741:
	goto	l3322
u740:
	
l3320:	
	movf	(__doprnt@c),w
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l3326
	
l3322:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c),w
	movwf	indf
	
l3324:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1469
	
l3326:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(__doprnt@prec),f
	incf	((__doprnt@prec)),w
	skipz
	goto	u751
	goto	u750
u751:
	goto	l3316
u750:
	line	540
	
l3328:	
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__doprnt@c)
	movf	((__doprnt@c)),f
	skipz
	goto	u761
	goto	u760
u761:
	goto	l3268
u760:
	line	1532
	
l3330:	
	clrf	(?__doprnt)
	clrf	(?__doprnt+1)
	line	1533
	
l1179:	
	return
	opt stack 0
GLOBAL	__end_of__doprnt
	__end_of__doprnt:
;; =============== function __doprnt ends ============

	signat	__doprnt,12410
	global	_pause
psect	text420,local,class=CODE,delta=2
global __ptext420
__ptext420:

;; *************** function _pause *****************
;; Defined at:
;;		line 260 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
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
;;		_PWM
;;		_lcd_write
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text420
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	line	260
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 5
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	262
	
l3258:	
;DATACOM.c: 261: unsigned short x;
;DATACOM.c: 262: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l3264
	line	264
	
l3260:	
;DATACOM.c: 263: {
;DATACOM.c: 264: msecbase();
	fcall	_msecbase
	line	262
	
l3262:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l3264:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u665
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u665:
	skipnc
	goto	u661
	goto	u660
u661:
	goto	l3260
u660:
	line	266
	
l1141:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	_atoi
psect	text421,local,class=CODE,delta=2
global __ptext421
__ptext421:

;; *************** function _atoi *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\atoi.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> PA2(5), PA1(5), PA(4), 
;; Auto vars:     Size  Location     Type
;;  s               1   13[COMMON] PTR const unsigned char 
;;		 -> PA2(5), PA1(5), PA(4), 
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
psect	text421
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
	
l3224:	
	goto	l3228
	line	11
	
l3226:	
	incf	(atoi@s),f
	line	10
	
l3228:	
	movf	(atoi@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	020h
	skipnz
	goto	u601
	goto	u600
u601:
	goto	l3226
u600:
	
l3230:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	09h
	skipnz
	goto	u611
	goto	u610
u611:
	goto	l3226
u610:
	line	12
	
l3232:	
	clrf	(atoi@a)
	clrf	(atoi@a+1)
	line	13
	clrf	(atoi@sign)
	line	14
	
l3234:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u621
	goto	u620
u621:
	goto	l3238
u620:
	line	15
	
l3236:	
	incf	(atoi@sign),f
	line	16
	incf	(atoi@s),f
	line	17
	goto	l3246
	
l3238:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Bh
	skipz
	goto	u631
	goto	u630
u631:
	goto	l3246
u630:
	line	18
	
l3240:	
	incf	(atoi@s),f
	goto	l3246
	line	20
	
l3242:	
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
	goto	l3240
	line	19
	
l3246:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_isdigit
	btfsc	status,0
	goto	u641
	goto	u640
u641:
	goto	l3242
u640:
	line	21
	
l3248:	
	movf	(atoi@sign),w
	skipz
	goto	u650
	goto	l3254
u650:
	line	22
	
l3250:	
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
	goto	l2174
	line	23
	
l3254:	
	movf	(atoi@a+1),w
	movwf	(?_atoi+1)
	movf	(atoi@a),w
	movwf	(?_atoi)
	line	24
	
l2174:	
	return
	opt stack 0
GLOBAL	__end_of_atoi
	__end_of_atoi:
;; =============== function _atoi ends ============

	signat	_atoi,4218
	global	___lwmod
psect	text422,local,class=CODE,delta=2
global __ptext422
__ptext422:

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
psect	text422
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3204:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u561
	goto	u560
u561:
	goto	l3220
u560:
	line	9
	
l3206:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l3210
	line	11
	
l3208:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l3210:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u571
	goto	u570
u571:
	goto	l3208
u570:
	line	15
	
l3212:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u585
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u585:
	skipc
	goto	u581
	goto	u580
u581:
	goto	l3216
u580:
	line	16
	
l3214:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l3216:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l3218:	
	decfsz	(___lwmod@counter),f
	goto	u591
	goto	u590
u591:
	goto	l3212
u590:
	line	20
	
l3220:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l2227:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text423,local,class=CODE,delta=2
global __ptext423
__ptext423:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text423
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3178:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3180:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u521
	goto	u520
u521:
	goto	l3200
u520:
	line	11
	
l3182:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l3186
	line	13
	
l3184:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l3186:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u531
	goto	u530
u531:
	goto	l3184
u530:
	line	17
	
l3188:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l3190:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u545
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u545:
	skipc
	goto	u541
	goto	u540
u541:
	goto	l3196
u540:
	line	19
	
l3192:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3194:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3196:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3198:	
	decfsz	(___lwdiv@counter),f
	goto	u551
	goto	u550
u551:
	goto	l3188
u550:
	line	25
	
l3200:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2217:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text424,local,class=CODE,delta=2
global __ptext424
__ptext424:

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
psect	text424
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3162:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l3164:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u501
	goto	u500
u501:
	goto	l3168
u500:
	line	8
	
l3166:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l3168:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l3170:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l3172:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u511
	goto	u510
u511:
	goto	l3164
u510:
	line	12
	
l3174:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2207:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text425,local,class=CODE,delta=2
global __ptext425
__ptext425:

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
psect	text425
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 6
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l3150:	
	clrf	(_isdigit$2431)
	
l3152:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u481
	goto	u480
u481:
	goto	l3158
u480:
	
l3154:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u491
	goto	u490
u491:
	goto	l3158
u490:
	
l3156:	
	clrf	(_isdigit$2431)
	incf	(_isdigit$2431),f
	
l3158:	
	rrf	(_isdigit$2431),w
	
	line	15
	
l2179:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_msecbase
psect	text426,local,class=CODE,delta=2
global __ptext426
__ptext426:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 268 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
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
psect	text426
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	line	268
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 5
; Regs used in _msecbase: [wreg]
	line	269
	
l3148:	
;DATACOM.c: 269: OPTION_REG = 0b11010001;
	movlw	(0D1h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	270
;DATACOM.c: 270: TMR0 = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	271
;DATACOM.c: 271: TMR0 = 0x8E;
	movlw	(08Eh)
	movwf	(1)	;volatile
	line	272
;DATACOM.c: 272: while(!T0IF);
	
l1144:	
	btfss	(90/8),(90)&7
	goto	u471
	goto	u470
u471:
	goto	l1144
u470:
	
l1146:	
	line	273
;DATACOM.c: 273: T0IF = 0;
	bcf	(90/8),(90)&7
	line	274
	
l1147:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_ADC
psect	text427,local,class=CODE,delta=2
global __ptext427
__ptext427:

;; *************** function _ADC *****************
;; Defined at:
;;		line 174 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text427
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	line	174
	global	__size_of_ADC
	__size_of_ADC	equ	__end_of_ADC-_ADC
	
_ADC:	
	opt	stack 7
; Regs used in _ADC: [wreg+status,2+status,0]
	line	175
	
l3132:	
;DATACOM.c: 175: ADCON0=0xD5;
	movlw	(0D5h)
	movwf	(31)	;volatile
	line	176
	
l3134:	
;DATACOM.c: 176: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	177
;DATACOM.c: 177: while(GO_DONE);
	
l1105:	
	btfsc	(249/8),(249)&7
	goto	u431
	goto	u430
u431:
	goto	l1105
u430:
	line	178
	
l3136:	
;DATACOM.c: 178: vadc1=(ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_vadc1)
	clrf	(_vadc1+1)
	
l3138:	
	clrc
	rlf	(_vadc1),f
	rlf	(_vadc1+1),f
	clrc
	rlf	(_vadc1),f
	rlf	(_vadc1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_ADC+0)+0
	movlw	06h
u445:
	clrc
	rrf	(??_ADC+0)+0,f
	addlw	-1
	skipz
	goto	u445
	movf	0+(??_ADC+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(_vadc1),f
	line	180
	
l3140:	
;DATACOM.c: 180: ADCON0=0xD9;
	movlw	(0D9h)
	movwf	(31)	;volatile
	line	181
	
l3142:	
;DATACOM.c: 181: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	182
;DATACOM.c: 182: while(GO_DONE);
	
l1108:	
	btfsc	(249/8),(249)&7
	goto	u451
	goto	u450
u451:
	goto	l1108
u450:
	line	183
	
l3144:	
;DATACOM.c: 183: vadc2=(ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_vadc2)
	clrf	(_vadc2+1)
	
l3146:	
	clrc
	rlf	(_vadc2),f
	rlf	(_vadc2+1),f
	clrc
	rlf	(_vadc2),f
	rlf	(_vadc2+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_ADC+0)+0
	movlw	06h
u465:
	clrc
	rrf	(??_ADC+0)+0,f
	addlw	-1
	skipz
	goto	u465
	movf	0+(??_ADC+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(_vadc2),f
	line	185
	
l1111:	
	return
	opt stack 0
GLOBAL	__end_of_ADC
	__end_of_ADC:
;; =============== function _ADC ends ============

	signat	_ADC,88
	global	_init_comms
psect	text428,local,class=CODE,delta=2
global __ptext428
__ptext428:

;; *************** function _init_comms *****************
;; Defined at:
;;		line 50 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
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
psect	text428
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	line	50
	global	__size_of_init_comms
	__size_of_init_comms	equ	__end_of_init_comms-_init_comms
	
_init_comms:	
	opt	stack 7
; Regs used in _init_comms: [wreg+status,2]
	line	51
	
l3126:	
;DATACOM.c: 51: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	52
;DATACOM.c: 52: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	53
	
l3128:	
;DATACOM.c: 53: SPBRG = 0x19;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	55
;DATACOM.c: 55: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	56
;DATACOM.c: 56: TXSTA = 0x26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	57
	
l3130:	
;DATACOM.c: 57: BAUDCTL = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	58
	
l1085:	
	return
	opt stack 0
GLOBAL	__end_of_init_comms
	__end_of_init_comms:
;; =============== function _init_comms ends ============

	signat	_init_comms,88
	global	_getch
psect	text429,local,class=CODE,delta=2
global __ptext429
__ptext429:

;; *************** function _getch *****************
;; Defined at:
;;		line 43 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
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
psect	text429
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	line	43
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 7
; Regs used in _getch: [wreg]
	line	45
	
l3120:	
	line	46
;DATACOM.c: 45: while(!RCIF)
	
l1079:	
	line	45
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u421
	goto	u420
u421:
	goto	l1079
u420:
	line	47
	
l3122:	
;DATACOM.c: 47: return RCREG;
	movf	(26),w	;volatile
	line	48
	
l1082:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_putch
psect	text430,local,class=CODE,delta=2
global __ptext430
__ptext430:

;; *************** function _putch *****************
;; Defined at:
;;		line 36 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
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
psect	text430
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\DATACOM\DATACOM.c"
	line	36
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 5
; Regs used in _putch: [wreg]
	line	38
	
l3116:	
	line	39
;DATACOM.c: 38: while(!TXIF)
	
l1073:	
	line	38
	btfss	(100/8),(100)&7
	goto	u411
	goto	u410
u411:
	goto	l1073
u410:
	line	40
	
l3118:	
;DATACOM.c: 40: TXREG = byte;
	movf	(putch@byte),w
	movwf	(25)	;volatile
	line	41
	
l1076:	
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
