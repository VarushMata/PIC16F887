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
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\ASCENDENTE\ASCENDENTE.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\ASCENDENTE\ASCENDENTE.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\ASCENDENTE\ASCENDENTE.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\ASCENDENTE\ASCENDENTE.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_pause
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	_VPA
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
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
	file	"ASCENDENTE.as"
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
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 1 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       5
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
;;COMMON               E      4       5       1       35.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       5       3        0.0%
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
;;DATA                 0      0       7      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\ASCENDENTE\ASCENDENTE.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pause
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\ASCENDENTE\ASCENDENTE.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	16
	
l2411:	
;ASCENDENTE.c: 16: ANSEL = 0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	17
;ASCENDENTE.c: 17: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	19
;ASCENDENTE.c: 19: TRISA = 0x00;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	20
	
l2413:	
;ASCENDENTE.c: 20: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	21
	
l2415:	
;ASCENDENTE.c: 21: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	22
	
l2417:	
;ASCENDENTE.c: 22: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	23
	
l2419:	
;ASCENDENTE.c: 23: TRISE = 0x03;
	movlw	(03h)
	movwf	(137)^080h	;volatile
	line	27
	
l2421:	
;ASCENDENTE.c: 26: {
;ASCENDENTE.c: 27: for(VPA = 0x01;VPA<=0x64;VPA++)
	clrf	(_VPA)
	incf	(_VPA),f
	line	29
	
l2427:	
;ASCENDENTE.c: 28: {
;ASCENDENTE.c: 29: PORTA = VPA;
	movf	(_VPA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	30
	
l2429:	
;ASCENDENTE.c: 30: pause (438);
	movlw	low(01B6h)
	movwf	(?_pause)
	movlw	high(01B6h)
	movwf	((?_pause))+1
	fcall	_pause
	line	27
	
l2431:	
	incf	(_VPA),f
	
l2433:	
	movlw	(065h)
	subwf	(_VPA),w
	skipc
	goto	u31
	goto	u30
u31:
	goto	l2427
u30:
	goto	l2421
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	33
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_pause
psect	text42,local,class=CODE,delta=2
global __ptext42
__ptext42:

;; *************** function _pause *****************
;; Defined at:
;;		line 36 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\ASCENDENTE\ASCENDENTE.c"
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
psect	text42
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\ASCENDENTE\ASCENDENTE.c"
	line	36
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 6
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l2403:	
;ASCENDENTE.c: 37: unsigned short x;
;ASCENDENTE.c: 38: for (x=0; x<usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l2409
	line	40
	
l2405:	
;ASCENDENTE.c: 39: {
;ASCENDENTE.c: 40: msecbase();
	fcall	_msecbase
	line	38
	
l2407:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l2409:	
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
	goto	l2405
u20:
	line	42
	
l1042:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	_msecbase
psect	text43,local,class=CODE,delta=2
global __ptext43
__ptext43:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 45 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\ASCENDENTE\ASCENDENTE.c"
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
psect	text43
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\ASCENDENTE\ASCENDENTE.c"
	line	45
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 6
; Regs used in _msecbase: [wreg]
	line	46
	
l2401:	
;ASCENDENTE.c: 46: OPTION_REG = 0b11010001;
	movlw	(0D1h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	47
;ASCENDENTE.c: 47: TMR0 = 0x7A;
	movlw	(07Ah)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	48
;ASCENDENTE.c: 48: while(!T0IF);
	
l1045:	
	btfss	(90/8),(90)&7
	goto	u11
	goto	u10
u11:
	goto	l1045
u10:
	
l1047:	
	line	49
;ASCENDENTE.c: 49: T0IF = 0;
	bcf	(90/8),(90)&7
	line	50
	
l1048:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
psect	text44,local,class=CODE,delta=2
global __ptext44
__ptext44:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
