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
# 5 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\NOMBRE\NOMBRE.c"
	psect config,class=CONFIG,delta=2 ;#
# 5 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\NOMBRE\NOMBRE.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF& 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 6 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\NOMBRE\NOMBRE.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\NOMBRE\NOMBRE.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_pause
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	_LETRA1
	global	_POS
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\NOMBRE\NOMBRE.c"
	line	13

;initializer for _LETRA1
	retlw	0
	retlw	022h
	retlw	042h
	retlw	042h
	retlw	042h
	retlw	03Eh
	retlw	02h
	retlw	0
	retlw	0
	retlw	07Ch
	retlw	012h
	retlw	012h
	retlw	012h
	retlw	012h
	retlw	07Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	03Ch
	retlw	042h
	retlw	042h
	retlw	042h
	retlw	0
	retlw	0
	retlw	0
	retlw	022h
	retlw	042h
	retlw	042h
	retlw	042h
	retlw	03Eh
	retlw	02h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	line	11

;initializer for _POS
	retlw	0
	retlw	01h
	retlw	02h
	retlw	04h
	retlw	08h
	retlw	010h
	retlw	020h
	retlw	040h
	retlw	080h
	global	_j
	global	_k
	global	_i
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_i:
       ds      2

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
	file	"NOMBRE.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_j:
       ds      2

_k:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\NOMBRE\NOMBRE.c"
	line	13
_LETRA1:
       ds      36

psect	dataBANK0
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\NOMBRE\NOMBRE.c"
	line	11
_POS:
       ds      9

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+45)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
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
;;Data sizes: Strings 0, constant 0, data 45, bss 4, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      12
;; BANK0           80      0      45
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
;; (0) _main                                                 2     2      0      46
;;                                              4 COMMON     2     2      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _pause                                                4     2      2      46
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
;;DATA                 0      0      3B      12        0.0%
;;ABS                  0      0      39       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      0      2D       5       56.3%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      6       C       1       85.7%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 21 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\NOMBRE\NOMBRE.c"
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
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\NOMBRE\NOMBRE.c"
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	23
	
l2473:	
;NOMBRE.c: 23: ANSEL = 0x60;
	movlw	(060h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	24
	
l2475:	
;NOMBRE.c: 24: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	25
	
l2477:	
;NOMBRE.c: 25: TRISB = 0xFF;
	movlw	(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	26
;NOMBRE.c: 26: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	27
;NOMBRE.c: 27: TRISD =0x00;
	clrf	(136)^080h	;volatile
	line	28
;NOMBRE.c: 28: TRISC =0x00;
	clrf	(135)^080h	;volatile
	line	29
	
l2479:	
;NOMBRE.c: 29: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	33
	
l2481:	
;NOMBRE.c: 33: for(i=0;i<=32+4;i++){
	clrf	(_i)
	clrf	(_i+1)
	line	35
	
l2485:	
;NOMBRE.c: 35: for(k=1;k<=50;k++){
	clrf	(_k)
	incf	(_k),f
	clrf	(_k+1)
	line	37
	
l2491:	
;NOMBRE.c: 37: for(j=0;j<=9;j++){
	clrf	(_j)
	clrf	(_j+1)
	line	39
	
l2497:	
;NOMBRE.c: 39: PORTC=POS[j];
	movf	(_j),w
	addlw	_POS&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	41
;NOMBRE.c: 41: PORTA = LETRA1[j+i];
	movlw	(_LETRA1)&0ffh
	addwf	(_j),w
	movwf	(??_main+0)+0
	movf	(_i),w
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	0+(??_main+1)+0,w
	movwf	fsr0
	movf	indf,w
	movwf	(5)	;volatile
	line	43
	
l2499:	
;NOMBRE.c: 43: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	37
	
l2501:	
	incf	(_j),f
	skipnz
	incf	(_j+1),f
	
l2503:	
	movlw	high(0Ah)
	subwf	(_j+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(_j),w
	skipc
	goto	u81
	goto	u80
u81:
	goto	l2497
u80:
	line	35
	
l2505:	
	incf	(_k),f
	skipnz
	incf	(_k+1),f
	
l2507:	
	movlw	high(033h)
	subwf	(_k+1),w
	movlw	low(033h)
	skipnz
	subwf	(_k),w
	skipc
	goto	u91
	goto	u90
u91:
	goto	l2491
u90:
	line	33
	
l2509:	
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	
l2511:	
	movlw	high(025h)
	subwf	(_i+1),w
	movlw	low(025h)
	skipnz
	subwf	(_i),w
	skipc
	goto	u101
	goto	u100
u101:
	goto	l2485
u100:
	goto	l2481
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	52
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_pause
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:

;; *************** function _pause *****************
;; Defined at:
;;		line 55 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\NOMBRE\NOMBRE.c"
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
psect	text84
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\NOMBRE\NOMBRE.c"
	line	55
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 6
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l2465:	
;NOMBRE.c: 56: unsigned short x;
;NOMBRE.c: 58: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l2471
	line	60
	
l2467:	
;NOMBRE.c: 59: {
;NOMBRE.c: 60: msecbase();
	fcall	_msecbase
	line	58
	
l2469:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l2471:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u75
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u75:
	skipnc
	goto	u71
	goto	u70
u71:
	goto	l2467
u70:
	line	62
	
l1054:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	_msecbase
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 65 in file "C:\Users\Jorge\OneDrive\Escritorio\PROGS C\NOMBRE\NOMBRE.c"
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
psect	text85
	file	"C:\Users\Jorge\OneDrive\Escritorio\PROGS C\NOMBRE\NOMBRE.c"
	line	65
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 6
; Regs used in _msecbase: [wreg]
	line	66
	
l2463:	
;NOMBRE.c: 66: OPTION_REG = 0b11010001;
	movlw	(0D1h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	67
;NOMBRE.c: 67: TMR0 = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	68
;NOMBRE.c: 68: TMR0 = 0x8E;
	movlw	(08Eh)
	movwf	(1)	;volatile
	line	69
;NOMBRE.c: 69: while(!T0IF);
	
l1057:	
	btfss	(90/8),(90)&7
	goto	u61
	goto	u60
u61:
	goto	l1057
u60:
	
l1059:	
	line	70
;NOMBRE.c: 70: T0IF = 0;
	bcf	(90/8),(90)&7
	line	71
	
l1060:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
