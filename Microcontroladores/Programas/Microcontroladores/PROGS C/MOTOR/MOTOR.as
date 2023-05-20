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
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\MOTOR\MOTOR.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\MOTOR\MOTOR.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\MOTOR\MOTOR.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\MOTOR\MOTOR.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_derecha
	FNCALL	_main,_izquierda
	FNCALL	_izquierda,_retardo
	FNCALL	_derecha,_retardo
	FNROOT	_main
	global	_RET
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_RET:
       ds      1

	global	_ROT
_ROT:
       ds      1

	global	_TEMP1
_TEMP1:
       ds      1

	global	_TEMP2
_TEMP2:
       ds      1

	global	_VEL
_VEL:
       ds      1

	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
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
	file	"MOTOR.as"
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
	global	?_derecha
?_derecha:	; 0 bytes @ 0x0
	global	?_izquierda
?_izquierda:	; 0 bytes @ 0x0
	global	?_retardo
?_retardo:	; 0 bytes @ 0x0
	global	??_retardo
??_retardo:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	retardo@retar
retardo@retar:	; 1 bytes @ 0x0
	ds	1
	global	retardo@VA
retardo@VA:	; 1 bytes @ 0x1
	ds	1
	global	retardo@VB
retardo@VB:	; 1 bytes @ 0x2
	ds	1
	global	retardo@VC
retardo@VC:	; 1 bytes @ 0x3
	ds	1
	global	??_derecha
??_derecha:	; 0 bytes @ 0x4
	global	??_izquierda
??_izquierda:	; 0 bytes @ 0x4
	global	derecha@tm1
derecha@tm1:	; 1 bytes @ 0x4
	global	izquierda@tm2
izquierda@tm2:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 5 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      11
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_derecha
;;   _main->_izquierda
;;   _izquierda->_retardo
;;   _derecha->_retardo
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     330
;;                                              5 COMMON     1     1      0
;;                            _derecha
;;                          _izquierda
;; ---------------------------------------------------------------------------------
;; (1) _izquierda                                            1     1      0     165
;;                                              4 COMMON     1     1      0
;;                            _retardo
;; ---------------------------------------------------------------------------------
;; (1) _derecha                                              1     1      0     165
;;                                              4 COMMON     1     1      0
;;                            _retardo
;; ---------------------------------------------------------------------------------
;; (2) _retardo                                              4     4      0     105
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _derecha
;;     _retardo
;;   _izquierda
;;     _retardo
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       B       3        0.0%
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
;;DATA                 0      0       D      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 21 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\MOTOR\MOTOR.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_derecha
;;		_izquierda
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\MOTOR\MOTOR.c"
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	22
	
l2490:	
;MOTOR.c: 22: ANSEL = 0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	23
;MOTOR.c: 23: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	25
;MOTOR.c: 25: TRISA = 0x00;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	26
	
l2492:	
;MOTOR.c: 26: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	27
	
l2494:	
;MOTOR.c: 27: TRISC = 0xFF;
	movlw	(0FFh)
	movwf	(135)^080h	;volatile
	line	28
;MOTOR.c: 28: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	29
	
l2496:	
;MOTOR.c: 29: TRISE = 0x03;
	movlw	(03h)
	movwf	(137)^080h	;volatile
	line	34
	
l2498:	
;MOTOR.c: 32: {
;MOTOR.c: 34: TEMP1 = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	movf	(6),w	;volatile
	movwf	(_TEMP1)
	line	35
	
l2500:	
;MOTOR.c: 35: TEMP2 = PORTB;
	movf	(6),w	;volatile
	movwf	(_TEMP2)
	line	37
	
l2502:	
;MOTOR.c: 37: VEL = TEMP1 >>4;
	swapf	(_TEMP1),w
	andlw	(0ffh shr 4) & 0ffh
	movwf	(_VEL)
	line	39
	
l2504:	
;MOTOR.c: 39: TEMP2 = TEMP2<<6;
swapf	(_TEMP2),f
	rlf	(_TEMP2),f
	rlf	(_TEMP2),f
	movlw	192
	andwf	(_TEMP2),f

	line	40
	
l2506:	
;MOTOR.c: 40: ROT = TEMP2>>6;
	movf	(_TEMP2),w
	movwf	(??_main+0)+0
	movlw	06h
u55:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u55
	movf	0+(??_main+0)+0,w
	movwf	(_ROT)
	line	43
;MOTOR.c: 43: switch(VEL){
	goto	l2550
	line	46
	
l1045:	
	line	47
;MOTOR.c: 47: RET =0x01;
	clrf	(_RET)
	incf	(_RET),f
	line	48
	
l2508:	
;MOTOR.c: 48: if(ROT == 0x01){
	decf	(_ROT),w
	skipz
	goto	u61
	goto	u60
u61:
	goto	l2512
u60:
	line	49
	
l2510:	
;MOTOR.c: 49: derecha(RET);
	movlw	(01h)
	fcall	_derecha
	line	50
;MOTOR.c: 50: }else if(ROT == 0x02){
	goto	l2516
	
l2512:	
	movf	(_ROT),w
	xorlw	02h
	skipz
	goto	u71
	goto	u70
u71:
	goto	l2516
u70:
	line	51
	
l2514:	
;MOTOR.c: 51: izquierda(RET);
	movlw	(01h)
	fcall	_izquierda
	line	46
	
l2516:	
	decf	(_VEL),w
	skipnz
	goto	u81
	goto	u80
u81:
	goto	l1045
u80:
	goto	l2498
	line	57
	
l1053:	
	line	58
;MOTOR.c: 58: RET =0x01;
	clrf	(_RET)
	incf	(_RET),f
	line	59
	
l2518:	
;MOTOR.c: 59: if(ROT == 0x01){
	decf	(_ROT),w
	skipz
	goto	u91
	goto	u90
u91:
	goto	l2522
u90:
	line	60
	
l2520:	
;MOTOR.c: 60: derecha(RET);
	movlw	(01h)
	fcall	_derecha
	line	61
;MOTOR.c: 61: }else if(ROT == 0x02){
	goto	l2526
	
l2522:	
	movf	(_ROT),w
	xorlw	02h
	skipz
	goto	u101
	goto	u100
u101:
	goto	l2526
u100:
	line	62
	
l2524:	
;MOTOR.c: 62: izquierda(RET);
	movlw	(01h)
	fcall	_izquierda
	line	57
	
l2526:	
	movf	(_VEL),w
	xorlw	02h
	skipnz
	goto	u111
	goto	u110
u111:
	goto	l1053
u110:
	goto	l2498
	line	68
	
l1060:	
	line	69
;MOTOR.c: 69: RET =0x01;
	clrf	(_RET)
	incf	(_RET),f
	line	70
	
l2528:	
;MOTOR.c: 70: if(ROT == 0x01){
	decf	(_ROT),w
	skipz
	goto	u121
	goto	u120
u121:
	goto	l2532
u120:
	line	71
	
l2530:	
;MOTOR.c: 71: derecha(RET);
	movlw	(01h)
	fcall	_derecha
	line	72
;MOTOR.c: 72: }else if(ROT == 0x02){
	goto	l2536
	
l2532:	
	movf	(_ROT),w
	xorlw	02h
	skipz
	goto	u131
	goto	u130
u131:
	goto	l2536
u130:
	line	73
	
l2534:	
;MOTOR.c: 73: izquierda(RET);
	movlw	(01h)
	fcall	_izquierda
	line	68
	
l2536:	
	movf	(_VEL),w
	xorlw	04h
	skipnz
	goto	u141
	goto	u140
u141:
	goto	l1060
u140:
	goto	l2498
	line	79
	
l1067:	
	line	80
;MOTOR.c: 80: RET =0x01;
	clrf	(_RET)
	incf	(_RET),f
	line	81
	
l2538:	
;MOTOR.c: 81: if(ROT == 0x01){
	decf	(_ROT),w
	skipz
	goto	u151
	goto	u150
u151:
	goto	l2542
u150:
	line	82
	
l2540:	
;MOTOR.c: 82: derecha(RET);
	movlw	(01h)
	fcall	_derecha
	line	83
;MOTOR.c: 83: }else if(ROT == 0x02){
	goto	l2546
	
l2542:	
	movf	(_ROT),w
	xorlw	02h
	skipz
	goto	u161
	goto	u160
u161:
	goto	l2546
u160:
	line	84
	
l2544:	
;MOTOR.c: 84: izquierda(RET);
	movlw	(01h)
	fcall	_izquierda
	line	79
	
l2546:	
	movf	(_VEL),w
	xorlw	08h
	skipnz
	goto	u171
	goto	u170
u171:
	goto	l1067
u170:
	goto	l2498
	line	43
	
l2550:	
	movf	(_VEL),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 15
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           56    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l2516
	xorlw	3^1	; case 3
	skipnz
	goto	l2526
	xorlw	7^3	; case 7
	skipnz
	goto	l2536
	xorlw	15^7	; case 15
	skipnz
	goto	l2546
	goto	l2498
	opt asmopt_on

	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	90
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_izquierda
psect	text36,local,class=CODE,delta=2
global __ptext36
__ptext36:

;; *************** function _izquierda *****************
;; Defined at:
;;		line 104 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\MOTOR\MOTOR.c"
;; Parameters:    Size  Location     Type
;;  tm2             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  tm2             1    4[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_retardo
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text36
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\MOTOR\MOTOR.c"
	line	104
	global	__size_of_izquierda
	__size_of_izquierda	equ	__end_of_izquierda-_izquierda
	
_izquierda:	
	opt	stack 6
; Regs used in _izquierda: [wreg+status,2+status,0+pclath+cstack]
;izquierda@tm2 stored from wreg
	movwf	(izquierda@tm2)
	line	105
	
l2478:	
;MOTOR.c: 105: PORTA = 0x09;
	movlw	(09h)
	movwf	(5)	;volatile
	line	106
	
l2480:	
;MOTOR.c: 106: retardo(tm2);
	movf	(izquierda@tm2),w
	fcall	_retardo
	line	107
	
l2482:	
;MOTOR.c: 107: PORTA = 0x06;
	movlw	(06h)
	movwf	(5)	;volatile
	line	108
;MOTOR.c: 108: retardo(tm2);
	movf	(izquierda@tm2),w
	fcall	_retardo
	line	109
	
l2484:	
;MOTOR.c: 109: PORTA = 0x03;
	movlw	(03h)
	movwf	(5)	;volatile
	line	110
	
l2486:	
;MOTOR.c: 110: retardo(tm2);
	movf	(izquierda@tm2),w
	fcall	_retardo
	line	111
;MOTOR.c: 111: PORTA = 0x0C;
	movlw	(0Ch)
	movwf	(5)	;volatile
	line	112
	
l2488:	
;MOTOR.c: 112: retardo(tm2);
	movf	(izquierda@tm2),w
	fcall	_retardo
	line	113
	
l1080:	
	return
	opt stack 0
GLOBAL	__end_of_izquierda
	__end_of_izquierda:
;; =============== function _izquierda ends ============

	signat	_izquierda,4216
	global	_derecha
psect	text37,local,class=CODE,delta=2
global __ptext37
__ptext37:

;; *************** function _derecha *****************
;; Defined at:
;;		line 92 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\MOTOR\MOTOR.c"
;; Parameters:    Size  Location     Type
;;  tm1             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  tm1             1    4[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_retardo
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text37
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\MOTOR\MOTOR.c"
	line	92
	global	__size_of_derecha
	__size_of_derecha	equ	__end_of_derecha-_derecha
	
_derecha:	
	opt	stack 6
; Regs used in _derecha: [wreg+status,2+status,0+pclath+cstack]
;derecha@tm1 stored from wreg
	movwf	(derecha@tm1)
	line	93
	
l2466:	
;MOTOR.c: 93: PORTA = 0x0C;
	movlw	(0Ch)
	movwf	(5)	;volatile
	line	94
	
l2468:	
;MOTOR.c: 94: retardo(tm1);
	movf	(derecha@tm1),w
	fcall	_retardo
	line	95
	
l2470:	
;MOTOR.c: 95: PORTA = 0x06;
	movlw	(06h)
	movwf	(5)	;volatile
	line	96
;MOTOR.c: 96: retardo(tm1);
	movf	(derecha@tm1),w
	fcall	_retardo
	line	97
	
l2472:	
;MOTOR.c: 97: PORTA = 0x03;
	movlw	(03h)
	movwf	(5)	;volatile
	line	98
	
l2474:	
;MOTOR.c: 98: retardo(tm1);
	movf	(derecha@tm1),w
	fcall	_retardo
	line	99
;MOTOR.c: 99: PORTA = 0x09;
	movlw	(09h)
	movwf	(5)	;volatile
	line	100
	
l2476:	
;MOTOR.c: 100: retardo(tm1);
	movf	(derecha@tm1),w
	fcall	_retardo
	line	101
	
l1077:	
	return
	opt stack 0
GLOBAL	__end_of_derecha
	__end_of_derecha:
;; =============== function _derecha ends ============

	signat	_derecha,4216
	global	_retardo
psect	text38,local,class=CODE,delta=2
global __ptext38
__ptext38:

;; *************** function _retardo *****************
;; Defined at:
;;		line 116 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\MOTOR\MOTOR.c"
;; Parameters:    Size  Location     Type
;;  retar           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  retar           1    0[COMMON] unsigned char 
;;  VC              1    3[COMMON] unsigned char 
;;  VB              1    2[COMMON] unsigned char 
;;  VA              1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_derecha
;;		_izquierda
;; This function uses a non-reentrant model
;;
psect	text38
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\MOTOR\MOTOR.c"
	line	116
	global	__size_of_retardo
	__size_of_retardo	equ	__end_of_retardo-_retardo
	
_retardo:	
	opt	stack 6
; Regs used in _retardo: [wreg+status,2+status,0]
;retardo@retar stored from wreg
	line	123
	movwf	(retardo@retar)
	
l2442:	
	goto	l2450
	
l2446:	
	decf	(retardo@VA),f
	
l2448:	
	movf	(retardo@VA),w
	skipz
	goto	u10
	goto	l2446
u10:
	line	124
	
l2450:	
	goto	l2458
	
l2454:	
	decf	(retardo@VB),f
	
l2456:	
	movf	(retardo@VB),w
	skipz
	goto	u20
	goto	l2454
u20:
	line	125
	
l2458:	
;MOTOR.c: 125: for(char VC = retar;VC<=0x00; VC--);
	movf	(retardo@retar),w
	movwf	(retardo@VC)
	movf	(retardo@VC),w
	skipz
	goto	u30
	goto	l2462
u30:
	goto	l1089
	
l2462:	
	decf	(retardo@VC),f
	
l2464:	
	movf	(retardo@VC),w
	skipz
	goto	u40
	goto	l2462
u40:
	line	139
	
l1089:	
	return
	opt stack 0
GLOBAL	__end_of_retardo
	__end_of_retardo:
;; =============== function _retardo ends ============

	signat	_retardo,4216
psect	text39,local,class=CODE,delta=2
global __ptext39
__ptext39:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
