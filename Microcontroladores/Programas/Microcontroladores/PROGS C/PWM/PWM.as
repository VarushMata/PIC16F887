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
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\PWM\PWM.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\PWM\PWM.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF& 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\PWM\PWM.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\PWM\PWM.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_pause
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	_ADC1
	global	_ADC2
	global	_ADCON0
psect	text36,local,class=CODE,delta=2
global __ptext36
__ptext36:
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
	global	_T2CON
_T2CON	set	18
	global	_TMR0
_TMR0	set	1
	global	_GO_DONE
_GO_DONE	set	249
	global	_T0IF
_T0IF	set	90
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_PR2
_PR2	set	146
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
	global	_ADRESL
_ADRESL	set	158
	file	"PWM.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_ADC1:
       ds      2

_ADC2:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
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
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 4, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      10
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0      30
;;                                              4 COMMON     2     2      0
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
;;COMMON               E      6       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       A       3        0.0%
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
;;DATA                 0      0       C      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\PWM\PWM.c"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pause
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\PWM\PWM.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l2417:	
;PWM.c: 14: ANSEL = 0x60;
	movlw	(060h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	15
	
l2419:	
;PWM.c: 15: ANSELH = 0;
	clrf	(393)^0180h	;volatile
	line	16
	
l2421:	
;PWM.c: 16: TRISB = 0xFF;
	movlw	(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	17
;PWM.c: 17: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	19
;PWM.c: 19: TRISD =0;
	clrf	(136)^080h	;volatile
	line	20
;PWM.c: 20: TRISC =0;
	clrf	(135)^080h	;volatile
	line	21
	
l2423:	
;PWM.c: 21: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	22
	
l2425:	
;PWM.c: 22: T2CON = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	23
	
l2427:	
;PWM.c: 23: PR2 = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	25
	
l2429:	
;PWM.c: 25: CCPR1L = 0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	26
	
l2431:	
;PWM.c: 26: CCP1CON = 0x0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	30
	
l2433:	
;PWM.c: 30: ADCON0 = 0xD5;
	movlw	(0D5h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	31
	
l2435:	
;PWM.c: 31: GO_DONE = 1;
	bsf	(249/8),(249)&7
	line	32
;PWM.c: 32: while(GO_DONE);
	
l1034:	
	btfsc	(249/8),(249)&7
	goto	u31
	goto	u30
u31:
	goto	l1034
u30:
	line	33
	
l2437:	
;PWM.c: 33: ADC1 = (ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_ADC1)
	clrf	(_ADC1+1)
	
l2439:	
	clrc
	rlf	(_ADC1),f
	rlf	(_ADC1+1),f
	clrc
	rlf	(_ADC1),f
	rlf	(_ADC1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_main+0)+0
	movlw	06h
u45:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u45
	movf	0+(??_main+0)+0,w
	iorwf	(_ADC1),f
	line	35
;PWM.c: 35: ADRESH = ADC1>>2;
	movf	(_ADC1+1),w
	movwf	(??_main+0)+0+1
	movf	(_ADC1),w
	movwf	(??_main+0)+0
	clrc
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	clrc
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	movf	0+(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(30)	;volatile
	line	36
	
l2441:	
;PWM.c: 36: ADRESL = ADC2<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	37
	
l2443:	
;PWM.c: 37: CCPR1L = ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(21)	;volatile
	line	38
	
l2445:	
;PWM.c: 38: CCP1CON = 0x0C|(ADRESL>>2);
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_main+0)+0
	clrc
	rrf	(??_main+0)+0,f
	clrc
	rrf	(??_main+0)+0,f
	movf	0+(??_main+0)+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	40
	
l2447:	
;PWM.c: 40: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	42
	
l2449:	
;PWM.c: 42: ADCON0 = 0xD9;
	movlw	(0D9h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	43
	
l2451:	
;PWM.c: 43: GO_DONE = 1;
	bsf	(249/8),(249)&7
	line	44
;PWM.c: 44: while(GO_DONE);
	
l1037:	
	btfsc	(249/8),(249)&7
	goto	u51
	goto	u50
u51:
	goto	l1037
u50:
	line	45
	
l2453:	
;PWM.c: 45: ADC2 = (ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_ADC2)
	clrf	(_ADC2+1)
	
l2455:	
	clrc
	rlf	(_ADC2),f
	rlf	(_ADC2+1),f
	clrc
	rlf	(_ADC2),f
	rlf	(_ADC2+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_main+0)+0
	movlw	06h
u65:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u65
	movf	0+(??_main+0)+0,w
	iorwf	(_ADC2),f
	line	47
;PWM.c: 47: ADRESH = ADC2>>2;
	movf	(_ADC2+1),w
	movwf	(??_main+0)+0+1
	movf	(_ADC2),w
	movwf	(??_main+0)+0
	clrc
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	clrc
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	movf	0+(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(30)	;volatile
	line	48
	
l2457:	
;PWM.c: 48: ADRESL = ADC2<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	49
	
l2459:	
;PWM.c: 49: CCPR2L = ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(27)	;volatile
	line	50
	
l2461:	
;PWM.c: 50: CCP2CON = 0x0C|(ADRESL>>2);
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_main+0)+0
	clrc
	rrf	(??_main+0)+0,f
	clrc
	rrf	(??_main+0)+0,f
	movf	0+(??_main+0)+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	movwf	(29)	;volatile
	line	52
	
l2463:	
;PWM.c: 52: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	goto	l2433
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	55
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
;;		line 58 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\PWM\PWM.c"
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
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\PWM\PWM.c"
	line	58
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 6
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	61
	
l2409:	
;PWM.c: 59: unsigned short x;
;PWM.c: 61: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l2415
	line	63
	
l2411:	
;PWM.c: 62: {
;PWM.c: 63: msecbase();
	fcall	_msecbase
	line	61
	
l2413:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l2415:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u25
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u25:
	skipnc
	goto	u21
	goto	u20
u21:
	goto	l2411
u20:
	line	65
	
l1048:	
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
;;		line 68 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\PWM\PWM.c"
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
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\PWM\PWM.c"
	line	68
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 6
; Regs used in _msecbase: [wreg]
	line	69
	
l2407:	
;PWM.c: 69: OPTION_REG = 0b11010001;
	movlw	(0D1h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	70
;PWM.c: 70: TMR0 = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	71
;PWM.c: 71: TMR0 = 0x8E;
	movlw	(08Eh)
	movwf	(1)	;volatile
	line	72
;PWM.c: 72: while(!T0IF);
	
l1051:	
	btfss	(90/8),(90)&7
	goto	u11
	goto	u10
u11:
	goto	l1051
u10:
	
l1053:	
	line	73
;PWM.c: 73: T0IF = 0;
	bcf	(90/8),(90)&7
	line	74
	
l1054:	
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
