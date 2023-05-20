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
# 2 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 3 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_init_comms
	FNCALL	_main,_pause
	FNCALL	_main,_putch
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_printf
	FNCALL	_main,_getch
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_lcd_putch
	FNCALL	_lcd_init,_pause
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_init,_lcd_clear
	FNCALL	_lcd_putch,_lcd_write
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_pause
	FNCALL	_lcd_write,_pause
	FNCALL	_printf,_putch
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	_PORTA
psect	text141,local,class=CODE,delta=2
global __ptext141
__ptext141:
_PORTA	set	5
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
	
STR_5:	
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	58	;':'
	retlw	32	;' '
	retlw	91	;'['
	retlw	37	;'%'
	retlw	99	;'c'
	retlw	93	;']'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_4:	
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	58	;':'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_6:	
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_1:	
	retlw	13
	retlw	10
	retlw	10
	retlw	0
psect	strings
STR_2	equ	STR_1+0
STR_3	equ	STR_1+0
	file	"USART2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

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
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_pause
?_pause:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x0
	global	?_lcd_putch
?_lcd_putch:	; 0 bytes @ 0x0
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
	global	?_getch
?_getch:	; 1 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	global	pause@usvalue
pause@usvalue:	; 2 bytes @ 0x0
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x1
	ds	1
	global	??_pause
??_pause:	; 0 bytes @ 0x2
	global	pause@x
pause@x:	; 2 bytes @ 0x2
	ds	1
	global	??_printf
??_printf:	; 0 bytes @ 0x3
	global	printf@ap
printf@ap:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x4
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x4
	global	printf@f
printf@f:	; 1 bytes @ 0x4
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x5
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x5
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x5
	global	??_lcd_putch
??_lcd_putch:	; 0 bytes @ 0x5
	global	lcd_puts@s
lcd_puts@s:	; 1 bytes @ 0x5
	global	lcd_putch@c
lcd_putch@c:	; 1 bytes @ 0x5
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x5
	global	printf@c
printf@c:	; 1 bytes @ 0x5
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x6
	global	main@input
main@input:	; 1 bytes @ 0x6
	ds	1
	global	main@count
main@count:	; 1 bytes @ 0x7
	ds	1
;;Data sizes: Strings 35, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; printf@f	PTR const unsigned char  size(1) Largest target is 14
;;		 -> STR_5(CODE[14]), STR_4(CODE[10]), STR_3(CODE[4]), STR_2(CODE[4]), 
;;		 -> STR_1(CODE[4]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(COMMON[2]), 
;;
;; S1861$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; lcd_puts@s	PTR const unsigned char  size(1) Largest target is 7
;;		 -> STR_6(CODE[7]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_init
;;   _main->_lcd_goto
;;   _main->_printf
;;   _main->_lcd_puts
;;   _main->_lcd_putch
;;   _lcd_init->_lcd_write
;;   _lcd_putch->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _lcd_goto->_lcd_write
;;   _lcd_clear->_lcd_write
;;   _lcd_write->_pause
;;   _printf->_putch
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;; (0) _main                                                 2     2      0     840
;;                                              6 COMMON     2     2      0
;;                           _lcd_init
;;                          _lcd_clear
;;                         _init_comms
;;                              _pause
;;                              _putch
;;                           _lcd_goto
;;                             _printf
;;                              _getch
;;                           _lcd_puts
;;                          _lcd_putch
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             1     1      0     195
;;                                              5 COMMON     1     1      0
;;                              _pause
;;                          _lcd_write
;;                          _lcd_clear
;; ---------------------------------------------------------------------------------
;; (1) _lcd_putch                                            1     1      0      75
;;                                              5 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_puts                                             1     1      0      90
;;                                              5 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0      75
;;                                              5 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0      90
;;                          _lcd_write
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            1     1      0      60
;;                                              4 COMMON     1     1      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              11     9      2     105
;;                                              1 COMMON     5     3      2
;;                              _putch
;; ---------------------------------------------------------------------------------
;; (3) _pause                                                4     2      2      30
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (4) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _init_comms                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _getch                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                1     1      0      15
;;                                              0 COMMON     1     1      0
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
;;   _pause
;;     _msecbase
;;   _putch
;;   _lcd_goto
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _printf
;;     _putch
;;   _getch
;;   _lcd_puts
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _lcd_putch
;;     _lcd_write
;;       _pause
;;         _msecbase
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 73 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           1    7[COMMON] unsigned char 
;;  input           1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_init
;;		_lcd_clear
;;		_init_comms
;;		_pause
;;		_putch
;;		_lcd_goto
;;		_printf
;;		_getch
;;		_lcd_puts
;;		_lcd_putch
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	line	73
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	75
	
l2595:	
;USART2.c: 75: ANSEL = 0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	76
;USART2.c: 76: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	78
;USART2.c: 78: TRISA = 0x00;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	79
;USART2.c: 79: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	80
;USART2.c: 80: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	81
;USART2.c: 81: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	82
	
l2597:	
;USART2.c: 82: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	83
	
l2599:	
;USART2.c: 83: ADCON1 = 0x80;
	movlw	(080h)
	movwf	(159)^080h	;volatile
	line	84
;USART2.c: 84: PORTA = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	85
	
l2601:	
;USART2.c: 85: lcd_init();
	fcall	_lcd_init
	line	86
	
l2603:	
;USART2.c: 86: lcd_clear();
	fcall	_lcd_clear
	line	92
	
l2605:	
;USART2.c: 88: unsigned char input;
;USART2.c: 92: init_comms();
	fcall	_init_comms
	line	93
	
l2607:	
;USART2.c: 93: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	97
	
l2609:	
;USART2.c: 95: {
;USART2.c: 96: unsigned char count;
;USART2.c: 97: for (count = 0x31; count <= 0x39; count = count +1)
	movlw	(031h)
	movwf	(main@count)
	line	99
	
l2615:	
;USART2.c: 98: {
;USART2.c: 99: putch(count);
	movf	(main@count),w
	fcall	_putch
	line	100
;USART2.c: 100: pause(300);
	movlw	low(012Ch)
	movwf	(?_pause)
	movlw	high(012Ch)
	movwf	((?_pause))+1
	fcall	_pause
	line	101
;USART2.c: 101: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	97
	
l2617:	
	incf	(main@count),f
	
l2619:	
	movlw	(03Ah)
	subwf	(main@count),w
	skipc
	goto	u81
	goto	u80
u81:
	goto	l2615
u80:
	line	103
	
l2621:	
;USART2.c: 102: }
;USART2.c: 103: printf("\r\n\n");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	105
	
l2623:	
;USART2.c: 105: for (count = 0x61; count <= 0x7A; count = count +1)
	movlw	(061h)
	movwf	(main@count)
	line	107
	
l2629:	
;USART2.c: 106: {
;USART2.c: 107: putch(count);
	movf	(main@count),w
	fcall	_putch
	line	108
;USART2.c: 108: pause(300);
	movlw	low(012Ch)
	movwf	(?_pause)
	movlw	high(012Ch)
	movwf	((?_pause))+1
	fcall	_pause
	line	105
	
l2631:	
	incf	(main@count),f
	
l2633:	
	movlw	(07Bh)
	subwf	(main@count),w
	skipc
	goto	u91
	goto	u90
u91:
	goto	l2629
u90:
	line	110
	
l2635:	
;USART2.c: 109: }
;USART2.c: 110: printf("\r\n\n");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	111
	
l2637:	
;USART2.c: 111: for (count = 0x41; count <= 0x5A; count = count +1)
	movlw	(041h)
	movwf	(main@count)
	line	113
	
l2643:	
;USART2.c: 112: {
;USART2.c: 113: putch(count);
	movf	(main@count),w
	fcall	_putch
	line	111
	
l2645:	
	incf	(main@count),f
	
l2647:	
	movlw	(05Bh)
	subwf	(main@count),w
	skipc
	goto	u101
	goto	u100
u101:
	goto	l2643
u100:
	line	124
	
l2649:	
;USART2.c: 119: {
;USART2.c: 124: printf("\r\n\n");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	line	125
;USART2.c: 125: printf("Teclea:\r\n");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_printf
	line	126
	
l2651:	
;USART2.c: 126: input = getch();
	fcall	_getch
	movwf	(main@input)
	line	127
	
l2653:	
;USART2.c: 127: printf("Letra: [%c]\r\n",input);
	movf	(main@input),w
	movwf	(?_printf)
	clrf	(?_printf+1)
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_printf
	line	128
	
l2655:	
;USART2.c: 128: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	129
	
l2657:	
;USART2.c: 129: lcd_puts("Letra:");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_lcd_puts
	line	130
	
l2659:	
;USART2.c: 130: lcd_goto(0x06);
	movlw	(06h)
	fcall	_lcd_goto
	line	131
	
l2661:	
;USART2.c: 131: lcd_putch(input);
	movf	(main@input),w
	fcall	_lcd_putch
	goto	l2649
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	136
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text142,local,class=CODE,delta=2
global __ptext142
__ptext142:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 176 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
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
psect	text142
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	line	176
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	179
	
l2555:	
	line	181
	
l2557:	
;USART2.c: 181: RC3 = 0;
	bcf	(59/8),(59)&7
	line	182
	
l2559:	
;USART2.c: 182: RC0 = 0;
	bcf	(56/8),(56)&7
	line	183
	
l2561:	
;USART2.c: 183: RC4 = 0;
	bcf	(60/8),(60)&7
	line	185
	
l2563:	
;USART2.c: 185: pause(15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	186
	
l2565:	
;USART2.c: 186: PORTD = init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	187
	
l2567:	
;USART2.c: 187: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l2569:	
	bcf	(56/8),(56)&7
	line	188
;USART2.c: 188: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	189
	
l2571:	
;USART2.c: 189: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l2573:	
	bcf	(56/8),(56)&7
	line	190
;USART2.c: 190: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	191
	
l2575:	
;USART2.c: 191: ((RC0 = 1),(RC0=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l2577:	
	bcf	(56/8),(56)&7
	line	192
;USART2.c: 192: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	193
	
l2579:	
;USART2.c: 193: PORTD= 2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	194
	
l2581:	
;USART2.c: 194: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l2583:	
	bcf	(56/8),(56)&7
	line	196
	
l2585:	
;USART2.c: 196: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	197
	
l2587:	
;USART2.c: 197: lcd_write(0x0C);
	movlw	(0Ch)
	fcall	_lcd_write
	line	198
	
l2589:	
;USART2.c: 198: lcd_write(0x0F);
	movlw	(0Fh)
	fcall	_lcd_write
	line	199
	
l2591:	
;USART2.c: 199: lcd_clear();
	fcall	_lcd_clear
	line	200
	
l2593:	
;USART2.c: 200: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	201
	
l1093:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_putch
psect	text143,local,class=CODE,delta=2
global __ptext143
__ptext143:

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 164 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    5[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text143
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	line	164
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:	
	opt	stack 4
; Regs used in _lcd_putch: [wreg+status,2+status,0+pclath+cstack]
;lcd_putch@c stored from wreg
	movwf	(lcd_putch@c)
	line	165
	
l2551:	
;USART2.c: 165: RC3 = 1;
	bsf	(59/8),(59)&7
	line	166
	
l2553:	
;USART2.c: 166: lcd_write( c );
	movf	(lcd_putch@c),w
	fcall	_lcd_write
	line	167
	
l1087:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
;; =============== function _lcd_putch ends ============

	signat	_lcd_putch,4216
	global	_lcd_puts
psect	text144,local,class=CODE,delta=2
global __ptext144
__ptext144:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 157 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_6(7), 
;; Auto vars:     Size  Location     Type
;;  s               1    5[COMMON] PTR const unsigned char 
;;		 -> STR_6(7), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text144
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	line	157
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 4
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_puts@s stored from wreg
	movwf	(lcd_puts@s)
	line	158
	
l2543:	
;USART2.c: 158: RC3 = 1;
	bsf	(59/8),(59)&7
	line	159
;USART2.c: 159: while(*s)
	goto	l2549
	line	160
	
l2545:	
;USART2.c: 160: lcd_write(*s++);
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_write
	
l2547:	
	incf	(lcd_puts@s),f
	line	159
	
l2549:	
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u71
	goto	u70
u71:
	goto	l2545
u70:
	line	161
	
l1084:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_goto
psect	text145,local,class=CODE,delta=2
global __ptext145
__ptext145:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 170 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    5[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text145
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	line	170
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	171
	
l2539:	
;USART2.c: 171: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	172
	
l2541:	
;USART2.c: 172: lcd_write(0x80 + pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	173
	
l1090:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_clear
psect	text146,local,class=CODE,delta=2
global __ptext146
__ptext146:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 150 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
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
psect	text146
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	line	150
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	151
	
l2535:	
;USART2.c: 151: RC3 = 0;
	bcf	(59/8),(59)&7
	line	152
	
l2537:	
;USART2.c: 152: lcd_write(0x01);
	movlw	(01h)
	fcall	_lcd_write
	line	153
;USART2.c: 153: pause (2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	154
	
l1078:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_write
psect	text147,local,class=CODE,delta=2
global __ptext147
__ptext147:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 141 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
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
;;		_lcd_puts
;;		_lcd_putch
;;		_lcd_goto
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text147
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	line	141
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	142
	
l2521:	
;USART2.c: 142: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	143
	
l2523:	
;USART2.c: 143: PORTD = ( ( c >> 4) & 0x0F);
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	144
	
l2525:	
;USART2.c: 144: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l2527:	
	bcf	(56/8),(56)&7
	line	145
	
l2529:	
;USART2.c: 145: PORTD = (c & 0x0F);
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	146
	
l2531:	
;USART2.c: 146: ((RC0 = 1),(RC0=0));
	bsf	(56/8),(56)&7
	
l2533:	
	bcf	(56/8),(56)&7
	line	147
	
l1075:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_printf
psect	text148,local,class=CODE,delta=2
global __ptext148
__ptext148:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_5(14), STR_4(10), STR_3(4), STR_2(4), 
;;		 -> STR_1(4), 
;; Auto vars:     Size  Location     Type
;;  f               1    4[COMMON] PTR const unsigned char 
;;		 -> STR_5(14), STR_4(10), STR_3(4), STR_2(4), 
;;		 -> STR_1(4), 
;;  _val            4    0        struct .
;;  c               1    5[COMMON] char 
;;  ap              1    3[COMMON] PTR void [1]
;;		 -> ?_printf(2), 
;;  flag            1    0        unsigned char 
;;  prec            1    0        char 
;; Return value:  Size  Location     Type
;;                  2    1[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 11F/0
;;		On exit  : 11F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text148
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 6
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;printf@f stored from wreg
	line	537
	movwf	(printf@f)
	
l2503:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	540
	goto	l2519
	line	542
	
l2505:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u51
	goto	u50
u51:
	goto	l2517
u50:
	line	545
	
l2507:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l2519
	line	802
	
l2509:	
	movf	(printf@ap),w
	movwf	fsr0
	movf	indf,w
	movwf	(printf@c)
	
l2511:	
	incf	(printf@ap),f
	incf	(printf@ap),f
	line	812
	
l2513:	
	movf	(printf@c),w
	fcall	_putch
	line	813
	goto	l2519
	line	638
	
l2517:	
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 99
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
; rangetable           104     6 (fixed)
; spacedrange          206     9 (fixed)
; locatedrange         100     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1124
	xorlw	99^0	; case 99
	skipnz
	goto	l2509
	goto	l2513
	opt asmopt_on

	line	540
	
l2519:	
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u61
	goto	u60
u61:
	goto	l2505
u60:
	line	1533
	
l1124:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_pause
psect	text149,local,class=CODE,delta=2
global __ptext149
__ptext149:

;; *************** function _pause *****************
;; Defined at:
;;		line 204 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
;; Parameters:    Size  Location     Type
;;  usvalue         2    0[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  x               2    2[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 11F/60
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
;;		_lcd_write
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text149
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	line	204
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 4
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	207
	
l2495:	
;USART2.c: 205: unsigned short x;
;USART2.c: 207: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l2501
	line	209
	
l2497:	
;USART2.c: 208: {
;USART2.c: 209: msecbase();
	fcall	_msecbase
	line	207
	
l2499:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l2501:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u45
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u45:
	skipnc
	goto	u41
	goto	u40
u41:
	goto	l2497
u40:
	line	211
	
l1099:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	_msecbase
psect	text150,local,class=CODE,delta=2
global __ptext150
__ptext150:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 214 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 11F/60
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
psect	text150
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	line	214
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 4
; Regs used in _msecbase: [wreg]
	line	215
	
l2493:	
;USART2.c: 215: OPTION_REG = 0b11010001;
	movlw	(0D1h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	216
;USART2.c: 216: TMR0 = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	217
;USART2.c: 217: TMR0 = 0x8E;
	movlw	(08Eh)
	movwf	(1)	;volatile
	line	218
;USART2.c: 218: while(!T0IF);
	
l1102:	
	btfss	(90/8),(90)&7
	goto	u31
	goto	u30
u31:
	goto	l1102
u30:
	
l1104:	
	line	219
;USART2.c: 219: T0IF = 0;
	bcf	(90/8),(90)&7
	line	220
	
l1105:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_init_comms
psect	text151,local,class=CODE,delta=2
global __ptext151
__ptext151:

;; *************** function _init_comms *****************
;; Defined at:
;;		line 60 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 11F/0
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
psect	text151
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	line	60
	global	__size_of_init_comms
	__size_of_init_comms	equ	__end_of_init_comms-_init_comms
	
_init_comms:	
	opt	stack 7
; Regs used in _init_comms: [wreg+status,2]
	line	61
	
l2487:	
;USART2.c: 61: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	62
;USART2.c: 62: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	63
	
l2489:	
;USART2.c: 63: SPBRG = 0x19;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	65
;USART2.c: 65: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	66
;USART2.c: 66: TXSTA = 0x26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	67
	
l2491:	
;USART2.c: 67: BAUDCTL = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	68
	
l1057:	
	return
	opt stack 0
GLOBAL	__end_of_init_comms
	__end_of_init_comms:
;; =============== function _init_comms ends ============

	signat	_init_comms,88
	global	_getch
psect	text152,local,class=CODE,delta=2
global __ptext152
__ptext152:

;; *************** function _getch *****************
;; Defined at:
;;		line 52 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 11F/0
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
psect	text152
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	line	52
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 7
; Regs used in _getch: [wreg]
	line	54
	
l2481:	
	line	55
;USART2.c: 54: while(!RCIF)
	
l1051:	
	line	54
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u21
	goto	u20
u21:
	goto	l1051
u20:
	line	56
	
l2483:	
;USART2.c: 56: return RCREG;
	movf	(26),w	;volatile
	line	57
	
l1054:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_putch
psect	text153,local,class=CODE,delta=2
global __ptext153
__ptext153:

;; *************** function _putch *****************
;; Defined at:
;;		line 44 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 11F/60
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
;;		_main
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text153
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\USART2\USART2.c"
	line	44
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 6
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movwf	(putch@byte)
	line	46
	
l2477:	
	line	47
;USART2.c: 46: while(!TXIF)
	
l1045:	
	line	46
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u11
	goto	u10
u11:
	goto	l1045
u10:
	line	48
	
l2479:	
;USART2.c: 48: TXREG = byte;
	movf	(putch@byte),w
	movwf	(25)	;volatile
	line	49
	
l1048:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
psect	text154,local,class=CODE,delta=2
global __ptext154
__ptext154:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
