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
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\RELOJ\RELOJ.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\RELOJ\RELOJ.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\RELOJ\RELOJ.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\RELOJ\RELOJ.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_digitos
	FNCALL	_main,_pause
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	_DP7
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
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\RELOJ\RELOJ.c"
	line	10
_DP7:
	retlw	03Fh
	retlw	0

	retlw	06h
	retlw	0

	retlw	05Bh
	retlw	0

	retlw	04Fh
	retlw	0

	retlw	066h
	retlw	0

	retlw	06Dh
	retlw	0

	retlw	07Dh
	retlw	0

	retlw	07h
	retlw	0

	retlw	07Fh
	retlw	0

	retlw	067h
	retlw	0

	global	_DP7
	global	_NC
	global	_ND
	global	_NM
	global	_NU
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
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
	file	"RELOJ.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_NC:
       ds      2

_ND:
       ds      2

_NM:
       ds      2

_NU:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
	clrf	((__pbssCOMMON)+6)&07Fh
	clrf	((__pbssCOMMON)+7)&07Fh
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
	global	?_digitos
?_digitos:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	digitos@x
digitos@x:	; 2 bytes @ 0x0
	global	pause@usvalue
pause@usvalue:	; 2 bytes @ 0x0
	ds	2
	global	??_pause
??_pause:	; 0 bytes @ 0x2
	global	??_digitos
??_digitos:	; 0 bytes @ 0x2
	global	pause@x
pause@x:	; 2 bytes @ 0x2
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x4
	global	main@CON
main@CON:	; 2 bytes @ 0x4
	ds	2
;;Data sizes: Strings 0, constant 20, data 0, bss 8, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      14
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
;; (0) _main                                                 2     2      0     120
;;                                              4 COMMON     2     2      0
;;                            _digitos
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _pause                                                4     2      2      30
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (2) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _digitos                                              2     0      2      60
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _digitos
;;   _pause
;;     _msecbase
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       E       3        0.0%
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
;;DATA                 0      0      10      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 44 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\RELOJ\RELOJ.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  CON             2    4[COMMON] short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_digitos
;;		_pause
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\RELOJ\RELOJ.c"
	line	44
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	46
	
l2460:	
;RELOJ.c: 46: short int CON = 0;
	clrf	(main@CON)
	clrf	(main@CON+1)
	line	49
	
l2462:	
;RELOJ.c: 49: ANSEL = 0x60;
	movlw	(060h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	50
	
l2464:	
;RELOJ.c: 50: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	52
	
l2466:	
;RELOJ.c: 52: TRISA = 0x00;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	53
	
l2468:	
;RELOJ.c: 53: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	54
;RELOJ.c: 54: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	55
;RELOJ.c: 55: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	56
;RELOJ.c: 56: TRISE = 0x00;
	clrf	(137)^080h	;volatile
	line	61
	
l2470:	
;RELOJ.c: 59: {
;RELOJ.c: 61: digitos(CON);
	movf	(main@CON+1),w
	movwf	(?_digitos+1)
	movf	(main@CON),w
	movwf	(?_digitos)
	fcall	_digitos
	line	63
	
l2472:	
;RELOJ.c: 63: PORTC = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	64
	
l2474:	
;RELOJ.c: 64: PORTA = DP7[NU];
	clrc
	rlf	(_NU),w
	addlw	low((_DP7-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(5)	;volatile
	line	65
	
l2476:	
;RELOJ.c: 65: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	67
	
l2478:	
;RELOJ.c: 67: PORTC = 0x02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	68
	
l2480:	
;RELOJ.c: 68: PORTA = DP7[ND];
	clrc
	rlf	(_ND),w
	addlw	low((_DP7-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(5)	;volatile
	line	69
	
l2482:	
;RELOJ.c: 69: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	71
	
l2484:	
;RELOJ.c: 71: PORTC = 0x04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	72
	
l2486:	
;RELOJ.c: 72: PORTA = DP7[NC];
	clrc
	rlf	(_NC),w
	addlw	low((_DP7-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(5)	;volatile
	line	73
	
l2488:	
;RELOJ.c: 73: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	75
	
l2490:	
;RELOJ.c: 75: PORTC = 0x08;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	76
	
l2492:	
;RELOJ.c: 76: PORTA = DP7[NM];
	clrc
	rlf	(_NM),w
	addlw	low((_DP7-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(5)	;volatile
	line	77
	
l2494:	
;RELOJ.c: 77: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	79
	
l2496:	
;RELOJ.c: 79: if(CON==9999){
		movf	(main@CON+1),w
	xorlw	39
	movlw	15
	skipnz
	xorwf	(main@CON),w

	skipz
	goto	u71
	goto	u70
u71:
	goto	l2500
u70:
	line	80
	
l2498:	
;RELOJ.c: 80: CON=0;
	clrf	(main@CON)
	clrf	(main@CON+1)
	line	81
;RELOJ.c: 81: }else{
	goto	l2470
	line	82
	
l2500:	
;RELOJ.c: 82: CON++;
	incf	(main@CON),f
	skipnz
	incf	(main@CON+1),f
	goto	l2470
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	102
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_pause
psect	text43,local,class=CODE,delta=2
global __ptext43
__ptext43:

;; *************** function _pause *****************
;; Defined at:
;;		line 105 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\RELOJ\RELOJ.c"
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
psect	text43
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\RELOJ\RELOJ.c"
	line	105
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 6
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	107
	
l2452:	
;RELOJ.c: 106: unsigned short x;
;RELOJ.c: 107: for (x=0; x<usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l2458
	line	109
	
l2454:	
;RELOJ.c: 108: {
;RELOJ.c: 109: msecbase();
	fcall	_msecbase
	line	107
	
l2456:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l2458:	
	movf	(pause@usvalue+1),w
	subwf	(pause@x+1),w
	skipz
	goto	u65
	movf	(pause@usvalue),w
	subwf	(pause@x),w
u65:
	skipc
	goto	u61
	goto	u60
u61:
	goto	l2454
u60:
	line	111
	
l1065:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	_msecbase
psect	text44,local,class=CODE,delta=2
global __ptext44
__ptext44:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 114 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\RELOJ\RELOJ.c"
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
psect	text44
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\RELOJ\RELOJ.c"
	line	114
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 6
; Regs used in _msecbase: [wreg]
	line	115
	
l2450:	
;RELOJ.c: 115: OPTION_REG = 0b11010110;
	movlw	(0D6h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	116
;RELOJ.c: 116: TMR0 = 0x7A;
	movlw	(07Ah)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	117
;RELOJ.c: 117: while(!T0IF);
	
l1068:	
	btfss	(90/8),(90)&7
	goto	u51
	goto	u50
u51:
	goto	l1068
u50:
	
l1070:	
	line	118
;RELOJ.c: 118: T0IF = 0;
	bcf	(90/8),(90)&7
	line	119
	
l1071:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_digitos
psect	text45,local,class=CODE,delta=2
global __ptext45
__ptext45:

;; *************** function _digitos *****************
;; Defined at:
;;		line 18 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\RELOJ\RELOJ.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text45
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\RELOJ\RELOJ.c"
	line	18
	global	__size_of_digitos
	__size_of_digitos	equ	__end_of_digitos-_digitos
	
_digitos:	
	opt	stack 7
; Regs used in _digitos: [wreg+status,2+status,0+btemp+1]
	line	19
	
l2424:	
;RELOJ.c: 19: NM = 0;
	clrf	(_NM)
	clrf	(_NM+1)
	line	20
;RELOJ.c: 20: NC = 0;
	clrf	(_NC)
	clrf	(_NC+1)
	line	21
;RELOJ.c: 21: ND = 0;
	clrf	(_ND)
	clrf	(_ND+1)
	line	22
;RELOJ.c: 22: NU = 0;
	clrf	(_NU)
	clrf	(_NU+1)
	line	24
;RELOJ.c: 24: while(x>=1000){
	goto	l2430
	line	25
	
l2426:	
;RELOJ.c: 25: x-=1000;
	movlw	low(-1000)
	addwf	(digitos@x),f
	skipnc
	incf	(digitos@x+1),f
	movlw	high(-1000)
	addwf	(digitos@x+1),f
	line	26
	
l2428:	
;RELOJ.c: 26: NM++;
	incf	(_NM),f
	skipnz
	incf	(_NM+1),f
	line	24
	
l2430:	
	movf	(digitos@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u15
	movlw	low(03E8h)
	subwf	(digitos@x),w
u15:

	skipnc
	goto	u11
	goto	u10
u11:
	goto	l2426
u10:
	goto	l2436
	line	29
	
l2432:	
;RELOJ.c: 29: x-=100;
	movlw	-100
	addwf	(digitos@x),f
	skipc
	decf	(digitos@x+1),f
	line	30
	
l2434:	
;RELOJ.c: 30: NC++;
	incf	(_NC),f
	skipnz
	incf	(_NC+1),f
	line	28
	
l2436:	
	movf	(digitos@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(064h)
	subwf	(digitos@x),w
u25:

	skipnc
	goto	u21
	goto	u20
u21:
	goto	l2432
u20:
	goto	l2442
	line	33
	
l2438:	
;RELOJ.c: 33: x-=10;
	movlw	-10
	addwf	(digitos@x),f
	skipc
	decf	(digitos@x+1),f
	line	34
	
l2440:	
;RELOJ.c: 34: ND++;
	incf	(_ND),f
	skipnz
	incf	(_ND+1),f
	line	32
	
l2442:	
	movf	(digitos@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(0Ah)
	subwf	(digitos@x),w
u35:

	skipnc
	goto	u31
	goto	u30
u31:
	goto	l2438
u30:
	goto	l2448
	line	37
	
l2444:	
;RELOJ.c: 37: x-=1;
	movlw	-1
	addwf	(digitos@x),f
	skipc
	decf	(digitos@x+1),f
	line	38
	
l2446:	
;RELOJ.c: 38: NU++;
	incf	(_NU),f
	skipnz
	incf	(_NU+1),f
	line	36
	
l2448:	
	movf	(digitos@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u45
	movlw	low(01h)
	subwf	(digitos@x),w
u45:

	skipnc
	goto	u41
	goto	u40
u41:
	goto	l2444
u40:
	line	41
	
l1051:	
	return
	opt stack 0
GLOBAL	__end_of_digitos
	__end_of_digitos:
;; =============== function _digitos ends ============

	signat	_digitos,4216
psect	text46,local,class=CODE,delta=2
global __ptext46
__ptext46:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
