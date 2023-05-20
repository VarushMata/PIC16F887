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
# 4 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\P1\P1.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\P1\P1.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 5 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\P1\P1.c"
	psect config,class=CONFIG,delta=2 ;#
# 5 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\P1\P1.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_init_comms
	FNCALL	_main,_putch
	FNCALL	_main,_getch
	FNCALL	_main,_printf
	FNCALL	_printf,_putch
	FNROOT	_main
	global	_INTCON
psect	text61,local,class=CODE,delta=2
global __ptext61
__ptext61:
_INTCON	set	11
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_RCIF
_RCIF	set	101
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TXSTA
_TXSTA	set	152
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_CM1CON0
_CM1CON0	set	263
	global	_CM2CON0
_CM2CON0	set	264
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
	
STR_1:	
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	32	;' '
	retlw	107	;'k'
	retlw	101	;'e'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	105	;'i'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	58	;':'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_2:	
	retlw	73	;'I'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	91	;'['
	retlw	37	;'%'
	retlw	99	;'c'
	retlw	93	;']'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	file	"P1.as"
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
	global	?_init_comms
?_init_comms:	; 0 bytes @ 0x0
	global	??_init_comms
??_init_comms:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	??_putch
??_putch:	; 0 bytes @ 0x0
	global	??_getch
??_getch:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_getch
?_getch:	; 1 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x1
	ds	2
	global	??_printf
??_printf:	; 0 bytes @ 0x3
	global	printf@ap
printf@ap:	; 1 bytes @ 0x3
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x4
	ds	1
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
;;Data sizes: Strings 57, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; printf@f	PTR const unsigned char  size(1) Largest target is 39
;;		 -> STR_2(CODE[18]), STR_1(CODE[39]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(COMMON[2]), 
;;
;; S1821$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_printf
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
;; (0) _main                                                 2     2      0     195
;;                                              6 COMMON     2     2      0
;;                         _init_comms
;;                              _putch
;;                              _getch
;;                             _printf
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              11     9      2     105
;;                                              1 COMMON     5     3      2
;;                              _putch
;; ---------------------------------------------------------------------------------
;; (1) _getch                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _init_comms                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init_comms
;;   _putch
;;   _getch
;;   _printf
;;     _putch
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
;;STACK                0      0       2       2        0.0%
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
;;		line 20 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\P1\P1.c"
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
;;		On exit  : 11F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_init_comms
;;		_putch
;;		_getch
;;		_printf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\P1\P1.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	23
	
l2462:	
;P1.c: 21: unsigned char input;
;P1.c: 23: ANSEL = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	24
;P1.c: 24: ANSELH = 0;
	clrf	(393)^0180h	;volatile
	line	25
;P1.c: 25: CM1CON0 = 0;
	bcf	status, 5	;RP0=0, select bank2
	clrf	(263)^0100h	;volatile
	line	26
;P1.c: 26: CM2CON0 = 0;
	clrf	(264)^0100h	;volatile
	line	28
;P1.c: 28: INTCON=0;
	clrf	(11)	;volatile
	line	30
	
l2464:	
;P1.c: 30: init_comms();
	fcall	_init_comms
	line	37
	
l2466:	
;P1.c: 35: {
;P1.c: 36: unsigned char count;
;P1.c: 37: for (count = 0x31; count <= 0x39; count = count +1)
	movlw	(031h)
	movwf	(main@count)
	line	39
	
l2472:	
;P1.c: 38: {
;P1.c: 39: putch(count);
	movf	(main@count),w
	fcall	_putch
	line	40
	
l2474:	
;P1.c: 40: input = getch();
	fcall	_getch
	movwf	(main@input)
	line	41
	
l2476:	
;P1.c: 41: putch(input);
	movf	(main@input),w
	fcall	_putch
	line	37
	
l2478:	
	incf	(main@count),f
	
l2480:	
	movlw	(03Ah)
	subwf	(main@count),w
	skipc
	goto	u51
	goto	u50
u51:
	goto	l2472
u50:
	line	45
	
l2482:	
;P1.c: 44: {
;P1.c: 45: printf("Press a key and I will echo it back:\r\n");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	46
	
l2484:	
;P1.c: 46: input = getch();
	fcall	_getch
	movwf	(main@input)
	line	47
	
l2486:	
;P1.c: 47: printf("I detected [%c]\r\n",input);
	movf	(main@input),w
	movwf	(?_printf)
	clrf	(?_printf+1)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	goto	l2482
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	50
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text62,local,class=CODE,delta=2
global __ptext62
__ptext62:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_2(18), STR_1(39), 
;; Auto vars:     Size  Location     Type
;;  f               1    4[COMMON] PTR const unsigned char 
;;		 -> STR_2(18), STR_1(39), 
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
psect	text62
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
	
l2444:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	540
	goto	l2460
	line	542
	
l2446:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u31
	goto	u30
u31:
	goto	l2458
u30:
	line	545
	
l2448:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l2460
	line	802
	
l2450:	
	movf	(printf@ap),w
	movwf	fsr0
	movf	indf,w
	movwf	(printf@c)
	
l2452:	
	incf	(printf@ap),f
	incf	(printf@ap),f
	line	812
	
l2454:	
	movf	(printf@c),w
	fcall	_putch
	line	813
	goto	l2460
	line	638
	
l2458:	
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
	goto	l1075
	xorlw	99^0	; case 99
	skipnz
	goto	l2450
	goto	l2454
	opt asmopt_on

	line	540
	
l2460:	
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u41
	goto	u40
u41:
	goto	l2446
u40:
	line	1533
	
l1075:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_getch
psect	text63,local,class=CODE,delta=2
global __ptext63
__ptext63:

;; *************** function _getch *****************
;; Defined at:
;;		line 63 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\P1\P1.c"
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
psect	text63
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\P1\P1.c"
	line	63
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 7
; Regs used in _getch: [wreg]
	line	65
	
l2438:	
	line	66
;P1.c: 65: while(!RCIF)
	
l1050:	
	line	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u21
	goto	u20
u21:
	goto	l1050
u20:
	line	67
	
l2440:	
;P1.c: 67: return RCREG;
	movf	(26),w	;volatile
	line	68
	
l1053:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_putch
psect	text64,local,class=CODE,delta=2
global __ptext64
__ptext64:

;; *************** function _putch *****************
;; Defined at:
;;		line 55 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\P1\P1.c"
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
psect	text64
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\P1\P1.c"
	line	55
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 6
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movwf	(putch@byte)
	line	57
	
l2434:	
	line	58
;P1.c: 57: while(!TXIF)
	
l1044:	
	line	57
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u11
	goto	u10
u11:
	goto	l1044
u10:
	line	59
	
l2436:	
;P1.c: 59: TXREG = byte;
	movf	(putch@byte),w
	movwf	(25)	;volatile
	line	60
	
l1047:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_init_comms
psect	text65,local,class=CODE,delta=2
global __ptext65
__ptext65:

;; *************** function _init_comms *****************
;; Defined at:
;;		line 71 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\P1\P1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/40
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
psect	text65
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\P1\P1.c"
	line	71
	global	__size_of_init_comms
	__size_of_init_comms	equ	__end_of_init_comms-_init_comms
	
_init_comms:	
	opt	stack 7
; Regs used in _init_comms: [wreg+status,2]
	line	72
	
l2428:	
;P1.c: 72: TRISC6 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1086/8)^080h,(1086)&7
	line	73
;P1.c: 73: TRISC7 = 0;
	bcf	(1087/8)^080h,(1087)&7
	line	74
	
l2430:	
;P1.c: 74: SPBRG = ((int)(4000000L/(64UL * 2400) -1));
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	76
;P1.c: 76: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	77
;P1.c: 77: TXSTA = 0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	78
	
l2432:	
;P1.c: 78: BAUDCTL = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	79
	
l1056:	
	return
	opt stack 0
GLOBAL	__end_of_init_comms
	__end_of_init_comms:
;; =============== function _init_comms ends ============

	signat	_init_comms,88
psect	text66,local,class=CODE,delta=2
global __ptext66
__ptext66:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
