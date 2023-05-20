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
# 7 "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF& 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 8 "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_init_comms
	FNCALL	_main,_getch
	FNCALL	_main,_ADC
	FNCALL	_main,_PWM
	FNCALL	_main,_printf
	FNCALL	_lcd_init,_pause
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_init,_lcd_clear
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_pause
	FNCALL	_lcd_write,_pause
	FNCALL	_PWM,_pause
	FNCALL	_ADC,_pause
	FNCALL	_pause,_msecbase
	FNCALL	_printf,_putch
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNROOT	_main
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
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
	global	_pwm1
	global	_pwm2
	global	_vadc1
	global	_vadc2
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
	
STR_1:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	strings
STR_2	equ	STR_1+0
	file	"GRAFPWM.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_pwm1:
       ds      2

_pwm2:
       ds      2

_vadc1:
       ds      2

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
	global	?_PWM
?_PWM:	; 0 bytes @ 0x0
	global	?_pause
?_pause:	; 0 bytes @ 0x0
	global	?_msecbase
?_msecbase:	; 0 bytes @ 0x0
	global	??_msecbase
??_msecbase:	; 0 bytes @ 0x0
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
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	global	pause@usvalue
pause@usvalue:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_pause
??_pause:	; 0 bytes @ 0x2
	global	pause@x
pause@x:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??_ADC
??_ADC:	; 0 bytes @ 0x4
	global	??_PWM
??_PWM:	; 0 bytes @ 0x4
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x5
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x7
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	ds	2
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0xC
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_printf
??_printf:	; 0 bytes @ 0x0
	ds	2
	global	printf@ap
printf@ap:	; 1 bytes @ 0x2
	ds	1
	global	printf@flag
printf@flag:	; 1 bytes @ 0x3
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x4
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x5
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0x6
	ds	4
	global	printf@c
printf@c:	; 1 bytes @ 0xA
	ds	1
;;Data sizes: Strings 4, constant 10, data 0, bss 8, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     11      19
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 4
;;		 -> STR_2(CODE[4]), STR_1(CODE[4]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(COMMON[2]), 
;;
;; S1851$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_printf
;;   _lcd_init->_lcd_write
;;   _lcd_clear->_lcd_write
;;   _lcd_write->_pause
;;   _PWM->_pause
;;   _ADC->_pause
;;   _printf->___lwmod
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_printf
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
;; (0) _main                                                 0     0      0    1116
;;                           _lcd_init
;;                         _init_comms
;;                              _getch
;;                                _ADC
;;                                _PWM
;;                             _printf
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
;; (1) _PWM                                                  2     2      0      46
;;                                              4 COMMON     2     2      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _ADC                                                  1     1      0      46
;;                                              4 COMMON     1     1      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (2) _pause                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              13    11      2     729
;;                                             12 COMMON     2     0      2
;;                                              0 BANK0     11    11      0
;;                              _putch
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              5     1      4     159
;;                                              7 COMMON     5     1      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     162
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (3) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _init_comms                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _getch                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                1     1      0      22
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
;;   _getch
;;   _ADC
;;     _pause
;;       _msecbase
;;   _PWM
;;     _pause
;;       _msecbase
;;   _printf
;;     _putch
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
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
;;ABS                  0      0      21       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      B      13       5       23.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      26      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 72 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
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
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_init
;;		_init_comms
;;		_getch
;;		_ADC
;;		_PWM
;;		_printf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
	line	72
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	74
	
l2999:	
;GRAFPWM.c: 74: ANSEL = 0x60;
	movlw	(060h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	75
	
l3001:	
;GRAFPWM.c: 75: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	76
	
l3003:	
;GRAFPWM.c: 76: TRISB = 0xFF;
	movlw	(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	77
;GRAFPWM.c: 77: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	79
;GRAFPWM.c: 79: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	80
;GRAFPWM.c: 80: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	81
	
l3005:	
;GRAFPWM.c: 81: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	82
	
l3007:	
;GRAFPWM.c: 82: T2CON = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	83
	
l3009:	
;GRAFPWM.c: 83: PR2 = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	85
	
l3011:	
;GRAFPWM.c: 85: CCPR1L = 0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	86
	
l3013:	
;GRAFPWM.c: 86: CCP1CON = 0x0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	88
	
l3015:	
;GRAFPWM.c: 88: lcd_init();
	fcall	_lcd_init
	line	90
	
l3017:	
;GRAFPWM.c: 90: init_comms();
	fcall	_init_comms
	line	92
	
l3019:	
;GRAFPWM.c: 92: ADFM = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1279/8)^080h,(1279)&7
	line	96
	
l3021:	
;GRAFPWM.c: 96: getch();
	fcall	_getch
	line	98
	
l3023:	
;GRAFPWM.c: 98: ADC();
	fcall	_ADC
	line	100
	
l3025:	
;GRAFPWM.c: 100: PWM();
	fcall	_PWM
	line	102
	
l3027:	
;GRAFPWM.c: 102: printf("%d ",pwm1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_pwm1+1),w
	movwf	(?_printf+1)
	movf	(_pwm1),w
	movwf	(?_printf)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	103
	
l3029:	
;GRAFPWM.c: 103: printf("%d ",pwm2);
	movf	(_pwm2+1),w
	movwf	(?_printf+1)
	movf	(_pwm2),w
	movwf	(?_printf)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	goto	l3021
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	106
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text279,local,class=CODE,delta=2
global __ptext279
__ptext279:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 172 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
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
psect	text279
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
	line	172
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	175
	
l2959:	
	line	177
	
l2961:	
;GRAFPWM.c: 177: RC3 = 0;
	bcf	(59/8),(59)&7
	line	178
	
l2963:	
;GRAFPWM.c: 178: RC0 = 0;
	bcf	(56/8),(56)&7
	line	179
	
l2965:	
;GRAFPWM.c: 179: RC4 = 0;
	bcf	(60/8),(60)&7
	line	181
	
l2967:	
;GRAFPWM.c: 181: pause(15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	182
	
l2969:	
;GRAFPWM.c: 182: PORTD = init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	183
	
l2971:	
;GRAFPWM.c: 183: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l2973:	
	bcf	(56/8),(56)&7
	line	184
;GRAFPWM.c: 184: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	185
	
l2975:	
;GRAFPWM.c: 185: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l2977:	
	bcf	(56/8),(56)&7
	line	186
;GRAFPWM.c: 186: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	187
	
l2979:	
;GRAFPWM.c: 187: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l2981:	
	bcf	(56/8),(56)&7
	line	188
;GRAFPWM.c: 188: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	189
	
l2983:	
;GRAFPWM.c: 189: PORTD= 2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	190
	
l2985:	
;GRAFPWM.c: 190: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l2987:	
	bcf	(56/8),(56)&7
	line	192
	
l2989:	
;GRAFPWM.c: 192: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	193
	
l2991:	
;GRAFPWM.c: 193: lcd_write(0x0C);
	movlw	(0Ch)
	fcall	_lcd_write
	line	194
	
l2993:	
;GRAFPWM.c: 194: lcd_write(0x0F);
	movlw	(0Fh)
	fcall	_lcd_write
	line	195
	
l2995:	
;GRAFPWM.c: 195: lcd_clear();
	fcall	_lcd_clear
	line	196
	
l2997:	
;GRAFPWM.c: 196: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	197
	
l1100:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_clear
psect	text280,local,class=CODE,delta=2
global __ptext280
__ptext280:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 150 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
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
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text280
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
	line	150
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 3
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	151
	
l2955:	
;GRAFPWM.c: 151: RC3 = 0;
	bcf	(59/8),(59)&7
	line	152
	
l2957:	
;GRAFPWM.c: 152: lcd_write(0x01);
	movlw	(01h)
	fcall	_lcd_write
	line	153
;GRAFPWM.c: 153: pause (2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	154
	
l1085:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_write
psect	text281,local,class=CODE,delta=2
global __ptext281
__ptext281:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 142 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 11F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
psect	text281
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
	line	142
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 3
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	143
	
l2941:	
;GRAFPWM.c: 143: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	144
	
l2943:	
;GRAFPWM.c: 144: PORTD = ( ( c >> 4) & 0x0F);
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	145
	
l2945:	
;GRAFPWM.c: 145: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l2947:	
	bcf	(56/8),(56)&7
	line	146
	
l2949:	
;GRAFPWM.c: 146: PORTD = (c & 0x0F);
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	147
	
l2951:	
;GRAFPWM.c: 147: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l2953:	
	bcf	(56/8),(56)&7
	line	148
	
l1082:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_PWM
psect	text282,local,class=CODE,delta=2
global __ptext282
__ptext282:

;; *************** function _PWM *****************
;; Defined at:
;;		line 126 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 11F/0
;;		On exit  : 11F/0
;;		Unchanged: FFE80/0
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
psect	text282
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
	line	126
	global	__size_of_PWM
	__size_of_PWM	equ	__end_of_PWM-_PWM
	
_PWM:	
	opt	stack 5
; Regs used in _PWM: [wreg+status,2+status,0+pclath+cstack]
	line	127
	
l2923:	
;GRAFPWM.c: 127: ADRESH=pwm1>>2;
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
	line	128
	
l2925:	
;GRAFPWM.c: 128: ADRESL=pwm1<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	129
	
l2927:	
;GRAFPWM.c: 129: CCPR1L=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(21)	;volatile
	line	130
	
l2929:	
;GRAFPWM.c: 130: CCP1CON=0X0C|(ADRESL>>2);
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
	line	131
	
l2931:	
;GRAFPWM.c: 131: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	133
	
l2933:	
;GRAFPWM.c: 133: ADRESH=pwm2>>2;
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
	line	134
	
l2935:	
;GRAFPWM.c: 134: ADRESL=pwm2<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	135
	
l2937:	
;GRAFPWM.c: 135: CCPR2L=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(27)	;volatile
	line	136
	
l2939:	
;GRAFPWM.c: 136: CCP2CON=0X0C|(ADRESL>>2);
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
	line	137
;GRAFPWM.c: 137: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	139
	
l1079:	
	return
	opt stack 0
GLOBAL	__end_of_PWM
	__end_of_PWM:
;; =============== function _PWM ends ============

	signat	_PWM,88
	global	_ADC
psect	text283,local,class=CODE,delta=2
global __ptext283
__ptext283:

;; *************** function _ADC *****************
;; Defined at:
;;		line 109 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pause
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text283
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
	line	109
	global	__size_of_ADC
	__size_of_ADC	equ	__end_of_ADC-_ADC
	
_ADC:	
	opt	stack 5
; Regs used in _ADC: [wreg+status,2+status,0+pclath+cstack]
	line	110
	
l2899:	
;GRAFPWM.c: 110: ADCON0=0xD5;
	movlw	(0D5h)
	movwf	(31)	;volatile
	line	111
	
l2901:	
;GRAFPWM.c: 111: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	112
;GRAFPWM.c: 112: while(GO_DONE);
	
l1070:	
	btfsc	(249/8),(249)&7
	goto	u431
	goto	u430
u431:
	goto	l1070
u430:
	line	113
	
l2903:	
;GRAFPWM.c: 113: vadc1=(ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_vadc1)
	clrf	(_vadc1+1)
	
l2905:	
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
	line	114
	
l2907:	
;GRAFPWM.c: 114: pwm1=vadc1;
	movf	(_vadc1+1),w
	movwf	(_pwm1+1)
	movf	(_vadc1),w
	movwf	(_pwm1)
	line	115
	
l2909:	
;GRAFPWM.c: 115: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	117
	
l2911:	
;GRAFPWM.c: 117: ADCON0=0xD9;
	movlw	(0D9h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	118
	
l2913:	
;GRAFPWM.c: 118: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	119
;GRAFPWM.c: 119: while(GO_DONE);
	
l1073:	
	btfsc	(249/8),(249)&7
	goto	u451
	goto	u450
u451:
	goto	l1073
u450:
	line	120
	
l2915:	
;GRAFPWM.c: 120: vadc2=(ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_vadc2)
	clrf	(_vadc2+1)
	
l2917:	
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
	line	121
	
l2919:	
;GRAFPWM.c: 121: pwm2=vadc2;
	movf	(_vadc2+1),w
	movwf	(_pwm2+1)
	movf	(_vadc2),w
	movwf	(_pwm2)
	line	122
	
l2921:	
;GRAFPWM.c: 122: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	124
	
l1076:	
	return
	opt stack 0
GLOBAL	__end_of_ADC
	__end_of_ADC:
;; =============== function _ADC ends ============

	signat	_ADC,88
	global	_pause
psect	text284,local,class=CODE,delta=2
global __ptext284
__ptext284:

;; *************** function _pause *****************
;; Defined at:
;;		line 199 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
;; Parameters:    Size  Location     Type
;;  usvalue         2    0[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  x               2    2[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 11F/0
;;		On exit  : 11F/0
;;		Unchanged: FFE80/0
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
psect	text284
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
	line	199
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 5
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	201
	
l2891:	
;GRAFPWM.c: 200: unsigned short x;
;GRAFPWM.c: 201: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l2897
	line	203
	
l2893:	
;GRAFPWM.c: 202: {
;GRAFPWM.c: 203: msecbase();
	fcall	_msecbase
	line	201
	
l2895:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l2897:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u425
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u425:
	skipnc
	goto	u421
	goto	u420
u421:
	goto	l2893
u420:
	line	205
	
l1106:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	_printf
psect	text285,local,class=CODE,delta=2
global __ptext285
__ptext285:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_2(4), STR_1(4), 
;; Auto vars:     Size  Location     Type
;;  f               1    4[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(4), STR_1(4), 
;;  _val            4    6[BANK0 ] struct .
;;  c               1   10[BANK0 ] char 
;;  prec            1    5[BANK0 ] char 
;;  flag            1    3[BANK0 ] unsigned char 
;;  ap              1    2[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   12[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         2      11       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_putch
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text285
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 6
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	537
	movwf	(printf@f)
	
l2843:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	540
	goto	l2889
	line	542
	
l2845:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u351
	goto	u350
u351:
	goto	l2849
u350:
	line	545
	
l2847:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l2889
	line	552
	
l2849:	
	clrf	(printf@flag)
	line	638
	
l2853:	
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
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
	goto	l1142
	xorlw	100^0	; case 100
	skipnz
	goto	l2855
	xorlw	105^100	; case 105
	skipnz
	goto	l2855
	goto	l2889
	opt asmopt_on

	line	1254
	
l2855:	
	movf	(printf@ap),w
	movwf	fsr0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l2857:	
	incf	(printf@ap),f
	incf	(printf@ap),f
	line	1256
	
l2859:	
	btfss	(printf@_val+1),7
	goto	u361
	goto	u360
u361:
	goto	l2865
u360:
	line	1257
	
l2861:	
	movlw	(03h)
	iorwf	(printf@flag),f
	line	1258
	
l2863:	
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	line	1300
	
l2865:	
	clrf	(printf@c)
	incf	(printf@c),f
	line	1301
	
l2869:	
	clrc
	rlf	(printf@c),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+0)+0
	fcall	stringdir
	movwf	(??_printf+0)+0+1
	movf	1+(??_printf+0)+0,w
	subwf	(printf@_val+1),w
	skipz
	goto	u375
	movf	0+(??_printf+0)+0,w
	subwf	(printf@_val),w
u375:
	skipnc
	goto	u371
	goto	u370
u371:
	goto	l2873
u370:
	goto	l2877
	line	1300
	
l2873:	
	incf	(printf@c),f
	
l2875:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u381
	goto	u380
u381:
	goto	l2869
u380:
	line	1433
	
l2877:	
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u391
	goto	u390
u391:
	goto	l2881
u390:
	line	1434
	
l2879:	
	movlw	(02Dh)
	fcall	_putch
	line	1467
	
l2881:	
	movf	(printf@c),w
	movwf	(printf@prec)
	line	1469
	goto	l2887
	line	1484
	
l2883:	
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	clrc
	rlf	(printf@prec),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
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
	
l2885:	
	movf	(printf@c),w
	fcall	_putch
	line	1469
	
l2887:	
	decf	(printf@prec),f
	incf	((printf@prec)),w
	skipz
	goto	u401
	goto	u400
u401:
	goto	l2883
u400:
	line	540
	
l2889:	
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u411
	goto	u410
u411:
	goto	l2845
u410:
	line	1533
	
l1142:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	___lwmod
psect	text286,local,class=CODE,delta=2
global __ptext286
__ptext286:

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
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
psect	text286
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2823:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u311
	goto	u310
u311:
	goto	l2839
u310:
	line	9
	
l2825:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l2829
	line	11
	
l2827:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l2829:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u321
	goto	u320
u321:
	goto	l2827
u320:
	line	15
	
l2831:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u335
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u335:
	skipc
	goto	u331
	goto	u330
u331:
	goto	l2835
u330:
	line	16
	
l2833:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l2835:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l2837:	
	decfsz	(___lwmod@counter),f
	goto	u341
	goto	u340
u341:
	goto	l2831
u340:
	line	20
	
l2839:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l2154:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text287,local,class=CODE,delta=2
global __ptext287
__ptext287:

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
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
psect	text287
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2797:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l2799:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u271
	goto	u270
u271:
	goto	l2819
u270:
	line	11
	
l2801:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l2805
	line	13
	
l2803:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l2805:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u281
	goto	u280
u281:
	goto	l2803
u280:
	line	17
	
l2807:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l2809:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u295
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u295:
	skipc
	goto	u291
	goto	u290
u291:
	goto	l2815
u290:
	line	19
	
l2811:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2813:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l2815:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l2817:	
	decfsz	(___lwdiv@counter),f
	goto	u301
	goto	u300
u301:
	goto	l2807
u300:
	line	25
	
l2819:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2144:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_msecbase
psect	text288,local,class=CODE,delta=2
global __ptext288
__ptext288:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 207 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 11F/0
;;		On exit  : 11F/0
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
;;		_pause
;; This function uses a non-reentrant model
;;
psect	text288
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
	line	207
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 5
; Regs used in _msecbase: [wreg]
	line	208
	
l2795:	
;GRAFPWM.c: 208: OPTION_REG = 0b11010001;
	movlw	(0D1h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	209
;GRAFPWM.c: 209: TMR0 = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	210
;GRAFPWM.c: 210: TMR0 = 0x8E;
	movlw	(08Eh)
	movwf	(1)	;volatile
	line	211
;GRAFPWM.c: 211: while(!T0IF);
	
l1109:	
	btfss	(90/8),(90)&7
	goto	u261
	goto	u260
u261:
	goto	l1109
u260:
	
l1111:	
	line	212
;GRAFPWM.c: 212: T0IF = 0;
	bcf	(90/8),(90)&7
	line	213
	
l1112:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_init_comms
psect	text289,local,class=CODE,delta=2
global __ptext289
__ptext289:

;; *************** function _init_comms *****************
;; Defined at:
;;		line 50 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
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
psect	text289
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
	line	50
	global	__size_of_init_comms
	__size_of_init_comms	equ	__end_of_init_comms-_init_comms
	
_init_comms:	
	opt	stack 7
; Regs used in _init_comms: [wreg+status,2]
	line	51
	
l2789:	
;GRAFPWM.c: 51: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	52
;GRAFPWM.c: 52: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	53
	
l2791:	
;GRAFPWM.c: 53: SPBRG = 0x19;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	55
;GRAFPWM.c: 55: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	56
;GRAFPWM.c: 56: TXSTA = 0x26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	57
	
l2793:	
;GRAFPWM.c: 57: BAUDCTL = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	58
	
l1061:	
	return
	opt stack 0
GLOBAL	__end_of_init_comms
	__end_of_init_comms:
;; =============== function _init_comms ends ============

	signat	_init_comms,88
	global	_getch
psect	text290,local,class=CODE,delta=2
global __ptext290
__ptext290:

;; *************** function _getch *****************
;; Defined at:
;;		line 43 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 15F/20
;;		On exit  : 17F/0
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
psect	text290
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
	line	43
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 7
; Regs used in _getch: [wreg]
	line	45
	
l2783:	
	line	46
;GRAFPWM.c: 45: while(!RCIF)
	
l1055:	
	line	45
	bcf	status, 5	;RP0=0, select bank0
	btfss	(101/8),(101)&7
	goto	u251
	goto	u250
u251:
	goto	l1055
u250:
	line	47
	
l2785:	
;GRAFPWM.c: 47: return RCREG;
;	Return value of _getch is never used
	movf	(26),w	;volatile
	line	48
	
l1058:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_putch
psect	text291,local,class=CODE,delta=2
global __ptext291
__ptext291:

;; *************** function _putch *****************
;; Defined at:
;;		line 36 in file "C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text291
	file	"C:\Users\Jorge\OneDrive\Escritorio\NEW GEN CODES\GRAFPWM\GRAFPWM.c"
	line	36
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 6
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movwf	(putch@byte)
	line	38
	
l2779:	
	line	39
;GRAFPWM.c: 38: while(!TXIF)
	
l1049:	
	line	38
	btfss	(100/8),(100)&7
	goto	u241
	goto	u240
u241:
	goto	l1049
u240:
	line	40
	
l2781:	
;GRAFPWM.c: 40: TXREG = byte;
	movf	(putch@byte),w
	movwf	(25)	;volatile
	line	41
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
psect	text292,local,class=CODE,delta=2
global __ptext292
__ptext292:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
