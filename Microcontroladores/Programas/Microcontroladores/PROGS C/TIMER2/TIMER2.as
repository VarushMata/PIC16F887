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
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\TIMER2\TIMER2.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\TIMER2\TIMER2.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\TIMER2\TIMER2.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\TIMER2\TIMER2.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_pause
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	_NA
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_NA:
       ds      1

	global	_VPA
_VPA:
       ds      1

	global	_PORTA
_PORTA	set	5
	global	_TMR0
_TMR0	set	1
	global	_T0IF
_T0IF	set	90
	global	_OPTION_REG
_OPTION_REG	set	129
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
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"TIMER2.as"
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
	global	?_pause
?_pause:	; 0 bytes @ 0x0
	global	?_msecbase
?_msecbase:	; 0 bytes @ 0x0
	global	??_msecbase
??_msecbase:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	pause@usvalue
pause@usvalue:	; 2 bytes @ 0x0
	ds	2
	global	??_pause
??_pause:	; 0 bytes @ 0x2
	global	pause@x
pause@x:	; 2 bytes @ 0x2
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x4
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       6
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_pause
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
;; (0) _main                                                 0     0      0      30
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _pause                                                4     2      2      30
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (2) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _pause
;;     _msecbase
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       6       1       42.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       6       3        0.0%
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
;;DATA                 0      0       8      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\TIMER2\TIMER2.c"
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
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pause
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\TIMER2\TIMER2.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l2415:	
;TIMER2.c: 14: ANSEL = 0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	15
;TIMER2.c: 15: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	17
;TIMER2.c: 17: TRISA = 0x00;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	18
	
l2417:	
;TIMER2.c: 18: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	19
	
l2419:	
;TIMER2.c: 19: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	20
	
l2421:	
;TIMER2.c: 20: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	21
	
l2423:	
;TIMER2.c: 21: TRISE = 0x00;
	clrf	(137)^080h	;volatile
	line	32
	
l2425:	
;TIMER2.c: 24: {
;TIMER2.c: 32: VPA = 0x01;
	clrf	(_VPA)
	incf	(_VPA),f
	line	34
	
l2427:	
;TIMER2.c: 34: for(NA = 0x00;NA <= 0x06; NA++){
	clrf	(_NA)
	line	35
	
l2433:	
;TIMER2.c: 35: PORTA = VPA;
	movf	(_VPA),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	36
	
l2435:	
;TIMER2.c: 36: VPA = VPA<<1;
	clrc
	rlf	(_VPA),f
	line	37
	
l2437:	
;TIMER2.c: 37: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	38
	
l2439:	
;TIMER2.c: 38: PORTA = VPA;
	movf	(_VPA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	34
	
l2441:	
	incf	(_NA),f
	
l2443:	
	movlw	(07h)
	subwf	(_NA),w
	skipc
	goto	u31
	goto	u30
u31:
	goto	l2433
u30:
	line	41
	
l2445:	
;TIMER2.c: 39: }
;TIMER2.c: 41: for(NA = 0x00;NA <= 0x06; NA++){
	clrf	(_NA)
	line	42
	
l2451:	
;TIMER2.c: 42: PORTA = VPA;
	movf	(_VPA),w
	movwf	(5)	;volatile
	line	43
	
l2453:	
;TIMER2.c: 43: VPA = VPA>>1;
	clrc
	rrf	(_VPA),f
	line	44
	
l2455:	
;TIMER2.c: 44: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	45
	
l2457:	
;TIMER2.c: 45: PORTA = VPA;
	movf	(_VPA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	41
	
l2459:	
	incf	(_NA),f
	
l2461:	
	movlw	(07h)
	subwf	(_NA),w
	skipc
	goto	u41
	goto	u40
u41:
	goto	l2451
u40:
	goto	l2425
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	49
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_pause
psect	text37,local,class=CODE,delta=2
global __ptext37
__ptext37:

;; *************** function _pause *****************
;; Defined at:
;;		line 52 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\TIMER2\TIMER2.c"
;; Parameters:    Size  Location     Type
;;  usvalue         2    0[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  x               2    2[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
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
;; This function uses a non-reentrant model
;;
psect	text37
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\TIMER2\TIMER2.c"
	line	52
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 6
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	54
	
l2407:	
;TIMER2.c: 53: unsigned short x;
;TIMER2.c: 54: for (x=0; x<usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l2413
	line	56
	
l2409:	
;TIMER2.c: 55: {
;TIMER2.c: 56: msecbase();
	fcall	_msecbase
	line	54
	
l2411:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l2413:	
	movf	(pause@usvalue+1),w
	subwf	(pause@x+1),w
	skipz
	goto	u25
	movf	(pause@usvalue),w
	subwf	(pause@x),w
u25:
	skipc
	goto	u21
	goto	u20
u21:
	goto	l2409
u20:
	line	58
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	_msecbase
psect	text38,local,class=CODE,delta=2
global __ptext38
__ptext38:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 61 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\TIMER2\TIMER2.c"
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
psect	text38
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\TIMER2\TIMER2.c"
	line	61
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 6
; Regs used in _msecbase: [wreg]
	line	62
	
l2405:	
;TIMER2.c: 62: OPTION_REG = 0b11010110;
	movlw	(0D6h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	63
;TIMER2.c: 63: TMR0 = 0x7A;
	movlw	(07Ah)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	64
;TIMER2.c: 64: while(!T0IF);
	
l1049:	
	btfss	(90/8),(90)&7
	goto	u11
	goto	u10
u11:
	goto	l1049
u10:
	
l1051:	
	line	65
;TIMER2.c: 65: T0IF = 0;
	bcf	(90/8),(90)&7
	line	66
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
psect	text39,local,class=CODE,delta=2
global __ptext39
__ptext39:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
