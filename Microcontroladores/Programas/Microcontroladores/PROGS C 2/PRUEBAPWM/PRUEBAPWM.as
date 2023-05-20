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
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PRUEBAPWM\PRUEBAPWM.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PRUEBAPWM\PRUEBAPWM.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 5 "C:\Users\Jorge\OneDrive\Escritorio\PRUEBAPWM\PRUEBAPWM.c"
	psect config,class=CONFIG,delta=2 ;#
# 5 "C:\Users\Jorge\OneDrive\Escritorio\PRUEBAPWM\PRUEBAPWM.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_ADC
	FNCALL	_main,_PWM
	FNCALL	_PWM,_pause
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	_vadc1
	global	_vadc2
	global	_ADCON0
psect	text60,local,class=CODE,delta=2
global __ptext60
__ptext60:
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
	global	_ADCON1
_ADCON1	set	159
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
	file	"PRUEBAPWM.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_vadc1:
       ds      2

_vadc2:
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
	global	?_ADC
?_ADC:	; 0 bytes @ 0x0
	global	??_ADC
??_ADC:	; 0 bytes @ 0x0
	global	?_PWM
?_PWM:	; 0 bytes @ 0x0
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
	global	??_PWM
??_PWM:	; 0 bytes @ 0x4
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x6
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
;;   _main->_PWM
;;   _PWM->_pause
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
;;                                _ADC
;;                                _PWM
;; ---------------------------------------------------------------------------------
;; (1) _PWM                                                  2     2      0      30
;;                                              4 COMMON     2     2      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (2) _pause                                                4     2      2      30
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (3) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _ADC                                                  1     1      0       0
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _ADC
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
;;COMMON               E      6       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
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
;;DATA                 0      0       D      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "C:\Users\Jorge\OneDrive\Escritorio\PRUEBAPWM\PRUEBAPWM.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC
;;		_PWM
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\PRUEBAPWM\PRUEBAPWM.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	19
	
l2461:	
;PRUEBAPWM.c: 19: ANSEL = 0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	20
;PRUEBAPWM.c: 20: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	21
;PRUEBAPWM.c: 21: TRISA= 0x00;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	22
;PRUEBAPWM.c: 22: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	23
;PRUEBAPWM.c: 23: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	24
	
l2463:	
;PRUEBAPWM.c: 24: TRISD = 0x0F;
	movlw	(0Fh)
	movwf	(136)^080h	;volatile
	line	25
	
l2465:	
;PRUEBAPWM.c: 25: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	26
	
l2467:	
;PRUEBAPWM.c: 26: ADCON1 = 0x80;
	movlw	(080h)
	movwf	(159)^080h	;volatile
	line	28
	
l2469:	
;PRUEBAPWM.c: 28: T2CON = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	29
	
l2471:	
;PRUEBAPWM.c: 29: PR2 = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	31
	
l2473:	
;PRUEBAPWM.c: 31: CCPR1L = 0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	32
	
l2475:	
;PRUEBAPWM.c: 32: CCP1CON = 0x0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	37
	
l2477:	
;PRUEBAPWM.c: 35: {
;PRUEBAPWM.c: 37: ADC();
	fcall	_ADC
	line	39
	
l2479:	
;PRUEBAPWM.c: 39: PWM();
	fcall	_PWM
	goto	l2477
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	42
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_PWM
psect	text61,local,class=CODE,delta=2
global __ptext61
__ptext61:

;; *************** function _PWM *****************
;; Defined at:
;;		line 57 in file "C:\Users\Jorge\OneDrive\Escritorio\PRUEBAPWM\PRUEBAPWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/20
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
psect	text61
	file	"C:\Users\Jorge\OneDrive\Escritorio\PRUEBAPWM\PRUEBAPWM.c"
	line	57
	global	__size_of_PWM
	__size_of_PWM	equ	__end_of_PWM-_PWM
	
_PWM:	
	opt	stack 5
; Regs used in _PWM: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l2443:	
;PRUEBAPWM.c: 58: ADRESH=vadc1>>2;
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
	bcf	status, 5	;RP0=0, select bank0
	movwf	(30)	;volatile
	line	59
	
l2445:	
;PRUEBAPWM.c: 59: ADRESL=vadc1<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	60
	
l2447:	
;PRUEBAPWM.c: 60: CCPR1L=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(21)	;volatile
	line	61
	
l2449:	
;PRUEBAPWM.c: 61: CCP1CON=0X0C|(ADRESL>>2);
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
	line	62
	
l2451:	
;PRUEBAPWM.c: 62: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	64
	
l2453:	
;PRUEBAPWM.c: 64: ADRESH=vadc2>>2;
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(30)	;volatile
	line	65
	
l2455:	
;PRUEBAPWM.c: 65: ADRESL=vadc2<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	66
	
l2457:	
;PRUEBAPWM.c: 66: CCPR2L=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(27)	;volatile
	line	67
	
l2459:	
;PRUEBAPWM.c: 67: CCP2CON=0X0C|(ADRESL>>2);
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
	line	68
;PRUEBAPWM.c: 68: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	70
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_PWM
	__end_of_PWM:
;; =============== function _PWM ends ============

	signat	_PWM,88
	global	_pause
psect	text62,local,class=CODE,delta=2
global __ptext62
__ptext62:

;; *************** function _pause *****************
;; Defined at:
;;		line 73 in file "C:\Users\Jorge\OneDrive\Escritorio\PRUEBAPWM\PRUEBAPWM.c"
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
;;		_PWM
;; This function uses a non-reentrant model
;;
psect	text62
	file	"C:\Users\Jorge\OneDrive\Escritorio\PRUEBAPWM\PRUEBAPWM.c"
	line	73
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 5
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	76
	
l2435:	
;PRUEBAPWM.c: 74: unsigned short x;
;PRUEBAPWM.c: 76: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l2441
	line	78
	
l2437:	
;PRUEBAPWM.c: 77: {
;PRUEBAPWM.c: 78: msecbase();
	fcall	_msecbase
	line	76
	
l2439:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l2441:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u65
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u65:
	skipnc
	goto	u61
	goto	u60
u61:
	goto	l2437
u60:
	line	80
	
l1058:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	_msecbase
psect	text63,local,class=CODE,delta=2
global __ptext63
__ptext63:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 83 in file "C:\Users\Jorge\OneDrive\Escritorio\PRUEBAPWM\PRUEBAPWM.c"
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
psect	text63
	file	"C:\Users\Jorge\OneDrive\Escritorio\PRUEBAPWM\PRUEBAPWM.c"
	line	83
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 5
; Regs used in _msecbase: [wreg]
	line	84
	
l2433:	
;PRUEBAPWM.c: 84: OPTION_REG = 0b11010001;
	movlw	(0D1h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	85
;PRUEBAPWM.c: 85: TMR0 = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	87
;PRUEBAPWM.c: 87: while(!T0IF);
	
l1061:	
	btfss	(90/8),(90)&7
	goto	u51
	goto	u50
u51:
	goto	l1061
u50:
	
l1063:	
	line	88
;PRUEBAPWM.c: 88: T0IF = 0;
	bcf	(90/8),(90)&7
	line	89
	
l1064:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_ADC
psect	text64,local,class=CODE,delta=2
global __ptext64
__ptext64:

;; *************** function _ADC *****************
;; Defined at:
;;		line 44 in file "C:\Users\Jorge\OneDrive\Escritorio\PRUEBAPWM\PRUEBAPWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 11F/0
;;		On exit  : 17F/20
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text64
	file	"C:\Users\Jorge\OneDrive\Escritorio\PRUEBAPWM\PRUEBAPWM.c"
	line	44
	global	__size_of_ADC
	__size_of_ADC	equ	__end_of_ADC-_ADC
	
_ADC:	
	opt	stack 7
; Regs used in _ADC: [wreg+status,2+status,0]
	line	45
	
l2417:	
;PRUEBAPWM.c: 45: ADCON0=0xD5;
	movlw	(0D5h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	46
	
l2419:	
;PRUEBAPWM.c: 46: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	47
;PRUEBAPWM.c: 47: while(GO_DONE);
	
l1043:	
	btfsc	(249/8),(249)&7
	goto	u11
	goto	u10
u11:
	goto	l1043
u10:
	line	48
	
l2421:	
;PRUEBAPWM.c: 48: vadc1=(ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_vadc1)
	clrf	(_vadc1+1)
	
l2423:	
	clrc
	rlf	(_vadc1),f
	rlf	(_vadc1+1),f
	clrc
	rlf	(_vadc1),f
	rlf	(_vadc1+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_ADC+0)+0
	movlw	06h
u25:
	clrc
	rrf	(??_ADC+0)+0,f
	addlw	-1
	skipz
	goto	u25
	movf	0+(??_ADC+0)+0,w
	iorwf	(_vadc1),f
	line	50
	
l2425:	
;PRUEBAPWM.c: 50: ADCON0=0xD9;
	movlw	(0D9h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	51
	
l2427:	
;PRUEBAPWM.c: 51: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	52
;PRUEBAPWM.c: 52: while(GO_DONE);
	
l1046:	
	btfsc	(249/8),(249)&7
	goto	u31
	goto	u30
u31:
	goto	l1046
u30:
	line	53
	
l2429:	
;PRUEBAPWM.c: 53: vadc2=(ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_vadc2)
	clrf	(_vadc2+1)
	
l2431:	
	clrc
	rlf	(_vadc2),f
	rlf	(_vadc2+1),f
	clrc
	rlf	(_vadc2),f
	rlf	(_vadc2+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_ADC+0)+0
	movlw	06h
u45:
	clrc
	rrf	(??_ADC+0)+0,f
	addlw	-1
	skipz
	goto	u45
	movf	0+(??_ADC+0)+0,w
	iorwf	(_vadc2),f
	line	55
	
l1049:	
	return
	opt stack 0
GLOBAL	__end_of_ADC
	__end_of_ADC:
;; =============== function _ADC ends ============

	signat	_ADC,88
psect	text65,local,class=CODE,delta=2
global __ptext65
__ptext65:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
