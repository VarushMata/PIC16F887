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
# 7 "C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF& 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 8 "C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_init_comms
	FNCALL	_main,_getch
	FNCALL	_main,_ADC
	FNCALL	_main,_printf
	FNCALL	_main,_pause
	FNCALL	_main,_PWM
	FNCALL	_lcd_init,_pause
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_init,_lcd_clear
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_pause
	FNCALL	_lcd_write,_pause
	FNCALL	_PWM,_pause
	FNCALL	_ADC,___lwtoft
	FNCALL	_ADC,___ftmul
	FNCALL	_ADC,_pause
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
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
	global	_pwm3
	global	_vadc1
	global	_vadc2
	global	_vadc3
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
STR_3	equ	STR_1+0
	file	"COMADC.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_pwm1:
       ds      3

_pwm2:
       ds      3

_pwm3:
       ds      3

_vadc1:
       ds      2

_vadc2:
       ds      2

_vadc3:
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
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
	clrf	((__pbssBANK0)+12)&07Fh
	clrf	((__pbssBANK0)+13)&07Fh
	clrf	((__pbssBANK0)+14)&07Fh
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
	global	?_pause
?_pause:	; 0 bytes @ 0x0
	global	?_PWM
?_PWM:	; 0 bytes @ 0x0
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
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	global	pause@usvalue
pause@usvalue:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	2
	global	??_pause
??_pause:	; 0 bytes @ 0x2
	global	pause@x
pause@x:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??_PWM
??_PWM:	; 0 bytes @ 0x4
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
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
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x8
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	ds	2
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xB
	global	??___lwtoft
??___lwtoft:	; 0 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xB
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
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x0
	ds	2
	global	printf@ap
printf@ap:	; 1 bytes @ 0x2
	ds	1
	global	printf@flag
printf@flag:	; 1 bytes @ 0x3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x3
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x4
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x4
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x5
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0x6
	ds	1
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x7
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x8
	ds	1
	global	??_ADC
??_ADC:	; 0 bytes @ 0x9
	ds	1
	global	printf@c
printf@c:	; 1 bytes @ 0xA
	ds	1
;;Data sizes: Strings 4, constant 10, data 0, bss 15, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     11      26
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___lwtoft	float  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 4
;;		 -> STR_3(CODE[4]), STR_2(CODE[4]), STR_1(CODE[4]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(COMMON[2]), 
;;
;; S1852$_cp	PTR const unsigned char  size(1) Largest target is 0
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
;;   _ADC->___ftmul
;;   ___lwtoft->___ftpack
;;   ___ftmul->___ftpack
;;   _printf->___lwmod
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_printf
;;   _ADC->___ftmul
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
;; (0) _main                                                 0     0      0    1928
;;                           _lcd_init
;;                         _init_comms
;;                              _getch
;;                                _ADC
;;                             _printf
;;                              _pause
;;                                _PWM
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
;; (1) _ADC                                                  1     1      0     812
;;                                              9 BANK0      1     1      0
;;                           ___lwtoft
;;                            ___ftmul
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (2) ___lwtoft                                             3     0      3     231
;;                                              8 COMMON     3     0      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             15     9      6     535
;;                                              8 COMMON     6     0      6
;;                                              0 BANK0      9     9      0
;;                           ___ftpack
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
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
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
;;     ___lwtoft
;;       ___ftpack
;;     ___ftmul
;;       ___ftpack
;;     _pause
;;       _msecbase
;;   _printf
;;     _putch
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
;;   _pause
;;     _msecbase
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
;;ABS                  0      0      28       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      B      1A       5       32.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      2D      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 71 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
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
;;		On exit  : 11F/0
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
;;		_printf
;;		_pause
;;		_PWM
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
	line	71
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	73
	
l3314:	
;COMADC.c: 73: ANSEL = 0x60;
	movlw	(060h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	74
	
l3316:	
;COMADC.c: 74: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	75
	
l3318:	
;COMADC.c: 75: TRISB = 0xFF;
	movlw	(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	76
;COMADC.c: 76: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	78
;COMADC.c: 78: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	79
;COMADC.c: 79: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	80
	
l3320:	
;COMADC.c: 80: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	81
	
l3322:	
;COMADC.c: 81: T2CON = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	82
	
l3324:	
;COMADC.c: 82: PR2 = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	84
	
l3326:	
;COMADC.c: 84: CCPR1L = 0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	85
	
l3328:	
;COMADC.c: 85: CCP1CON = 0x0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	87
	
l3330:	
;COMADC.c: 87: lcd_init();
	fcall	_lcd_init
	line	89
	
l3332:	
;COMADC.c: 89: init_comms();
	fcall	_init_comms
	line	91
	
l3334:	
;COMADC.c: 91: ADFM = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1279/8)^080h,(1279)&7
	line	95
	
l3336:	
;COMADC.c: 95: getch();
	fcall	_getch
	line	96
	
l3338:	
;COMADC.c: 96: ADC();
	fcall	_ADC
	line	97
	
l3340:	
;COMADC.c: 97: printf("%d ",vadc1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vadc1+1),w
	movwf	(?_printf+1)
	movf	(_vadc1),w
	movwf	(?_printf)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	98
	
l3342:	
;COMADC.c: 98: printf("%d ",vadc2);
	movf	(_vadc2+1),w
	movwf	(?_printf+1)
	movf	(_vadc2),w
	movwf	(?_printf)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	99
	
l3344:	
;COMADC.c: 99: printf("%d ",vadc3);
	movf	(_vadc3+1),w
	movwf	(?_printf+1)
	movf	(_vadc3),w
	movwf	(?_printf)
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	line	100
	
l3346:	
;COMADC.c: 100: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	105
	
l3348:	
;COMADC.c: 105: PWM();
	fcall	_PWM
	goto	l3336
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	107
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text329,local,class=CODE,delta=2
global __ptext329
__ptext329:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 182 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
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
psect	text329
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
	line	182
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	185
	
l3274:	
	line	187
	
l3276:	
;COMADC.c: 187: RC3 = 0;
	bcf	(59/8),(59)&7
	line	188
	
l3278:	
;COMADC.c: 188: RC0 = 0;
	bcf	(56/8),(56)&7
	line	189
	
l3280:	
;COMADC.c: 189: RC4 = 0;
	bcf	(60/8),(60)&7
	line	191
	
l3282:	
;COMADC.c: 191: pause(15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	192
	
l3284:	
;COMADC.c: 192: PORTD = init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	193
	
l3286:	
;COMADC.c: 193: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3288:	
	bcf	(56/8),(56)&7
	line	194
;COMADC.c: 194: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	195
	
l3290:	
;COMADC.c: 195: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l3292:	
	bcf	(56/8),(56)&7
	line	196
;COMADC.c: 196: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	197
	
l3294:	
;COMADC.c: 197: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l3296:	
	bcf	(56/8),(56)&7
	line	198
;COMADC.c: 198: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	199
	
l3298:	
;COMADC.c: 199: PORTD= 2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	200
	
l3300:	
;COMADC.c: 200: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3302:	
	bcf	(56/8),(56)&7
	line	202
	
l3304:	
;COMADC.c: 202: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	203
	
l3306:	
;COMADC.c: 203: lcd_write(0x0C);
	movlw	(0Ch)
	fcall	_lcd_write
	line	204
	
l3308:	
;COMADC.c: 204: lcd_write(0x0F);
	movlw	(0Fh)
	fcall	_lcd_write
	line	205
	
l3310:	
;COMADC.c: 205: lcd_clear();
	fcall	_lcd_clear
	line	206
	
l3312:	
;COMADC.c: 206: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	207
	
l1103:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_clear
psect	text330,local,class=CODE,delta=2
global __ptext330
__ptext330:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 160 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
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
psect	text330
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
	line	160
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 3
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	161
	
l3270:	
;COMADC.c: 161: RC3 = 0;
	bcf	(59/8),(59)&7
	line	162
	
l3272:	
;COMADC.c: 162: lcd_write(0x01);
	movlw	(01h)
	fcall	_lcd_write
	line	163
;COMADC.c: 163: pause (2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	164
	
l1088:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_write
psect	text331,local,class=CODE,delta=2
global __ptext331
__ptext331:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 152 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
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
psect	text331
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
	line	152
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 3
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	153
	
l3256:	
;COMADC.c: 153: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	154
	
l3258:	
;COMADC.c: 154: PORTD = ( ( c >> 4) & 0x0F);
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	155
	
l3260:	
;COMADC.c: 155: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3262:	
	bcf	(56/8),(56)&7
	line	156
	
l3264:	
;COMADC.c: 156: PORTD = (c & 0x0F);
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	157
	
l3266:	
;COMADC.c: 157: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l3268:	
	bcf	(56/8),(56)&7
	line	158
	
l1085:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_PWM
psect	text332,local,class=CODE,delta=2
global __ptext332
__ptext332:

;; *************** function _PWM *****************
;; Defined at:
;;		line 136 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
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
psect	text332
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
	line	136
	global	__size_of_PWM
	__size_of_PWM	equ	__end_of_PWM-_PWM
	
_PWM:	
	opt	stack 5
; Regs used in _PWM: [wreg+status,2+status,0+pclath+cstack]
	line	137
	
l3238:	
;COMADC.c: 137: ADRESH=vadc1>>2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vadc1+1),w
	movwf	(??_PWM+0)+0+1
	movf	(_vadc1),w
	movwf	(??_PWM+0)+0
	clrc
	rrf	(??_PWM+0)+1,f
	rrf	(??_PWM+0)+0,f
	clrc
	rrf	(??_PWM+0)+1,f
	rrf	(??_PWM+0)+0,f
	movf	0+(??_PWM+0)+0,w
	movwf	(30)	;volatile
	line	138
	
l3240:	
;COMADC.c: 138: ADRESL=vadc1<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	139
	
l3242:	
;COMADC.c: 139: CCPR1L=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(21)	;volatile
	line	140
	
l3244:	
;COMADC.c: 140: CCP1CON=0X0C|(ADRESL>>2);
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
	line	141
	
l3246:	
;COMADC.c: 141: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	143
	
l3248:	
;COMADC.c: 143: ADRESH=vadc2>>2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vadc2+1),w
	movwf	(??_PWM+0)+0+1
	movf	(_vadc2),w
	movwf	(??_PWM+0)+0
	clrc
	rrf	(??_PWM+0)+1,f
	rrf	(??_PWM+0)+0,f
	clrc
	rrf	(??_PWM+0)+1,f
	rrf	(??_PWM+0)+0,f
	movf	0+(??_PWM+0)+0,w
	movwf	(30)	;volatile
	line	144
	
l3250:	
;COMADC.c: 144: ADRESL=vadc2<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	145
	
l3252:	
;COMADC.c: 145: CCPR2L=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(27)	;volatile
	line	146
	
l3254:	
;COMADC.c: 146: CCP2CON=0X0C|(ADRESL>>2);
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
	line	147
;COMADC.c: 147: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	149
	
l1082:	
	return
	opt stack 0
GLOBAL	__end_of_PWM
	__end_of_PWM:
;; =============== function _PWM ends ============

	signat	_PWM,88
	global	_ADC
psect	text333,local,class=CODE,delta=2
global __ptext333
__ptext333:

;; *************** function _ADC *****************
;; Defined at:
;;		line 110 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwtoft
;;		___ftmul
;;		_pause
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text333
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
	line	110
	global	__size_of_ADC
	__size_of_ADC	equ	__end_of_ADC-_ADC
	
_ADC:	
	opt	stack 5
; Regs used in _ADC: [wreg+status,2+status,0+pclath+cstack]
	line	111
	
l3196:	
;COMADC.c: 111: ADCON0=0xD5;
	movlw	(0D5h)
	movwf	(31)	;volatile
	line	112
	
l3198:	
;COMADC.c: 112: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	113
;COMADC.c: 113: while(GO_DONE);
	
l1070:	
	btfsc	(249/8),(249)&7
	goto	u751
	goto	u750
u751:
	goto	l1070
u750:
	line	114
	
l3200:	
;COMADC.c: 114: vadc1=(ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_vadc1)
	clrf	(_vadc1+1)
	
l3202:	
	clrc
	rlf	(_vadc1),f
	rlf	(_vadc1+1),f
	clrc
	rlf	(_vadc1),f
	rlf	(_vadc1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_ADC+0)+0
	movlw	06h
u765:
	clrc
	rrf	(??_ADC+0)+0,f
	addlw	-1
	skipz
	goto	u765
	movf	0+(??_ADC+0)+0,w
	iorwf	(_vadc1),f
	line	115
	
l3204:	
;COMADC.c: 115: pwm1=vadc1;
	movf	(_vadc1+1),w
	movwf	(?___lwtoft+1)
	movf	(_vadc1),w
	movwf	(?___lwtoft)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(_pwm1)
	movf	(1+(?___lwtoft)),w
	movwf	(_pwm1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(_pwm1+2)
	line	116
	
l3206:	
;COMADC.c: 116: pwm1 = pwm1*0.0048875855327468;
	movlw	0x28
	movwf	(?___ftmul)
	movlw	0xa0
	movwf	(?___ftmul+1)
	movlw	0x3b
	movwf	(?___ftmul+2)
	movf	(_pwm1),w
	movwf	0+(?___ftmul)+03h
	movf	(_pwm1+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_pwm1+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_pwm1)
	movf	(1+(?___ftmul)),w
	movwf	(_pwm1+1)
	movf	(2+(?___ftmul)),w
	movwf	(_pwm1+2)
	line	117
	
l3208:	
;COMADC.c: 117: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	119
	
l3210:	
;COMADC.c: 119: ADCON0=0xD9;
	movlw	(0D9h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	120
	
l3212:	
;COMADC.c: 120: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	121
;COMADC.c: 121: while(GO_DONE);
	
l1073:	
	btfsc	(249/8),(249)&7
	goto	u771
	goto	u770
u771:
	goto	l1073
u770:
	line	122
	
l3214:	
;COMADC.c: 122: vadc2=(ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_vadc2)
	clrf	(_vadc2+1)
	
l3216:	
	clrc
	rlf	(_vadc2),f
	rlf	(_vadc2+1),f
	clrc
	rlf	(_vadc2),f
	rlf	(_vadc2+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_ADC+0)+0
	movlw	06h
u785:
	clrc
	rrf	(??_ADC+0)+0,f
	addlw	-1
	skipz
	goto	u785
	movf	0+(??_ADC+0)+0,w
	iorwf	(_vadc2),f
	line	123
	
l3218:	
;COMADC.c: 123: pwm2=vadc2;
	movf	(_vadc2+1),w
	movwf	(?___lwtoft+1)
	movf	(_vadc2),w
	movwf	(?___lwtoft)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(_pwm2)
	movf	(1+(?___lwtoft)),w
	movwf	(_pwm2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(_pwm2+2)
	line	124
	
l3220:	
;COMADC.c: 124: pwm2 = pwm2*0.0048875855327468;
	movlw	0x28
	movwf	(?___ftmul)
	movlw	0xa0
	movwf	(?___ftmul+1)
	movlw	0x3b
	movwf	(?___ftmul+2)
	movf	(_pwm2),w
	movwf	0+(?___ftmul)+03h
	movf	(_pwm2+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_pwm2+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_pwm2)
	movf	(1+(?___ftmul)),w
	movwf	(_pwm2+1)
	movf	(2+(?___ftmul)),w
	movwf	(_pwm2+2)
	line	125
	
l3222:	
;COMADC.c: 125: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	127
	
l3224:	
;COMADC.c: 127: ADCON0 = 0xDD;
	movlw	(0DDh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	128
	
l3226:	
;COMADC.c: 128: GO_DONE = 1;
	bsf	(249/8),(249)&7
	line	129
;COMADC.c: 129: while(GO_DONE);
	
l1076:	
	btfsc	(249/8),(249)&7
	goto	u791
	goto	u790
u791:
	goto	l1076
u790:
	line	130
	
l3228:	
;COMADC.c: 130: vadc3 = (ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_vadc3)
	clrf	(_vadc3+1)
	
l3230:	
	clrc
	rlf	(_vadc3),f
	rlf	(_vadc3+1),f
	clrc
	rlf	(_vadc3),f
	rlf	(_vadc3+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_ADC+0)+0
	movlw	06h
u805:
	clrc
	rrf	(??_ADC+0)+0,f
	addlw	-1
	skipz
	goto	u805
	movf	0+(??_ADC+0)+0,w
	iorwf	(_vadc3),f
	line	131
	
l3232:	
;COMADC.c: 131: pwm3=vadc3;
	movf	(_vadc3+1),w
	movwf	(?___lwtoft+1)
	movf	(_vadc3),w
	movwf	(?___lwtoft)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(_pwm3)
	movf	(1+(?___lwtoft)),w
	movwf	(_pwm3+1)
	movf	(2+(?___lwtoft)),w
	movwf	(_pwm3+2)
	line	132
	
l3234:	
;COMADC.c: 132: pwm3 = pwm3*0.0048875855327468;
	movlw	0x28
	movwf	(?___ftmul)
	movlw	0xa0
	movwf	(?___ftmul+1)
	movlw	0x3b
	movwf	(?___ftmul+2)
	movf	(_pwm3),w
	movwf	0+(?___ftmul)+03h
	movf	(_pwm3+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_pwm3+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_pwm3)
	movf	(1+(?___ftmul)),w
	movwf	(_pwm3+1)
	movf	(2+(?___ftmul)),w
	movwf	(_pwm3+2)
	line	133
	
l3236:	
;COMADC.c: 133: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	134
	
l1079:	
	return
	opt stack 0
GLOBAL	__end_of_ADC
	__end_of_ADC:
;; =============== function _ADC ends ============

	signat	_ADC,88
	global	___lwtoft
psect	text334,local,class=CODE,delta=2
global __ptext334
__ptext334:

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 29 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ADC
;; This function uses a non-reentrant model
;;
psect	text334
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
	opt	stack 5
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l3192:	
	movf	(___lwtoft@c),w
	movwf	(?___ftpack)
	movf	(___lwtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	line	31
	
l2357:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
;; =============== function ___lwtoft ends ============

	signat	___lwtoft,4219
	global	___ftmul
psect	text335,local,class=CODE,delta=2
global __ptext335
__ptext335:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;;  f2              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3    4[BANK0 ] unsigned um
;;  sign            1    8[BANK0 ] unsigned char 
;;  cntr            1    7[BANK0 ] unsigned char 
;;  exp             1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         6       9       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ADC
;; This function uses a non-reentrant model
;;
psect	text335
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l3136:	
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
	goto	u671
	goto	u670
u671:
	goto	l3142
u670:
	line	57
	
l3138:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2233
	line	58
	
l3142:	
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
	goto	u681
	goto	u680
u681:
	goto	l3148
u680:
	line	59
	
l3144:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2233
	line	60
	
l3148:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l3150:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l3152:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l3154:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l3156:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l3158:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l3160:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l3162:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l3164:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l3166:	
	btfss	(___ftmul@f1),(0)&7
	goto	u691
	goto	u690
u691:
	goto	l3170
u690:
	line	72
	
l3168:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u701
	addwf	(___ftmul@f3_as_product+1),f
u701:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u702
	addwf	(___ftmul@f3_as_product+2),f
u702:

	line	73
	
l3170:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l3172:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l3174:	
	decfsz	(___ftmul@cntr),f
	goto	u711
	goto	u710
u711:
	goto	l3166
u710:
	line	76
	
l3176:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l3178:	
	btfss	(___ftmul@f1),(0)&7
	goto	u721
	goto	u720
u721:
	goto	l3182
u720:
	line	79
	
l3180:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u731
	addwf	(___ftmul@f3_as_product+1),f
u731:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u732
	addwf	(___ftmul@f3_as_product+2),f
u732:

	line	80
	
l3182:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l3184:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l3186:	
	decfsz	(___ftmul@cntr),f
	goto	u741
	goto	u740
u741:
	goto	l3178
u740:
	line	83
	
l3188:	
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
	
l2233:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	_pause
psect	text336,local,class=CODE,delta=2
global __ptext336
__ptext336:

;; *************** function _pause *****************
;; Defined at:
;;		line 209 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
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
;;		_main
;;		_ADC
;;		_PWM
;;		_lcd_write
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text336
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
	line	209
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 5
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	211
	
l3128:	
;COMADC.c: 210: unsigned short x;
;COMADC.c: 211: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l3134
	line	213
	
l3130:	
;COMADC.c: 212: {
;COMADC.c: 213: msecbase();
	fcall	_msecbase
	line	211
	
l3132:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l3134:	
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
	goto	l3130
u660:
	line	215
	
l1109:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	_printf
psect	text337,local,class=CODE,delta=2
global __ptext337
__ptext337:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_3(4), STR_2(4), STR_1(4), 
;; Auto vars:     Size  Location     Type
;;  f               1    4[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(4), STR_2(4), STR_1(4), 
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
psect	text337
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
	
l3080:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	540
	goto	l3126
	line	542
	
l3082:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u591
	goto	u590
u591:
	goto	l3086
u590:
	line	545
	
l3084:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l3126
	line	552
	
l3086:	
	clrf	(printf@flag)
	line	638
	
l3090:	
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
	goto	l1145
	xorlw	100^0	; case 100
	skipnz
	goto	l3092
	xorlw	105^100	; case 105
	skipnz
	goto	l3092
	goto	l3126
	opt asmopt_on

	line	1254
	
l3092:	
	movf	(printf@ap),w
	movwf	fsr0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l3094:	
	incf	(printf@ap),f
	incf	(printf@ap),f
	line	1256
	
l3096:	
	btfss	(printf@_val+1),7
	goto	u601
	goto	u600
u601:
	goto	l3102
u600:
	line	1257
	
l3098:	
	movlw	(03h)
	iorwf	(printf@flag),f
	line	1258
	
l3100:	
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	line	1300
	
l3102:	
	clrf	(printf@c)
	incf	(printf@c),f
	line	1301
	
l3106:	
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
	goto	u615
	movf	0+(??_printf+0)+0,w
	subwf	(printf@_val),w
u615:
	skipnc
	goto	u611
	goto	u610
u611:
	goto	l3110
u610:
	goto	l3114
	line	1300
	
l3110:	
	incf	(printf@c),f
	
l3112:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u621
	goto	u620
u621:
	goto	l3106
u620:
	line	1433
	
l3114:	
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u631
	goto	u630
u631:
	goto	l3118
u630:
	line	1434
	
l3116:	
	movlw	(02Dh)
	fcall	_putch
	line	1467
	
l3118:	
	movf	(printf@c),w
	movwf	(printf@prec)
	line	1469
	goto	l3124
	line	1484
	
l3120:	
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
	
l3122:	
	movf	(printf@c),w
	fcall	_putch
	line	1469
	
l3124:	
	decf	(printf@prec),f
	incf	((printf@prec)),w
	skipz
	goto	u641
	goto	u640
u641:
	goto	l3120
u640:
	line	540
	
l3126:	
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u651
	goto	u650
u651:
	goto	l3082
u650:
	line	1533
	
l1145:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	___ftpack
psect	text338,local,class=CODE,delta=2
global __ptext338
__ptext338:

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
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
;;		___ftmul
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text338
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l3052:	
	movf	(___ftpack@exp),w
	skipz
	goto	u520
	goto	l3056
u520:
	
l3054:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u531
	goto	u530
u531:
	goto	l3062
u530:
	line	65
	
l3056:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l2469
	line	67
	
l3060:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l3062:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u541
	goto	u540
u541:
	goto	l3060
u540:
	goto	l3066
	line	71
	
l3064:	
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
	
l3066:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u551
	goto	u550
u551:
	goto	l3064
u550:
	goto	l3070
	line	76
	
l3068:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l3070:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u561
	goto	u560
u561:
	goto	l3068
u560:
	
l2478:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u571
	goto	u570
u571:
	goto	l2479
u570:
	line	80
	
l3072:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l2479:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l3074:	
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
	
l3076:	
	movf	(___ftpack@sign),w
	skipz
	goto	u580
	goto	l2480
u580:
	line	84
	
l3078:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2480:	
	line	85
	line	86
	
l2469:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwmod
psect	text339,local,class=CODE,delta=2
global __ptext339
__ptext339:

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
psect	text339
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3032:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u481
	goto	u480
u481:
	goto	l3048
u480:
	line	9
	
l3034:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l3038
	line	11
	
l3036:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l3038:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u491
	goto	u490
u491:
	goto	l3036
u490:
	line	15
	
l3040:	
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
	goto	l3044
u500:
	line	16
	
l3042:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l3044:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l3046:	
	decfsz	(___lwmod@counter),f
	goto	u511
	goto	u510
u511:
	goto	l3040
u510:
	line	20
	
l3048:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l2157:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text340,local,class=CODE,delta=2
global __ptext340
__ptext340:

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
psect	text340
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3006:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3008:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u441
	goto	u440
u441:
	goto	l3028
u440:
	line	11
	
l3010:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l3014
	line	13
	
l3012:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l3014:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u451
	goto	u450
u451:
	goto	l3012
u450:
	line	17
	
l3016:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l3018:	
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
	goto	l3024
u460:
	line	19
	
l3020:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3022:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3024:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3026:	
	decfsz	(___lwdiv@counter),f
	goto	u471
	goto	u470
u471:
	goto	l3016
u470:
	line	25
	
l3028:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2147:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_msecbase
psect	text341,local,class=CODE,delta=2
global __ptext341
__ptext341:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 217 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
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
psect	text341
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
	line	217
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 5
; Regs used in _msecbase: [wreg]
	line	218
	
l3004:	
;COMADC.c: 218: OPTION_REG = 0b11010001;
	movlw	(0D1h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	219
;COMADC.c: 219: TMR0 = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	220
;COMADC.c: 220: TMR0 = 0x8E;
	movlw	(08Eh)
	movwf	(1)	;volatile
	line	221
;COMADC.c: 221: while(!T0IF);
	
l1112:	
	btfss	(90/8),(90)&7
	goto	u431
	goto	u430
u431:
	goto	l1112
u430:
	
l1114:	
	line	222
;COMADC.c: 222: T0IF = 0;
	bcf	(90/8),(90)&7
	line	223
	
l1115:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_init_comms
psect	text342,local,class=CODE,delta=2
global __ptext342
__ptext342:

;; *************** function _init_comms *****************
;; Defined at:
;;		line 50 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
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
psect	text342
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
	line	50
	global	__size_of_init_comms
	__size_of_init_comms	equ	__end_of_init_comms-_init_comms
	
_init_comms:	
	opt	stack 7
; Regs used in _init_comms: [wreg+status,2]
	line	51
	
l2998:	
;COMADC.c: 51: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	52
;COMADC.c: 52: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	53
	
l3000:	
;COMADC.c: 53: SPBRG = 0x19;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	55
;COMADC.c: 55: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	56
;COMADC.c: 56: TXSTA = 0x26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	57
	
l3002:	
;COMADC.c: 57: BAUDCTL = 0;
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
psect	text343,local,class=CODE,delta=2
global __ptext343
__ptext343:

;; *************** function _getch *****************
;; Defined at:
;;		line 43 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 11F/20
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
psect	text343
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
	line	43
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 7
; Regs used in _getch: [wreg]
	line	45
	
l2992:	
	line	46
;COMADC.c: 45: while(!RCIF)
	
l1055:	
	line	45
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u421
	goto	u420
u421:
	goto	l1055
u420:
	line	47
	
l2994:	
;COMADC.c: 47: return RCREG;
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
psect	text344,local,class=CODE,delta=2
global __ptext344
__ptext344:

;; *************** function _putch *****************
;; Defined at:
;;		line 36 in file "C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
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
psect	text344
	file	"C:\Users\Jorge\OneDrive\Escritorio\Entregar\MAT_ADC\COMADC\COMADC.c"
	line	36
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 6
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movwf	(putch@byte)
	line	38
	
l2988:	
	line	39
;COMADC.c: 38: while(!TXIF)
	
l1049:	
	line	38
	btfss	(100/8),(100)&7
	goto	u411
	goto	u410
u411:
	goto	l1049
u410:
	line	40
	
l2990:	
;COMADC.c: 40: TXREG = byte;
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
psect	text345,local,class=CODE,delta=2
global __ptext345
__ptext345:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
