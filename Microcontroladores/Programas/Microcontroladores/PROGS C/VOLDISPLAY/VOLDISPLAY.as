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
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\VOLDISPLAY\VOLDISPLAY.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\VOLDISPLAY\VOLDISPLAY.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\VOLDISPLAY\VOLDISPLAY.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\VOLDISPLAY\VOLDISPLAY.c"
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
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\VOLDISPLAY\VOLDISPLAY.c"
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
	global	_NU
	global	_NUM
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_TMR0
_TMR0	set	1
	global	_GO_DONE
_GO_DONE	set	249
	global	_T0IF
_T0IF	set	90
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
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
	file	"VOLDISPLAY.as"
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

_NU:
       ds      2

_NUM:
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
	global	??_digitos
??_digitos:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	digitos@x
digitos@x:	; 1 bytes @ 0x0
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
	ds	1
;;Data sizes: Strings 0, constant 20, data 0, bss 8, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      13
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0      75
;;                                              4 COMMON     1     1      0
;;                            _digitos
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _pause                                                4     2      2      30
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (2) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _digitos                                              1     1      0      45
;;                                              0 COMMON     1     1      0
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
;;COMMON               E      5       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       D       3        0.0%
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
;;DATA                 0      0       F      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 42 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\VOLDISPLAY\VOLDISPLAY.c"
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
;;		On exit  : 11F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_digitos
;;		_pause
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\VOLDISPLAY\VOLDISPLAY.c"
	line	42
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	43
	
l2450:	
;VOLDISPLAY.c: 43: ANSEL = 0x60;
	movlw	(060h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	44
	
l2452:	
;VOLDISPLAY.c: 44: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	46
	
l2454:	
;VOLDISPLAY.c: 46: TRISA = 0x00;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	47
	
l2456:	
;VOLDISPLAY.c: 47: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	48
	
l2458:	
;VOLDISPLAY.c: 48: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	49
	
l2460:	
;VOLDISPLAY.c: 49: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	50
	
l2462:	
;VOLDISPLAY.c: 50: TRISE = 0x03;
	movlw	(03h)
	movwf	(137)^080h	;volatile
	line	51
;VOLDISPLAY.c: 51: ADCON1 = 0x00;
	clrf	(159)^080h	;volatile
	line	56
	
l2464:	
;VOLDISPLAY.c: 54: {
;VOLDISPLAY.c: 56: ADCON0=0XD5;
	movlw	(0D5h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	57
	
l2466:	
;VOLDISPLAY.c: 57: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	58
;VOLDISPLAY.c: 58: while(GO_DONE);
	
l1052:	
	btfsc	(249/8),(249)&7
	goto	u61
	goto	u60
u61:
	goto	l1052
u60:
	line	60
	
l2468:	
;VOLDISPLAY.c: 60: NUM=(ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_NUM)
	clrf	(_NUM+1)
	
l2470:	
	clrc
	rlf	(_NUM),f
	rlf	(_NUM+1),f
	clrc
	rlf	(_NUM),f
	rlf	(_NUM+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_main+0)+0
	movlw	06h
u75:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u75
	movf	0+(??_main+0)+0,w
	iorwf	(_NUM),f
	line	62
	
l2472:	
;VOLDISPLAY.c: 62: digitos(NUM);
	movf	(_NUM),w
	fcall	_digitos
	line	64
	
l2474:	
;VOLDISPLAY.c: 64: PORTC = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(7)	;volatile
	line	65
	
l2476:	
;VOLDISPLAY.c: 65: PORTA = DP7[NU];
	clrc
	rlf	(_NU),w
	addlw	low((_DP7-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(5)	;volatile
	line	66
	
l2478:	
;VOLDISPLAY.c: 66: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	68
	
l2480:	
;VOLDISPLAY.c: 68: PORTC = 0x02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	69
	
l2482:	
;VOLDISPLAY.c: 69: PORTA = DP7[ND];
	clrc
	rlf	(_ND),w
	addlw	low((_DP7-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(5)	;volatile
	line	70
	
l2484:	
;VOLDISPLAY.c: 70: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	72
	
l2486:	
;VOLDISPLAY.c: 72: PORTC = 0x04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	73
	
l2488:	
;VOLDISPLAY.c: 73: PORTA = DP7[NC];
	clrc
	rlf	(_NC),w
	addlw	low((_DP7-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(5)	;volatile
	line	74
	
l2490:	
;VOLDISPLAY.c: 74: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	goto	l2464
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	82
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
;;		line 85 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\VOLDISPLAY\VOLDISPLAY.c"
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
psect	text43
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\VOLDISPLAY\VOLDISPLAY.c"
	line	85
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 6
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	87
	
l2442:	
;VOLDISPLAY.c: 86: unsigned short x;
;VOLDISPLAY.c: 87: for (x=0; x<usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l2448
	line	89
	
l2444:	
;VOLDISPLAY.c: 88: {
;VOLDISPLAY.c: 89: msecbase();
	fcall	_msecbase
	line	87
	
l2446:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l2448:	
	movf	(pause@usvalue+1),w
	subwf	(pause@x+1),w
	skipz
	goto	u55
	movf	(pause@usvalue),w
	subwf	(pause@x),w
u55:
	skipc
	goto	u51
	goto	u50
u51:
	goto	l2444
u50:
	line	91
	
l1063:	
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
;;		line 94 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\VOLDISPLAY\VOLDISPLAY.c"
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
psect	text44
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\VOLDISPLAY\VOLDISPLAY.c"
	line	94
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 6
; Regs used in _msecbase: [wreg]
	line	95
	
l2440:	
;VOLDISPLAY.c: 95: OPTION_REG = 0b11010110;
	movlw	(0D6h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	96
;VOLDISPLAY.c: 96: TMR0 = 0x7A;
	movlw	(07Ah)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	97
;VOLDISPLAY.c: 97: while(!T0IF);
	
l1066:	
	btfss	(90/8),(90)&7
	goto	u41
	goto	u40
u41:
	goto	l1066
u40:
	
l1068:	
	line	98
;VOLDISPLAY.c: 98: T0IF = 0;
	bcf	(90/8),(90)&7
	line	99
	
l1069:	
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
;;		line 20 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\VOLDISPLAY\VOLDISPLAY.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/20
;;		On exit  : 17F/20
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
;; This function uses a non-reentrant model
;;
psect	text45
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\VOLDISPLAY\VOLDISPLAY.c"
	line	20
	global	__size_of_digitos
	__size_of_digitos	equ	__end_of_digitos-_digitos
	
_digitos:	
	opt	stack 7
; Regs used in _digitos: [wreg+status,2+status,0]
;digitos@x stored from wreg
	line	22
	movwf	(digitos@x)
	
l2422:	
;VOLDISPLAY.c: 22: NC = 0;
	clrf	(_NC)
	clrf	(_NC+1)
	line	23
;VOLDISPLAY.c: 23: ND = 0;
	clrf	(_ND)
	clrf	(_ND+1)
	line	24
;VOLDISPLAY.c: 24: NU = 0;
	clrf	(_NU)
	clrf	(_NU+1)
	line	26
;VOLDISPLAY.c: 26: while(x>=0x33){
	goto	l2428
	line	27
	
l2424:	
;VOLDISPLAY.c: 27: x=x-0x33;
	movlw	(0CDh)
	addwf	(digitos@x),f
	line	28
	
l2426:	
;VOLDISPLAY.c: 28: NC++;
	incf	(_NC),f
	skipnz
	incf	(_NC+1),f
	line	26
	
l2428:	
	movlw	(033h)
	subwf	(digitos@x),w
	skipnc
	goto	u11
	goto	u10
u11:
	goto	l2424
u10:
	goto	l2432
	line	31
	
l2430:	
;VOLDISPLAY.c: 31: x=x-0x05;
	movlw	(0FBh)
	addwf	(digitos@x),f
	line	30
	
l2432:	
	movlw	(05h)
	subwf	(digitos@x),w
	skipnc
	goto	u21
	goto	u20
u21:
	goto	l2430
u20:
	goto	l2438
	line	35
	
l2434:	
;VOLDISPLAY.c: 35: x=x-0x01;
	movlw	(0FFh)
	addwf	(digitos@x),f
	line	36
	
l2436:	
;VOLDISPLAY.c: 36: NU++;
	incf	(_NU),f
	skipnz
	incf	(_NU+1),f
	line	34
	
l2438:	
	movf	(digitos@x),f
	skipz
	goto	u31
	goto	u30
u31:
	goto	l2434
u30:
	line	39
	
l1048:	
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
