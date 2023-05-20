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
# 3 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\C1\C1.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\C1\C1.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\C1\C1.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\C1\C1.c"
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
	global	_PORTB
_PORTB	set	6
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
	file	"C1.as"
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
;;		line 13 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\C1\C1.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\C1\C1.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	16
	
l2411:	
;C1.c: 16: ANSEL = 0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	17
;C1.c: 17: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	19
;C1.c: 19: TRISA = 0x00;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	20
	
l2413:	
;C1.c: 20: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	21
	
l2415:	
;C1.c: 21: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	22
	
l2417:	
;C1.c: 22: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	23
	
l2419:	
;C1.c: 23: TRISE = 0x03;
	movlw	(03h)
	movwf	(137)^080h	;volatile
	line	27
	
l2421:	
;C1.c: 26: {
;C1.c: 27: VPA = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(_VPA)
	line	28
	
l2423:	
;C1.c: 28: PORTA = VPA;
	movf	(_VPA),w
	movwf	(5)	;volatile
	line	29
	
l2425:	
;C1.c: 29: pause (10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	30
	
l2427:	
;C1.c: 30: _nop();
	nop
	line	32
	
l2429:	
;C1.c: 32: _nop();
	nop
	goto	l2421
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	34
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
;;		line 37 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\C1\C1.c"
;; Parameters:    Size  Location     Type
;;  usvalue         2    0[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  x               2    2[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text42
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\C1\C1.c"
	line	37
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 6
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l2403:	
;C1.c: 38: unsigned short x;
;C1.c: 39: for (x=0; x<usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l2409
	line	41
	
l2405:	
;C1.c: 40: {
;C1.c: 41: msecbase();
	fcall	_msecbase
	line	39
	
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
	line	43
	
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
;;		line 46 in file "C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\C1\C1.c"
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
psect	text43
	file	"C:\Users\Jorge\OneDrive\Escritorio\Microcontroladores\Proyectos\C1\C1.c"
	line	46
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 6
; Regs used in _msecbase: [wreg]
	line	47
	
l2401:	
;C1.c: 47: OPTION_REG = 0b11010001;
	movlw	(0D1h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	48
;C1.c: 48: TMR0 = 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	49
;C1.c: 49: while(!T0IF);
	
l1045:	
	btfss	(90/8),(90)&7
	goto	u11
	goto	u10
u11:
	goto	l1045
u10:
	
l1047:	
	line	50
;C1.c: 50: T0IF = 0;
	bcf	(90/8),(90)&7
	line	51
	
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
