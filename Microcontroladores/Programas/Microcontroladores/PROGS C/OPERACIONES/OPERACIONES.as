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
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\OPERACIONES\OPERACIONES.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\OPERACIONES\OPERACIONES.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\OPERACIONES\OPERACIONES.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\OPERACIONES\OPERACIONES.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,___bmul
	FNCALL	_main,___lbdiv
	FNROOT	_main
	global	_NA
	global	_NB
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\OPERACIONES\OPERACIONES.c"
	line	12

;initializer for _NA
	retlw	0Fh
	line	13

;initializer for _NB
	retlw	0F0h
	global	_OP
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_OP:
       ds      1

	global	_RS
_RS:
       ds      1

	global	_VPA
_VPA:
       ds      1

	global	_VPB
_VPB:
       ds      1

	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
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
	file	"OPERACIONES.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\OPERACIONES\OPERACIONES.c"
	line	12
_NA:
       ds      1

psect	dataCOMMON
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\OPERACIONES\OPERACIONES.c"
	line	13
_NB:
       ds      1

; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___bmul
?___bmul:	; 1 bytes @ 0x0
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x0
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x1
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x1
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x1
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x2
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x2
	ds	1
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x3
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x4
;;Data sizes: Strings 0, constant 0, data 2, bss 0, persistent 4 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4      10
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___lbdiv
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
;; (0) _main                                                 0     0      0     165
;;                             ___bmul
;;                            ___lbdiv
;; ---------------------------------------------------------------------------------
;; (1) ___lbdiv                                              4     3      1     105
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (1) ___bmul                                               3     2      1      60
;;                                              0 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   ___bmul
;;   ___lbdiv
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
;;DATA                 0      0       B      12        0.0%
;;ABS                  0      0       A       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      4       A       1       71.4%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 18 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\OPERACIONES\OPERACIONES.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___bmul
;;		___lbdiv
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\OPERACIONES\OPERACIONES.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	20
	
l2482:	
;OPERACIONES.c: 20: ANSEL = 0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	21
;OPERACIONES.c: 21: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	23
;OPERACIONES.c: 23: TRISA = 0x00;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	24
	
l2484:	
;OPERACIONES.c: 24: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	25
	
l2486:	
;OPERACIONES.c: 25: TRISC = 0xFF;
	movlw	(0FFh)
	movwf	(135)^080h	;volatile
	line	26
;OPERACIONES.c: 26: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	27
;OPERACIONES.c: 27: TRISE = 0x00;
	clrf	(137)^080h	;volatile
	line	32
	
l2488:	
;OPERACIONES.c: 30: {
;OPERACIONES.c: 32: NA = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	movf	(6),w	;volatile
	movwf	(_NA)
	line	33
	
l2490:	
;OPERACIONES.c: 33: NB = PORTB;
	movf	(6),w	;volatile
	movwf	(_NB)
	line	35
	
l2492:	
;OPERACIONES.c: 35: VPA=NA>>4;
	swapf	(_NA),w
	andlw	(0ffh shr 4) & 0ffh
	movwf	(_VPA)
	line	37
	
l2494:	
;OPERACIONES.c: 37: NB=NB<<4;
swapf	(_NB),f
	movlw	240
	andwf	(_NB),f

	line	38
	
l2496:	
;OPERACIONES.c: 38: VPB=NB>>4;
	swapf	(_NB),w
	andlw	(0ffh shr 4) & 0ffh
	movwf	(_VPB)
	line	40
	
l2498:	
;OPERACIONES.c: 40: OP = PORTC;
	movf	(7),w	;volatile
	movwf	(_OP)
	line	42
;OPERACIONES.c: 42: switch(OP){
	goto	l2520
	line	45
	
l2500:	
;OPERACIONES.c: 45: RS = VPA + VPB;
	movf	(_VPB),w
	addwf	(_VPA),w
	movwf	(_RS)
	line	46
	
l2502:	
;OPERACIONES.c: 46: PORTA = RS;
	movf	(_RS),w
	movwf	(5)	;volatile
	line	47
;OPERACIONES.c: 47: break;
	goto	l2488
	line	50
	
l2504:	
;OPERACIONES.c: 50: RS = VPA - VPB;
	movf	(_VPB),w
	subwf	(_VPA),w
	movwf	(_RS)
	goto	l2502
	line	55
	
l2508:	
;OPERACIONES.c: 55: RS = VPA * VPB;
	movf	(_VPB),w
	movwf	(?___bmul)
	movf	(_VPA),w
	fcall	___bmul
	movwf	(_RS)
	goto	l2502
	line	60
	
l2512:	
;OPERACIONES.c: 60: RS = VPB / VPA;
	movf	(_VPA),w
	movwf	(?___lbdiv)
	movf	(_VPB),w
	fcall	___lbdiv
	movwf	(_RS)
	goto	l2502
	line	65
	
l2516:	
;OPERACIONES.c: 65: RS = 0xFF;
	movlw	(0FFh)
	movwf	(_RS)
	line	66
;OPERACIONES.c: 66: PORTA = RS;
	movlw	(0FFh)
	movwf	(5)	;volatile
	line	67
;OPERACIONES.c: 67: break;
	goto	l2488
	line	42
	
l2520:	
	movf	(_OP),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           20     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable             8     6 (fixed)
; spacedrange           14     9 (fixed)
; locatedrange           4     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2500
	xorlw	1^0	; case 1
	skipnz
	goto	l2504
	xorlw	2^1	; case 2
	skipnz
	goto	l2508
	xorlw	3^2	; case 3
	skipnz
	goto	l2512
	goto	l2516
	opt asmopt_on

	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	89
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	___lbdiv
psect	text26,local,class=CODE,delta=2
global __ptext26
__ptext26:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    1[COMMON] unsigned char 
;;  quotient        1    3[COMMON] unsigned char 
;;  counter         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 7
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l2458:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2460:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u30
	goto	l2478
u30:
	line	11
	
l2462:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2466
	
l2078:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2464:	
	incf	(___lbdiv@counter),f
	line	12
	
l2466:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u41
	goto	u40
u41:
	goto	l2078
u40:
	line	16
	
l2080:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2468:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u51
	goto	u50
u51:
	goto	l2474
u50:
	line	19
	
l2470:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2472:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2474:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2476:	
	decfsz	(___lbdiv@counter),f
	goto	u61
	goto	u60
u61:
	goto	l2080
u60:
	line	25
	
l2478:	
	movf	(___lbdiv@quotient),w
	line	26
	
l2083:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___bmul
psect	text27,local,class=CODE,delta=2
global __ptext27
__ptext27:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    2[COMMON] unsigned char 
;;  product         1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 7
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l2442:	
	clrf	(___bmul@product)
	line	7
	
l2444:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u11
	goto	u10
u11:
	goto	l2448
u10:
	line	8
	
l2446:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l2448:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l2450:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l2452:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u21
	goto	u20
u21:
	goto	l2444
u20:
	line	12
	
l2454:	
	movf	(___bmul@product),w
	line	13
	
l2047:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
psect	text28,local,class=CODE,delta=2
global __ptext28
__ptext28:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
