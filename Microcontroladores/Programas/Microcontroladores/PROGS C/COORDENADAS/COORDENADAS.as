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
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF& 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_pause
	FNCALL	_main,_POSX
	FNCALL	_main,_POSY
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	_PX
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
	line	14

;initializer for _PX
	retlw	01h
	retlw	02h
	retlw	04h
	retlw	08h
	retlw	010h
	retlw	020h
	retlw	040h
	retlw	080h
	global	_ADC1
	global	_ADC2
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
	file	"COORDENADAS.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_ADC1:
       ds      1

_ADC2:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
_PX:
       ds      8

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
	fcall	__pidataBANK0+6		;fetch initializer
	movwf	__pdataBANK0+6&07fh		
	fcall	__pidataBANK0+7		;fetch initializer
	movwf	__pdataBANK0+7&07fh		
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
	global	?_POSX
?_POSX:	; 0 bytes @ 0x0
	global	??_POSX
??_POSX:	; 0 bytes @ 0x0
	global	?_POSY
?_POSY:	; 0 bytes @ 0x0
	global	??_POSY
??_POSY:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	POSX@x1
POSX@x1:	; 1 bytes @ 0x0
	global	POSY@x2
POSY@x2:	; 1 bytes @ 0x0
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
;;Data sizes: Strings 0, constant 0, data 8, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       8
;; BANK0           80      0       8
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
;; (0) _main                                                 2     2      0     338
;;                                              4 COMMON     2     2      0
;;                              _pause
;;                               _POSX
;;                               _POSY
;; ---------------------------------------------------------------------------------
;; (1) _pause                                                4     2      2      30
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (2) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _POSY                                                 1     1      0     154
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _POSX                                                 1     1      0     154
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _pause
;;     _msecbase
;;   _POSX
;;   _POSY
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      12      12        0.0%
;;ABS                  0      0      10       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      0       8       5       10.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      6       8       1       57.1%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 56 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pause
;;		_POSX
;;		_POSY
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
	line	56
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l2603:	
;COORDENADAS.c: 58: ANSEL = 0x60;
	movlw	(060h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	59
	
l2605:	
;COORDENADAS.c: 59: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	60
	
l2607:	
;COORDENADAS.c: 60: TRISB = 0xFF;
	movlw	(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	61
;COORDENADAS.c: 61: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	62
;COORDENADAS.c: 62: TRISD =0x00;
	clrf	(136)^080h	;volatile
	line	63
;COORDENADAS.c: 63: TRISC =0x00;
	clrf	(135)^080h	;volatile
	line	64
	
l2609:	
;COORDENADAS.c: 64: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	68
	
l2611:	
;COORDENADAS.c: 68: ADCON0 = 0xD5;
	movlw	(0D5h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	69
	
l2613:	
;COORDENADAS.c: 69: GO_DONE = 1;
	bsf	(249/8),(249)&7
	line	70
;COORDENADAS.c: 70: while(GO_DONE);
	
l1072:	
	btfsc	(249/8),(249)&7
	goto	u351
	goto	u350
u351:
	goto	l1072
u350:
	line	71
	
l2615:	
;COORDENADAS.c: 71: ADC1 = (ADRESH<<2)|(ADRESL>>6);
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_main+0)+0
	movlw	06h
u365:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u365
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+1)+0
	clrc
	rlf	(??_main+1)+0,f
	clrc
	rlf	(??_main+1)+0,w
	iorwf	0+(??_main+0)+0,w
	movwf	(_ADC1)
	line	72
	
l2617:	
;COORDENADAS.c: 72: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	75
	
l2619:	
;COORDENADAS.c: 75: ADCON0 = 0xD9;
	movlw	(0D9h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	76
	
l2621:	
;COORDENADAS.c: 76: GO_DONE = 1;
	bsf	(249/8),(249)&7
	line	77
;COORDENADAS.c: 77: while(GO_DONE);
	
l1075:	
	btfsc	(249/8),(249)&7
	goto	u371
	goto	u370
u371:
	goto	l1075
u370:
	line	78
	
l2623:	
;COORDENADAS.c: 78: ADC2 = (ADRESH<<2)|(ADRESL>>6);
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_main+0)+0
	movlw	06h
u385:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u385
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+1)+0
	clrc
	rlf	(??_main+1)+0,f
	clrc
	rlf	(??_main+1)+0,w
	iorwf	0+(??_main+0)+0,w
	movwf	(_ADC2)
	line	80
	
l2625:	
;COORDENADAS.c: 80: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	82
	
l2627:	
;COORDENADAS.c: 82: POSX(ADC1);
	movf	(_ADC1),w
	fcall	_POSX
	line	84
	
l2629:	
;COORDENADAS.c: 84: POSY(ADC2);
	movf	(_ADC2),w
	fcall	_POSY
	goto	l2611
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	87
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_pause
psect	text106,local,class=CODE,delta=2
global __ptext106
__ptext106:

;; *************** function _pause *****************
;; Defined at:
;;		line 90 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
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
psect	text106
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
	line	90
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 6
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	93
	
l2507:	
;COORDENADAS.c: 91: unsigned short x;
;COORDENADAS.c: 93: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l2513
	line	95
	
l2509:	
;COORDENADAS.c: 94: {
;COORDENADAS.c: 95: msecbase();
	fcall	_msecbase
	line	93
	
l2511:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l2513:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u165
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u165:
	skipnc
	goto	u161
	goto	u160
u161:
	goto	l2509
u160:
	line	97
	
l1086:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	_msecbase
psect	text107,local,class=CODE,delta=2
global __ptext107
__ptext107:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 100 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
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
psect	text107
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
	line	100
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 6
; Regs used in _msecbase: [wreg]
	line	101
	
l2505:	
;COORDENADAS.c: 101: OPTION_REG = 0b11010001;
	movlw	(0D1h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	102
;COORDENADAS.c: 102: TMR0 = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	103
;COORDENADAS.c: 103: TMR0 = 0x8E;
	movlw	(08Eh)
	movwf	(1)	;volatile
	line	104
;COORDENADAS.c: 104: while(!T0IF);
	
l1089:	
	btfss	(90/8),(90)&7
	goto	u151
	goto	u150
u151:
	goto	l1089
u150:
	
l1091:	
	line	105
;COORDENADAS.c: 105: T0IF = 0;
	bcf	(90/8),(90)&7
	line	106
	
l1092:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_POSY
psect	text108,local,class=CODE,delta=2
global __ptext108
__ptext108:

;; *************** function _POSY *****************
;; Defined at:
;;		line 36 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
;; Parameters:    Size  Location     Type
;;  x2              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x2              1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text108
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
	line	36
	global	__size_of_POSY
	__size_of_POSY	equ	__end_of_POSY-_POSY
	
_POSY:	
	opt	stack 7
; Regs used in _POSY: [wreg]
;POSY@x2 stored from wreg
	movwf	(POSY@x2)
	line	37
	
l2573:	
;COORDENADAS.c: 37: if(x2<=0x29){
	movlw	(02Ah)
	subwf	(POSY@x2),w
	skipnc
	goto	u281
	goto	u280
u281:
	goto	l2577
u280:
	line	38
	
l2575:	
;COORDENADAS.c: 38: PORTC=PX[1];
	movf	0+(_PX)+01h,w
	movwf	(7)	;volatile
	line	39
;COORDENADAS.c: 39: }else if(x2<=0x48){
	goto	l1068
	
l2577:	
	movlw	(049h)
	subwf	(POSY@x2),w
	skipnc
	goto	u291
	goto	u290
u291:
	goto	l2581
u290:
	line	40
	
l2579:	
;COORDENADAS.c: 40: PORTC=PX[2];
	movf	0+(_PX)+02h,w
	movwf	(7)	;volatile
	line	41
;COORDENADAS.c: 41: }else if(x2<=0x66){
	goto	l1068
	
l2581:	
	movlw	(067h)
	subwf	(POSY@x2),w
	skipnc
	goto	u301
	goto	u300
u301:
	goto	l2585
u300:
	line	42
	
l2583:	
;COORDENADAS.c: 42: PORTC=PX[3];
	movf	0+(_PX)+03h,w
	movwf	(7)	;volatile
	line	43
;COORDENADAS.c: 43: }else if(x2<=0x85){
	goto	l1068
	
l2585:	
	movlw	(086h)
	subwf	(POSY@x2),w
	skipnc
	goto	u311
	goto	u310
u311:
	goto	l2589
u310:
	line	44
	
l2587:	
;COORDENADAS.c: 44: PORTC=PX[4];
	movf	0+(_PX)+04h,w
	movwf	(7)	;volatile
	line	45
;COORDENADAS.c: 45: }else if(x2<=0xA3){
	goto	l1068
	
l2589:	
	movlw	(0A4h)
	subwf	(POSY@x2),w
	skipnc
	goto	u321
	goto	u320
u321:
	goto	l2593
u320:
	line	46
	
l2591:	
;COORDENADAS.c: 46: PORTC=PX[5];
	movf	0+(_PX)+05h,w
	movwf	(7)	;volatile
	line	47
;COORDENADAS.c: 47: }else if(x2<=0xC2){
	goto	l1068
	
l2593:	
	movlw	(0C3h)
	subwf	(POSY@x2),w
	skipnc
	goto	u331
	goto	u330
u331:
	goto	l2597
u330:
	line	48
	
l2595:	
;COORDENADAS.c: 48: PORTC=PX[6];
	movf	0+(_PX)+06h,w
	movwf	(7)	;volatile
	line	49
;COORDENADAS.c: 49: }else if(x2<=0xE1){
	goto	l1068
	
l2597:	
	movlw	(0E2h)
	subwf	(POSY@x2),w
	skipnc
	goto	u341
	goto	u340
u341:
	goto	l2601
u340:
	line	50
	
l2599:	
;COORDENADAS.c: 50: PORTC=PX[7];
	movf	0+(_PX)+07h,w
	movwf	(7)	;volatile
	line	51
;COORDENADAS.c: 51: }else if(x2<=0xFF){
	goto	l1068
	line	52
	
l2601:	
;COORDENADAS.c: 52: PORTC=PX[8];
	movf	0+(_PX)+08h,w
	movwf	(7)	;volatile
	line	54
	
l1068:	
	return
	opt stack 0
GLOBAL	__end_of_POSY
	__end_of_POSY:
;; =============== function _POSY ends ============

	signat	_POSY,4216
	global	_POSX
psect	text109,local,class=CODE,delta=2
global __ptext109
__ptext109:

;; *************** function _POSX *****************
;; Defined at:
;;		line 16 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
;; Parameters:    Size  Location     Type
;;  x1              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x1              1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text109
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\Faltan\COORDENADAS\COORDENADAS.c"
	line	16
	global	__size_of_POSX
	__size_of_POSX	equ	__end_of_POSX-_POSX
	
_POSX:	
	opt	stack 7
; Regs used in _POSX: [wreg]
;POSX@x1 stored from wreg
	movwf	(POSX@x1)
	line	17
	
l2543:	
;COORDENADAS.c: 17: if(x1<=0x29){
	movlw	(02Ah)
	subwf	(POSX@x1),w
	skipnc
	goto	u211
	goto	u210
u211:
	goto	l2547
u210:
	line	18
	
l2545:	
;COORDENADAS.c: 18: PORTA=PX[1];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_PX)+01h,w
	movwf	(5)	;volatile
	line	19
;COORDENADAS.c: 19: }else if(x1<=0x48){
	goto	l1050
	
l2547:	
	movlw	(049h)
	subwf	(POSX@x1),w
	skipnc
	goto	u221
	goto	u220
u221:
	goto	l2551
u220:
	line	20
	
l2549:	
;COORDENADAS.c: 20: PORTA=PX[2];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_PX)+02h,w
	movwf	(5)	;volatile
	line	21
;COORDENADAS.c: 21: }else if(x1<=0x66){
	goto	l1050
	
l2551:	
	movlw	(067h)
	subwf	(POSX@x1),w
	skipnc
	goto	u231
	goto	u230
u231:
	goto	l2555
u230:
	line	22
	
l2553:	
;COORDENADAS.c: 22: PORTA=PX[3];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_PX)+03h,w
	movwf	(5)	;volatile
	line	23
;COORDENADAS.c: 23: }else if(x1<=0x85){
	goto	l1050
	
l2555:	
	movlw	(086h)
	subwf	(POSX@x1),w
	skipnc
	goto	u241
	goto	u240
u241:
	goto	l2559
u240:
	line	24
	
l2557:	
;COORDENADAS.c: 24: PORTA=PX[4];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_PX)+04h,w
	movwf	(5)	;volatile
	line	25
;COORDENADAS.c: 25: }else if(x1<=0xA3){
	goto	l1050
	
l2559:	
	movlw	(0A4h)
	subwf	(POSX@x1),w
	skipnc
	goto	u251
	goto	u250
u251:
	goto	l2563
u250:
	line	26
	
l2561:	
;COORDENADAS.c: 26: PORTA=PX[5];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_PX)+05h,w
	movwf	(5)	;volatile
	line	27
;COORDENADAS.c: 27: }else if(x1<=0xC2){
	goto	l1050
	
l2563:	
	movlw	(0C3h)
	subwf	(POSX@x1),w
	skipnc
	goto	u261
	goto	u260
u261:
	goto	l2567
u260:
	line	28
	
l2565:	
;COORDENADAS.c: 28: PORTA=PX[6];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_PX)+06h,w
	movwf	(5)	;volatile
	line	29
;COORDENADAS.c: 29: }else if(x1<=0xE1){
	goto	l1050
	
l2567:	
	movlw	(0E2h)
	subwf	(POSX@x1),w
	skipnc
	goto	u271
	goto	u270
u271:
	goto	l2571
u270:
	line	30
	
l2569:	
;COORDENADAS.c: 30: PORTA=PX[7];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_PX)+07h,w
	movwf	(5)	;volatile
	line	31
;COORDENADAS.c: 31: }else if(x1<=0xFF){
	goto	l1050
	line	32
	
l2571:	
;COORDENADAS.c: 32: PORTA=PX[8];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_PX)+08h,w
	movwf	(5)	;volatile
	line	34
	
l1050:	
	return
	opt stack 0
GLOBAL	__end_of_POSX
	__end_of_POSX:
;; =============== function _POSX ends ============

	signat	_POSX,4216
psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
