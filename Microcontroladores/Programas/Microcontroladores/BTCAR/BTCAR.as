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
# 7 "C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF& 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 8 "C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_init_comms
	FNCALL	_main,_getch
	FNCALL	_main,_SR
	FNCALL	_main,_rutina
	FNCALL	_main,_PWM
	FNCALL	_main,_line
	FNCALL	_SR,___lwdiv
	FNCALL	_SR,_printf
	FNCALL	_SR,_sprintf
	FNCALL	_SR,_atoi
	FNCALL	_sprintf,__doprnt
	FNCALL	_printf,__doprnt
	FNCALL	_line,_PWM
	FNCALL	_rutina,_PWM
	FNCALL	__doprnt,Fake
	FNCALL	__doprnt,_putch
	FNCALL	__doprnt,___lwdiv
	FNCALL	__doprnt,___lwmod
	FNCALL	_atoi,___wmul
	FNCALL	_atoi,_isdigit
	FNROOT	_main
	global	_dir
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
	line	77

;initializer for _dir
	retlw	01h
	global	_dpowers
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
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_dato
	global	_pwm1
	global	_pwm2
	global	_vel
	global	_carac1
	global	_dist
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_dist:
       ds      2

	global	_op
_op:
       ds      1

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
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_T1CON
_T1CON	set	16
	global	_T2CON
_T2CON	set	18
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RCIF
_RCIF	set	101
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_PR2
_PR2	set	146
	global	_SPBRG
_SPBRG	set	153
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
	global	_TXSTA
_TXSTA	set	152
	global	_ADFM
_ADFM	set	1279
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISB6
_TRISB6	set	1078
	global	_TRISB7
_TRISB7	set	1079
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_BAUDCTL
_BAUDCTL	set	391
	global	_ADRESL
_ADRESL	set	158
psect	strings
	
STR_3:	
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
STR_2	equ	STR_1+0
	file	"BTCAR.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_dato:
       ds      2

_pwm1:
       ds      2

_pwm2:
       ds      2

_vel:
       ds      1

_carac1:
       ds      4

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
	line	77
_dir:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_SR
?_SR:	; 0 bytes @ 0x0
	global	?_rutina
?_rutina:	; 0 bytes @ 0x0
	global	?_PWM
?_PWM:	; 0 bytes @ 0x0
	global	??_PWM
??_PWM:	; 0 bytes @ 0x0
	global	?_line
?_line:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	??_getch
??_getch:	; 0 bytes @ 0x0
	global	?_init_comms
?_init_comms:	; 0 bytes @ 0x0
	global	??_init_comms
??_init_comms:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_getch
?_getch:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	global	_isdigit$2399
_isdigit$2399:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
	global	??_rutina
??_rutina:	; 0 bytes @ 0x2
	global	??_line
??_line:	; 0 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	2
	global	?_atoi
?_atoi:	; 2 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x7
	ds	1
	global	??_atoi
??_atoi:	; 0 bytes @ 0x8
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	ds	1
	global	atoi@sign
atoi@sign:	; 1 bytes @ 0xA
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	global	atoi@a
atoi@a:	; 2 bytes @ 0xB
	ds	1
	global	?__doprnt
?__doprnt:	; 2 bytes @ 0xC
	global	__doprnt@f
__doprnt@f:	; 1 bytes @ 0xC
	ds	1
	global	__doprnt@ap
__doprnt@ap:	; 1 bytes @ 0xD
	global	atoi@s
atoi@s:	; 1 bytes @ 0xD
	ds	1
	global	??_printf
??_printf:	; 0 bytes @ 0xE
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??__doprnt
??__doprnt:	; 0 bytes @ 0x0
	ds	2
	global	__doprnt@flag
__doprnt@flag:	; 1 bytes @ 0x2
	ds	1
	global	__doprnt@prec
__doprnt@prec:	; 1 bytes @ 0x3
	ds	1
	global	__doprnt@_val
__doprnt@_val:	; 4 bytes @ 0x4
	ds	4
	global	__doprnt@c
__doprnt@c:	; 1 bytes @ 0x8
	ds	1
	global	__doprnt@pb
__doprnt@pb:	; 1 bytes @ 0x9
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0xA
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xA
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0xA
	ds	2
	global	printf@f
printf@f:	; 1 bytes @ 0xC
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0xD
	global	sprintf@wh
sprintf@wh:	; 1 bytes @ 0xD
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0xE
	global	printf@pb
printf@pb:	; 2 bytes @ 0xE
	ds	1
	global	sprintf@pb
sprintf@pb:	; 2 bytes @ 0xF
	ds	2
	global	??_SR
??_SR:	; 0 bytes @ 0x11
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x12
	ds	3
	global	main@x
main@x:	; 2 bytes @ 0x15
	ds	2
;;Data sizes: Strings 8, constant 10, data 1, bss 11, persistent 3 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     23      38
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?_atoi	int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 3
;;		 -> STR_2(CODE[3]), 
;;
;; ?_sprintf	int  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), carac1(BANK0[4]), 
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; sprintf@wh	PTR unsigned char  size(1) Largest target is 4
;;		 -> carac1(BANK0[4]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), carac1(BANK0[4]), 
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 5
;;		 -> STR_3(CODE[5]), STR_1(CODE[3]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), carac1(BANK0[4]), 
;;
;; atoi@s	PTR const unsigned char  size(1) Largest target is 4
;;		 -> carac1(BANK0[4]), 
;;
;; _doprnt@ap	PTR PTR void  size(1) Largest target is 2
;;		 -> sprintf@ap(BANK0[1]), printf@ap(BANK0[1]), 
;;
;; _doprnt@f	PTR const unsigned char  size(1) Largest target is 5
;;		 -> STR_3(CODE[5]), STR_2(CODE[3]), STR_1(CODE[3]), 
;;
;; S1846__prbuf$func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; _doprnt@pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; S1846__prbuf$ptr	PTR unsigned char  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), carac1(BANK0[4]), 
;;
;; _doprnt@pb.ptr	PTR unsigned char  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), carac1(BANK0[4]), 
;;
;; _doprnt@pb	PTR struct __prbuf size(1) Largest target is 3
;;		 -> sprintf@pb(BANK0[2]), printf@pb(BANK0[2]), 
;;
;; S1865$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _SR->_atoi
;;   _sprintf->__doprnt
;;   _printf->__doprnt
;;   _line->_PWM
;;   _rutina->_PWM
;;   __doprnt->___lwmod
;;   _atoi->___wmul
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_SR
;;   _SR->_sprintf
;;   _sprintf->__doprnt
;;   _printf->__doprnt
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 5     5      0    2940
;;                                             18 BANK0      5     5      0
;;                         _init_comms
;;                              _getch
;;                                 _SR
;;                             _rutina
;;                                _PWM
;;                               _line
;; ---------------------------------------------------------------------------------
;; (1) _SR                                                   1     1      0    2894
;;                                             17 BANK0      1     1      0
;;                            ___lwdiv
;;                             _printf
;;                            _sprintf
;;                               _atoi
;; ---------------------------------------------------------------------------------
;; (2) _sprintf                                              7     4      3    1200
;;                                             10 BANK0      7     4      3
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (2) _printf                                               6     4      2    1144
;;                                             10 BANK0      6     4      2
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (1) _line                                                 0     0      0       0
;;                                _PWM
;; ---------------------------------------------------------------------------------
;; (1) _rutina                                               3     3      0       0
;;                                              2 COMMON     3     3      0
;;                                _PWM
;; ---------------------------------------------------------------------------------
;; (3) __doprnt                                             12    10      2    1035
;;                                             12 COMMON     2     0      2
;;                                              0 BANK0     10    10      0
;;                   Absolute function
;;                              _putch
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (2) _atoi                                                 8     6      2     388
;;                                              6 COMMON     8     6      2
;;                             ___wmul
;;                            _isdigit
;; ---------------------------------------------------------------------------------
;; (2) _PWM                                                  2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (4) ___lwmod                                              5     1      4     159
;;                                              7 COMMON     5     1      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___lwdiv                                              7     3      4     162
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (3) _isdigit                                              2     2      0      68
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (4) Absolute function(Fake)                               1     0      1       0
;;                                              0 COMMON     1     0      1
;; ---------------------------------------------------------------------------------
;; (1) _init_comms                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _getch                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _putch                                                1     0      1      22
;;                                              0 COMMON     1     0      1
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init_comms
;;   _getch
;;   _SR
;;     ___lwdiv
;;     _printf
;;       __doprnt
;;         Absolute function(Fake)
;;         _putch
;;         ___lwdiv
;;         ___lwmod
;;           ___lwdiv (ARG)
;;     _sprintf
;;       __doprnt
;;         Absolute function(Fake)
;;         _putch
;;         ___lwdiv
;;         ___lwmod
;;           ___lwdiv (ARG)
;;     _atoi
;;       ___wmul
;;       _isdigit
;;   _rutina
;;     _PWM
;;   _PWM
;;   _line
;;     _PWM
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
;;DATA                 0      0      38      12        0.0%
;;ABS                  0      0      34       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
;;BANK0               50     17      26       5       47.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 80 in file "C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2   21[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_init_comms
;;		_getch
;;		_SR
;;		_rutina
;;		_PWM
;;		_line
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
	line	80
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	82
	
l3555:	
;BTCAR.c: 82: ANSEL = 0x60;
	movlw	(060h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	83
	
l3557:	
;BTCAR.c: 83: ANSELH = 0x00;
	clrf	(393)^0180h	;volatile
	line	84
	
l3559:	
;BTCAR.c: 84: TRISB = 0xFF;
	movlw	(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	85
	
l3561:	
;BTCAR.c: 85: TRISB0 = 1;
	bsf	(1072/8)^080h,(1072)&7
	line	86
	
l3563:	
;BTCAR.c: 86: TRISB1 = 0;
	bcf	(1073/8)^080h,(1073)&7
	line	87
	
l3565:	
;BTCAR.c: 87: TRISB7 = 1;
	bsf	(1079/8)^080h,(1079)&7
	line	88
	
l3567:	
;BTCAR.c: 88: TRISB6 = 1;
	bsf	(1078/8)^080h,(1078)&7
	line	89
;BTCAR.c: 89: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	90
;BTCAR.c: 90: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	91
;BTCAR.c: 91: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	92
	
l3569:	
;BTCAR.c: 92: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	93
	
l3571:	
;BTCAR.c: 93: ADCON1 = 0xFF;
	movlw	(0FFh)
	movwf	(159)^080h	;volatile
	line	95
;BTCAR.c: 95: T1CON = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(16)	;volatile
	line	96
;BTCAR.c: 96: TMR1H=0x00;
	clrf	(15)	;volatile
	line	97
;BTCAR.c: 97: TMR1L=0x00;
	clrf	(14)	;volatile
	line	99
	
l3573:	
;BTCAR.c: 99: T2CON = 0x07;
	movlw	(07h)
	movwf	(18)	;volatile
	line	100
	
l3575:	
;BTCAR.c: 100: PR2 = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	101
	
l3577:	
;BTCAR.c: 101: CCPR1L = 0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	102
	
l3579:	
;BTCAR.c: 102: CCP1CON = 0x0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	103
	
l3581:	
;BTCAR.c: 103: ADFM = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1279/8)^080h,(1279)&7
	line	105
	
l3583:	
;BTCAR.c: 105: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(49/8),(49)&7
	line	106
	
l3585:	
;BTCAR.c: 106: RB0=0;
	bcf	(48/8),(48)&7
	line	108
	
l3587:	
;BTCAR.c: 108: init_comms();
	fcall	_init_comms
	line	112
	
l3589:	
;BTCAR.c: 112: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	113
	
l3591:	
;BTCAR.c: 113: RA1 = 0;
	bcf	(41/8),(41)&7
	line	114
	
l3593:	
;BTCAR.c: 114: RA2 = 0;
	bcf	(42/8),(42)&7
	line	115
	
l3595:	
;BTCAR.c: 115: RA3 = 0;
	bcf	(43/8),(43)&7
	line	116
	
l3597:	
;BTCAR.c: 116: TMR1H=0x00;
	clrf	(15)	;volatile
	line	117
	
l3599:	
;BTCAR.c: 117: TMR1L=0x00;
	clrf	(14)	;volatile
	line	118
	
l3601:	
;BTCAR.c: 118: dist=0;
	clrf	(_dist)
	clrf	(_dist+1)
	line	119
	
l3603:	
;BTCAR.c: 119: dir=1;
	clrf	(_dir)
	incf	(_dir),f
	line	121
	
l3605:	
;BTCAR.c: 121: op = getch();
	fcall	_getch
	movwf	(_op)
	line	123
;BTCAR.c: 123: switch(op){
	goto	l3697
	line	127
	
l3607:	
;BTCAR.c: 127: SR();
	fcall	_SR
	line	129
;BTCAR.c: 129: break;
	goto	l3699
	line	133
	
l3609:	
;BTCAR.c: 133: rutina();
	fcall	_rutina
	line	135
;BTCAR.c: 135: break;
	goto	l3699
	line	137
;BTCAR.c: 137: case '3':
	
l1079:	
	line	139
;BTCAR.c: 139: while(dir!='0'){
	goto	l1080
	line	141
	
l3611:	
;BTCAR.c: 141: dir=getch();
	fcall	_getch
	movwf	(_dir)
	line	142
;BTCAR.c: 142: vel=getch();
	fcall	_getch
	movwf	(_vel)
	line	144
	
l3613:	
;BTCAR.c: 144: if(vel=='1'){
	movf	(_vel),w
	xorlw	031h
	skipz
	goto	u981
	goto	u980
u981:
	goto	l3619
u980:
	line	145
	
l3615:	
;BTCAR.c: 145: pwm1=500;
	movlw	low(01F4h)
	movwf	(_pwm1)
	movlw	high(01F4h)
	movwf	((_pwm1))+1
	line	146
;BTCAR.c: 146: pwm2=500;
	movlw	low(01F4h)
	movwf	(_pwm2)
	movlw	high(01F4h)
	movwf	((_pwm2))+1
	line	147
	
l3617:	
;BTCAR.c: 147: PWM();
	fcall	_PWM
	line	148
;BTCAR.c: 148: }else if(vel=='2'){
	goto	l3631
	
l3619:	
	movf	(_vel),w
	xorlw	032h
	skipz
	goto	u991
	goto	u990
u991:
	goto	l3625
u990:
	line	149
	
l3621:	
;BTCAR.c: 149: pwm1=765;
	movlw	low(02FDh)
	movwf	(_pwm1)
	movlw	high(02FDh)
	movwf	((_pwm1))+1
	line	150
;BTCAR.c: 150: pwm2=765;
	movlw	low(02FDh)
	movwf	(_pwm2)
	movlw	high(02FDh)
	movwf	((_pwm2))+1
	goto	l3617
	line	152
	
l3625:	
	movf	(_vel),w
	xorlw	033h
	skipz
	goto	u1001
	goto	u1000
u1001:
	goto	l3631
u1000:
	line	153
	
l3627:	
;BTCAR.c: 153: pwm1=1023;
	movlw	low(03FFh)
	movwf	(_pwm1)
	movlw	high(03FFh)
	movwf	((_pwm1))+1
	line	154
;BTCAR.c: 154: pwm2=1023;
	movlw	low(03FFh)
	movwf	(_pwm2)
	movlw	high(03FFh)
	movwf	((_pwm2))+1
	goto	l3617
	line	158
	
l3631:	
;BTCAR.c: 156: }
;BTCAR.c: 158: if(dir=='1'){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dir),w
	xorlw	031h
	skipz
	goto	u1011
	goto	u1010
u1011:
	goto	l3641
u1010:
	line	159
	
l3633:	
;BTCAR.c: 159: RA0 = 1;
	bsf	(40/8),(40)&7
	line	160
;BTCAR.c: 160: RA2 = 1;
	bsf	(42/8),(42)&7
	line	161
	
l3635:	
;BTCAR.c: 161: _delay((unsigned long)((300)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	134
movwf	((??_main+0)+0+1),f
	movlw	153
movwf	((??_main+0)+0),f
u1077:
	decfsz	((??_main+0)+0),f
	goto	u1077
	decfsz	((??_main+0)+0+1),f
	goto	u1077
	decfsz	((??_main+0)+0+2),f
	goto	u1077
opt asmopt_on

	line	162
	
l3637:	
;BTCAR.c: 162: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	163
	
l3639:	
;BTCAR.c: 163: RA2 = 0;
	bcf	(42/8),(42)&7
	line	164
;BTCAR.c: 164: }else if(dir=='2'){
	goto	l1080
	
l3641:	
	movf	(_dir),w
	xorlw	032h
	skipz
	goto	u1021
	goto	u1020
u1021:
	goto	l3651
u1020:
	line	165
	
l3643:	
;BTCAR.c: 165: RA1 = 1;
	bsf	(41/8),(41)&7
	line	166
;BTCAR.c: 166: RA3 = 1;
	bsf	(43/8),(43)&7
	line	167
	
l3645:	
;BTCAR.c: 167: _delay((unsigned long)((300)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	134
movwf	((??_main+0)+0+1),f
	movlw	153
movwf	((??_main+0)+0),f
u1087:
	decfsz	((??_main+0)+0),f
	goto	u1087
	decfsz	((??_main+0)+0+1),f
	goto	u1087
	decfsz	((??_main+0)+0+2),f
	goto	u1087
opt asmopt_on

	line	168
	
l3647:	
;BTCAR.c: 168: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	169
	
l3649:	
;BTCAR.c: 169: RA3 = 0;
	bcf	(43/8),(43)&7
	line	170
;BTCAR.c: 170: }else if(dir=='3'){
	goto	l1080
	
l3651:	
	movf	(_dir),w
	xorlw	033h
	skipz
	goto	u1031
	goto	u1030
u1031:
	goto	l3661
u1030:
	line	171
	
l3653:	
;BTCAR.c: 171: RA0 = 1;
	bsf	(40/8),(40)&7
	line	172
;BTCAR.c: 172: RA2 = 0;
	bcf	(42/8),(42)&7
	goto	l3635
	line	176
	
l3661:	
	movf	(_dir),w
	xorlw	034h
	skipz
	goto	u1041
	goto	u1040
u1041:
	goto	l1079
u1040:
	line	177
	
l3663:	
;BTCAR.c: 177: RA0 = 0;
	bcf	(40/8),(40)&7
	line	178
;BTCAR.c: 178: RA2 = 1;
	bsf	(42/8),(42)&7
	goto	l3635
	line	183
	
l1080:	
	line	139
	movf	(_dir),w
	xorlw	030h
	skipz
	goto	u1051
	goto	u1050
u1051:
	goto	l3611
u1050:
	goto	l3699
	line	189
	
l3671:	
;BTCAR.c: 189: for(int x=0;x<1000;x++){
	clrf	(main@x)
	clrf	(main@x+1)
	line	191
	
l3677:	
;BTCAR.c: 191: line();
	fcall	_line
	line	192
	
l3679:	
;BTCAR.c: 192: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u1097:
	decfsz	((??_main+0)+0),f
	goto	u1097
	decfsz	((??_main+0)+0+1),f
	goto	u1097
	clrwdt
opt asmopt_on

	line	193
	
l3681:	
;BTCAR.c: 193: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	194
	
l3683:	
;BTCAR.c: 194: RA1 = 0;
	bcf	(41/8),(41)&7
	line	195
	
l3685:	
;BTCAR.c: 195: RA2 = 0;
	bcf	(42/8),(42)&7
	line	196
	
l3687:	
;BTCAR.c: 196: RA3 = 0;
	bcf	(43/8),(43)&7
	line	189
	
l3689:	
	incf	(main@x),f
	skipnz
	incf	(main@x+1),f
	
l3691:	
	movf	(main@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1065
	movlw	low(03E8h)
	subwf	(main@x),w
u1065:

	skipc
	goto	u1061
	goto	u1060
u1061:
	goto	l3677
u1060:
	goto	l3699
	line	203
	
l3693:	
;BTCAR.c: 203: op = 0;
	clrf	(_op)
	line	204
;BTCAR.c: 204: break;
	goto	l3699
	line	123
	
l3697:	
	movf	(_op),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 49 to 52
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	49^0	; case 49
	skipnz
	goto	l3607
	xorlw	50^49	; case 50
	skipnz
	goto	l3609
	xorlw	51^50	; case 51
	skipnz
	goto	l1080
	xorlw	52^51	; case 52
	skipnz
	goto	l3671
	goto	l3693
	opt asmopt_on

	line	207
	
l3699:	
;BTCAR.c: 207: _delay((unsigned long)((50)*(4000000/4000000.0)));
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u1107:
decfsz	(??_main+0)+0,f
	goto	u1107
	clrwdt
opt asmopt_on

	goto	l3589
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	209
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_SR
psect	text316,local,class=CODE,delta=2
global __ptext316
__ptext316:

;; *************** function _SR *****************
;; Defined at:
;;		line 254 in file "C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		_printf
;;		_sprintf
;;		_atoi
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text316
	file	"C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
	line	254
	global	__size_of_SR
	__size_of_SR	equ	__end_of_SR-_SR
	
_SR:	
	opt	stack 4
; Regs used in _SR: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	255
	
l3521:	
;BTCAR.c: 255: RB1=0;
	bcf	(49/8),(49)&7
	line	256
;BTCAR.c: 256: _delay((unsigned long)((2)*(4000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	257
;BTCAR.c: 257: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	258
	
l3523:	
;BTCAR.c: 258: _delay((unsigned long)((10)*(4000000/4000000.0)));
	opt asmopt_off
movlw	3
movwf	(??_SR+0)+0,f
u1117:
decfsz	(??_SR+0)+0,f
	goto	u1117
opt asmopt_on

	line	259
	
l3525:	
;BTCAR.c: 259: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	261
;BTCAR.c: 261: while(!RB0);
	
l1113:	
	btfss	(48/8),(48)&7
	goto	u901
	goto	u900
u901:
	goto	l1113
u900:
	
l1115:	
	line	262
;BTCAR.c: 262: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	263
;BTCAR.c: 263: while(RB0 && !TMR1IF);
	
l1116:	
	btfss	(48/8),(48)&7
	goto	u911
	goto	u910
u911:
	goto	l1120
u910:
	
l3527:	
	btfss	(96/8),(96)&7
	goto	u921
	goto	u920
u921:
	goto	l1116
u920:
	
l1120:	
	line	264
;BTCAR.c: 264: TMR1ON=0;
	bcf	(128/8),(128)&7
	line	266
;BTCAR.c: 266: if(!TMR1IF){
	btfsc	(96/8),(96)&7
	goto	u931
	goto	u930
u931:
	goto	l3531
u930:
	line	267
	
l3529:	
;BTCAR.c: 267: dist = (TMR1H<<8 | TMR1L);
	movf	(15),w	;volatile
	movwf	(_dist+1)
	clrf	(_dist)
	movf	(14),w	;volatile
	iorwf	(_dist),f
	line	268
;BTCAR.c: 268: }else{
	goto	l3535
	line	269
	
l3531:	
;BTCAR.c: 269: dist=0;
	clrf	(_dist)
	clrf	(_dist+1)
	line	270
	
l3533:	
;BTCAR.c: 270: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	273
	
l3535:	
;BTCAR.c: 271: }
;BTCAR.c: 273: dist = (dist)/58;
	movlw	03Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(_dist+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(_dist),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(_dist+1)
	movf	(0+(?___lwdiv)),w
	movwf	(_dist)
	line	275
	
l3537:	
;BTCAR.c: 275: if(dist<3 || 390<dist){
	movlw	high(03h)
	subwf	(_dist+1),w
	movlw	low(03h)
	skipnz
	subwf	(_dist),w
	skipc
	goto	u941
	goto	u940
u941:
	goto	l3541
u940:
	
l3539:	
	movlw	high(0187h)
	subwf	(_dist+1),w
	movlw	low(0187h)
	skipnz
	subwf	(_dist),w
	skipc
	goto	u951
	goto	u950
u951:
	goto	l3545
u950:
	line	276
	
l3541:	
;BTCAR.c: 276: dato = 0;
	clrf	(_dato)
	clrf	(_dato+1)
	line	277
	
l3543:	
;BTCAR.c: 277: printf("%d",dato);
	clrf	(?_printf)
	clrf	(?_printf+1)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	278
;BTCAR.c: 278: }else if(3<dist || dist<390){
	goto	l1130
	
l3545:	
	movlw	high(04h)
	subwf	(_dist+1),w
	movlw	low(04h)
	skipnz
	subwf	(_dist),w
	skipnc
	goto	u961
	goto	u960
u961:
	goto	l3549
u960:
	
l3547:	
	movlw	high(0186h)
	subwf	(_dist+1),w
	movlw	low(0186h)
	skipnz
	subwf	(_dist),w
	skipnc
	goto	u971
	goto	u970
u971:
	goto	l1130
u970:
	line	279
	
l3549:	
;BTCAR.c: 279: sprintf(carac1, "%d",dist);
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_dist+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_dist),w
	movwf	0+(?_sprintf)+01h
	movlw	(_carac1)&0ffh
	fcall	_sprintf
	line	280
	
l3551:	
;BTCAR.c: 280: dato = atoi(carac1);
	movlw	(_carac1)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	movwf	(_dato+1)
	movf	(0+(?_atoi)),w
	movwf	(_dato)
	line	281
	
l3553:	
;BTCAR.c: 281: printf(" %d ",dato);
	movf	(_dato+1),w
	movwf	(?_printf+1)
	movf	(_dato),w
	movwf	(?_printf)
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	line	283
	
l1130:	
	return
	opt stack 0
GLOBAL	__end_of_SR
	__end_of_SR:
;; =============== function _SR ends ============

	signat	_SR,88
	global	_sprintf
psect	text317,local,class=CODE,delta=2
global __ptext317
__ptext317:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\sprintf.c"
;; Parameters:    Size  Location     Type
;;  wh              1    wreg     PTR unsigned char 
;;		 -> carac1(4), 
;;  f               1   10[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(3), 
;; Auto vars:     Size  Location     Type
;;  wh              1   13[BANK0 ] PTR unsigned char 
;;		 -> carac1(4), 
;;  pb              2   15[BANK0 ] struct __prbuf
;;  ap              1   14[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   10[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_SR
;; This function uses a non-reentrant model
;;
psect	text317
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\sprintf.c"
	line	14
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 4
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@wh stored from wreg
	line	31
	movwf	(sprintf@wh)
	
l3509:	
	movf	(sprintf@wh),w
	movwf	(sprintf@pb)
	line	32
	
l3511:	
	clrf	(0+sprintf@pb+01h)
	line	33
	
l3513:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)
	line	34
	
l3515:	
	movf	(sprintf@f),w
	movwf	(?__doprnt)
	movlw	(sprintf@ap)&0ffh
	movwf	0+(?__doprnt)+01h
	movlw	(sprintf@pb)&0ffh
	fcall	__doprnt
	line	35
	
l3517:	
	movf	(sprintf@pb),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	38
	
l2196:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_printf
psect	text318,local,class=CODE,delta=2
global __ptext318
__ptext318:

;; *************** function _printf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\printf.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_3(5), STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  f               1   12[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(5), STR_1(3), 
;;  pb              2   14[BANK0 ] struct __prbuf
;;  ap              1   13[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   10[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_SR
;; This function uses a non-reentrant model
;;
psect	text318
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\printf.c"
	line	14
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 4
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	23
	movwf	(printf@f)
	
l3499:	
	clrf	(printf@pb)
	line	24
	
l3501:	
	movlw	((fp__putch-fpbase))&0ffh
	movwf	(0+printf@pb+01h)
	line	25
	
l3503:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	26
	
l3505:	
;	Return value of _printf is never used
	movf	(printf@f),w
	movwf	(?__doprnt)
	movlw	(printf@ap)&0ffh
	movwf	0+(?__doprnt)+01h
	movlw	(printf@pb)&0ffh
	fcall	__doprnt
	line	28
	
l2189:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_line
psect	text319,local,class=CODE,delta=2
global __ptext319
__ptext319:

;; *************** function _line *****************
;; Defined at:
;;		line 212 in file "C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_PWM
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text319
	file	"C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
	line	212
	global	__size_of_line
	__size_of_line	equ	__end_of_line-_line
	
_line:	
	opt	stack 6
; Regs used in _line: [wreg+status,2+status,0+pclath+cstack]
	line	214
	
l3459:	
;BTCAR.c: 214: if((RB7 == 0) && (RB6 == 0)){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(55/8),(55)&7
	goto	u841
	goto	u840
u841:
	goto	l1104
u840:
	
l3461:	
	btfsc	(54/8),(54)&7
	goto	u851
	goto	u850
u851:
	goto	l1104
u850:
	line	216
	
l3463:	
;BTCAR.c: 216: pwm1=700;
	movlw	low(02BCh)
	movwf	(_pwm1)
	movlw	high(02BCh)
	movwf	((_pwm1))+1
	line	217
;BTCAR.c: 217: pwm2=700;
	movlw	low(02BCh)
	movwf	(_pwm2)
	movlw	high(02BCh)
	movwf	((_pwm2))+1
	line	218
	
l3465:	
;BTCAR.c: 218: PWM();
	fcall	_PWM
	line	219
	
l3467:	
;BTCAR.c: 219: RA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	220
	
l3469:	
;BTCAR.c: 220: RA2 = 1;
	bsf	(42/8),(42)&7
	line	222
;BTCAR.c: 222: }else{
	goto	l1110
	
l1104:	
	line	223
;BTCAR.c: 223: if((RB7 == 1) && (RB6 == 0)){
	btfss	(55/8),(55)&7
	goto	u861
	goto	u860
u861:
	goto	l1106
u860:
	
l3471:	
	btfsc	(54/8),(54)&7
	goto	u871
	goto	u870
u871:
	goto	l1106
u870:
	line	225
	
l3473:	
;BTCAR.c: 225: pwm1=700;
	movlw	low(02BCh)
	movwf	(_pwm1)
	movlw	high(02BCh)
	movwf	((_pwm1))+1
	line	226
;BTCAR.c: 226: pwm2=100;
	movlw	064h
	movwf	(_pwm2)
	clrf	(_pwm2+1)
	goto	l3465
	line	231
	
l1106:	
	line	232
;BTCAR.c: 232: if((RB7 == 0) && (RB6 == 1)){
	btfsc	(55/8),(55)&7
	goto	u881
	goto	u880
u881:
	goto	l3491
u880:
	
l3481:	
	btfss	(54/8),(54)&7
	goto	u891
	goto	u890
u891:
	goto	l3491
u890:
	line	234
	
l3483:	
;BTCAR.c: 234: pwm1=100;
	movlw	064h
	movwf	(_pwm1)
	clrf	(_pwm1+1)
	line	235
;BTCAR.c: 235: pwm2=700;
	movlw	low(02BCh)
	movwf	(_pwm2)
	movlw	high(02BCh)
	movwf	((_pwm2))+1
	goto	l3465
	line	242
	
l3491:	
;BTCAR.c: 242: pwm1=700;
	movlw	low(02BCh)
	movwf	(_pwm1)
	movlw	high(02BCh)
	movwf	((_pwm1))+1
	line	243
;BTCAR.c: 243: pwm2=700;
	movlw	low(02BCh)
	movwf	(_pwm2)
	movlw	high(02BCh)
	movwf	((_pwm2))+1
	line	244
	
l3493:	
;BTCAR.c: 244: PWM();
	fcall	_PWM
	line	245
	
l3495:	
;BTCAR.c: 245: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	line	246
	
l3497:	
;BTCAR.c: 246: RA3 = 1;
	bsf	(43/8),(43)&7
	line	252
	
l1110:	
	return
	opt stack 0
GLOBAL	__end_of_line
	__end_of_line:
;; =============== function _line ends ============

	signat	_line,88
	global	_rutina
psect	text320,local,class=CODE,delta=2
global __ptext320
__ptext320:

;; *************** function _rutina *****************
;; Defined at:
;;		line 286 in file "C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_PWM
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text320
	file	"C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
	line	286
	global	__size_of_rutina
	__size_of_rutina	equ	__end_of_rutina-_rutina
	
_rutina:	
	opt	stack 6
; Regs used in _rutina: [wreg+status,2+status,0+pclath+cstack]
	line	287
	
l3383:	
;BTCAR.c: 287: pwm1=700;
	movlw	low(02BCh)
	movwf	(_pwm1)
	movlw	high(02BCh)
	movwf	((_pwm1))+1
	line	288
;BTCAR.c: 288: pwm2=700;
	movlw	low(02BCh)
	movwf	(_pwm2)
	movlw	high(02BCh)
	movwf	((_pwm2))+1
	line	289
	
l3385:	
;BTCAR.c: 289: PWM();
	fcall	_PWM
	line	290
	
l3387:	
;BTCAR.c: 290: RA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	291
	
l3389:	
;BTCAR.c: 291: RA2 = 1;
	bsf	(42/8),(42)&7
	line	292
	
l3391:	
;BTCAR.c: 292: _delay((unsigned long)((2000)*(4000000/4000.0)));
	opt asmopt_off
movlw  11
movwf	((??_rutina+0)+0+2),f
movlw	38
movwf	((??_rutina+0)+0+1),f
	movlw	102
movwf	((??_rutina+0)+0),f
u1127:
	decfsz	((??_rutina+0)+0),f
	goto	u1127
	decfsz	((??_rutina+0)+0+1),f
	goto	u1127
	decfsz	((??_rutina+0)+0+2),f
	goto	u1127
	nop2
opt asmopt_on

	line	293
	
l3393:	
;BTCAR.c: 293: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	294
	
l3395:	
;BTCAR.c: 294: RA2 = 0;
	bcf	(42/8),(42)&7
	line	295
	
l3397:	
;BTCAR.c: 295: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_rutina+0)+0+2),f
movlw	138
movwf	((??_rutina+0)+0+1),f
	movlw	86
movwf	((??_rutina+0)+0),f
u1137:
	decfsz	((??_rutina+0)+0),f
	goto	u1137
	decfsz	((??_rutina+0)+0+1),f
	goto	u1137
	decfsz	((??_rutina+0)+0+2),f
	goto	u1137
	nop2
opt asmopt_on

	line	296
	
l3399:	
;BTCAR.c: 296: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	line	297
	
l3401:	
;BTCAR.c: 297: RA3 = 1;
	bsf	(43/8),(43)&7
	line	298
	
l3403:	
;BTCAR.c: 298: _delay((unsigned long)((2000)*(4000000/4000.0)));
	opt asmopt_off
movlw  11
movwf	((??_rutina+0)+0+2),f
movlw	38
movwf	((??_rutina+0)+0+1),f
	movlw	102
movwf	((??_rutina+0)+0),f
u1147:
	decfsz	((??_rutina+0)+0),f
	goto	u1147
	decfsz	((??_rutina+0)+0+1),f
	goto	u1147
	decfsz	((??_rutina+0)+0+2),f
	goto	u1147
	nop2
opt asmopt_on

	line	299
	
l3405:	
;BTCAR.c: 299: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	300
	
l3407:	
;BTCAR.c: 300: RA3 = 0;
	bcf	(43/8),(43)&7
	line	301
	
l3409:	
;BTCAR.c: 301: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_rutina+0)+0+2),f
movlw	138
movwf	((??_rutina+0)+0+1),f
	movlw	86
movwf	((??_rutina+0)+0),f
u1157:
	decfsz	((??_rutina+0)+0),f
	goto	u1157
	decfsz	((??_rutina+0)+0+1),f
	goto	u1157
	decfsz	((??_rutina+0)+0+2),f
	goto	u1157
	nop2
opt asmopt_on

	line	302
	
l3411:	
;BTCAR.c: 302: RA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	303
	
l3413:	
;BTCAR.c: 303: RA2 = 0;
	bcf	(42/8),(42)&7
	line	304
	
l3415:	
;BTCAR.c: 304: _delay((unsigned long)((2000)*(4000000/4000.0)));
	opt asmopt_off
movlw  11
movwf	((??_rutina+0)+0+2),f
movlw	38
movwf	((??_rutina+0)+0+1),f
	movlw	102
movwf	((??_rutina+0)+0),f
u1167:
	decfsz	((??_rutina+0)+0),f
	goto	u1167
	decfsz	((??_rutina+0)+0+1),f
	goto	u1167
	decfsz	((??_rutina+0)+0+2),f
	goto	u1167
	nop2
opt asmopt_on

	line	305
	
l3417:	
;BTCAR.c: 305: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	306
	
l3419:	
;BTCAR.c: 306: RA2 = 0;
	bcf	(42/8),(42)&7
	line	307
	
l3421:	
;BTCAR.c: 307: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_rutina+0)+0+2),f
movlw	138
movwf	((??_rutina+0)+0+1),f
	movlw	86
movwf	((??_rutina+0)+0),f
u1177:
	decfsz	((??_rutina+0)+0),f
	goto	u1177
	decfsz	((??_rutina+0)+0+1),f
	goto	u1177
	decfsz	((??_rutina+0)+0+2),f
	goto	u1177
	nop2
opt asmopt_on

	line	308
	
l3423:	
;BTCAR.c: 308: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	line	309
	
l3425:	
;BTCAR.c: 309: RA3 = 0;
	bcf	(43/8),(43)&7
	line	310
	
l3427:	
;BTCAR.c: 310: _delay((unsigned long)((2000)*(4000000/4000.0)));
	opt asmopt_off
movlw  11
movwf	((??_rutina+0)+0+2),f
movlw	38
movwf	((??_rutina+0)+0+1),f
	movlw	102
movwf	((??_rutina+0)+0),f
u1187:
	decfsz	((??_rutina+0)+0),f
	goto	u1187
	decfsz	((??_rutina+0)+0+1),f
	goto	u1187
	decfsz	((??_rutina+0)+0+2),f
	goto	u1187
	nop2
opt asmopt_on

	line	311
	
l3429:	
;BTCAR.c: 311: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	312
	
l3431:	
;BTCAR.c: 312: RA3 = 0;
	bcf	(43/8),(43)&7
	line	313
	
l3433:	
;BTCAR.c: 313: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_rutina+0)+0+2),f
movlw	138
movwf	((??_rutina+0)+0+1),f
	movlw	86
movwf	((??_rutina+0)+0),f
u1197:
	decfsz	((??_rutina+0)+0),f
	goto	u1197
	decfsz	((??_rutina+0)+0+1),f
	goto	u1197
	decfsz	((??_rutina+0)+0+2),f
	goto	u1197
	nop2
opt asmopt_on

	line	314
	
l3435:	
;BTCAR.c: 314: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	315
	
l3437:	
;BTCAR.c: 315: RA2 = 1;
	bsf	(42/8),(42)&7
	line	316
	
l3439:	
;BTCAR.c: 316: _delay((unsigned long)((2000)*(4000000/4000.0)));
	opt asmopt_off
movlw  11
movwf	((??_rutina+0)+0+2),f
movlw	38
movwf	((??_rutina+0)+0+1),f
	movlw	102
movwf	((??_rutina+0)+0),f
u1207:
	decfsz	((??_rutina+0)+0),f
	goto	u1207
	decfsz	((??_rutina+0)+0+1),f
	goto	u1207
	decfsz	((??_rutina+0)+0+2),f
	goto	u1207
	nop2
opt asmopt_on

	line	317
	
l3441:	
;BTCAR.c: 317: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	318
	
l3443:	
;BTCAR.c: 318: RA2 = 0;
	bcf	(42/8),(42)&7
	line	319
	
l3445:	
;BTCAR.c: 319: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_rutina+0)+0+2),f
movlw	138
movwf	((??_rutina+0)+0+1),f
	movlw	86
movwf	((??_rutina+0)+0),f
u1217:
	decfsz	((??_rutina+0)+0),f
	goto	u1217
	decfsz	((??_rutina+0)+0+1),f
	goto	u1217
	decfsz	((??_rutina+0)+0+2),f
	goto	u1217
	nop2
opt asmopt_on

	line	320
	
l3447:	
;BTCAR.c: 320: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	321
	
l3449:	
;BTCAR.c: 321: RA3 = 1;
	bsf	(43/8),(43)&7
	line	322
	
l3451:	
;BTCAR.c: 322: _delay((unsigned long)((2000)*(4000000/4000.0)));
	opt asmopt_off
movlw  11
movwf	((??_rutina+0)+0+2),f
movlw	38
movwf	((??_rutina+0)+0+1),f
	movlw	102
movwf	((??_rutina+0)+0),f
u1227:
	decfsz	((??_rutina+0)+0),f
	goto	u1227
	decfsz	((??_rutina+0)+0+1),f
	goto	u1227
	decfsz	((??_rutina+0)+0+2),f
	goto	u1227
	nop2
opt asmopt_on

	line	323
	
l3453:	
;BTCAR.c: 323: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	324
	
l3455:	
;BTCAR.c: 324: RA3 = 0;
	bcf	(43/8),(43)&7
	line	325
	
l3457:	
;BTCAR.c: 325: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_rutina+0)+0+2),f
movlw	138
movwf	((??_rutina+0)+0+1),f
	movlw	86
movwf	((??_rutina+0)+0),f
u1237:
	decfsz	((??_rutina+0)+0),f
	goto	u1237
	decfsz	((??_rutina+0)+0+1),f
	goto	u1237
	decfsz	((??_rutina+0)+0+2),f
	goto	u1237
	nop2
opt asmopt_on

	line	326
	
l1133:	
	return
	opt stack 0
GLOBAL	__end_of_rutina
	__end_of_rutina:
;; =============== function _rutina ends ============

	signat	_rutina,88
	global	__doprnt
psect	text321,local,class=CODE,delta=2
global __ptext321
__ptext321:

;; *************** function __doprnt *****************
;; Defined at:
;;		line 455 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  pb              1    wreg     PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  f               1   12[COMMON] PTR const unsigned char 
;;		 -> STR_3(5), STR_2(3), STR_1(3), 
;;  ap              1   13[COMMON] PTR PTR void 
;;		 -> sprintf@ap(1), printf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  pb              1    9[BANK0 ] PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  _val            4    4[BANK0 ] struct .
;;  c               1    8[BANK0 ] char 
;;  prec            1    3[BANK0 ] char 
;;  flag            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   12[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       8       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         2      10       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Absolute function
;;		_putch
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_printf
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text321
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	455
	global	__size_of__doprnt
	__size_of__doprnt	equ	__end_of__doprnt-__doprnt
	
__doprnt:	
	opt	stack 4
; Regs used in __doprnt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;__doprnt@pb stored from wreg
	movwf	(__doprnt@pb)
	line	540
	
l3315:	
	goto	l3377
	line	542
	
l3317:	
	movf	(__doprnt@c),w
	xorlw	025h
	skipnz
	goto	u741
	goto	u740
u741:
	goto	l3327
u740:
	line	545
	
l3319:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u751
	goto	u750
u751:
	goto	l3323
u750:
	
l3321:	
	movf	(__doprnt@c),w
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l3377
	
l3323:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c),w
	movwf	indf
	
l3325:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	goto	l3377
	line	552
	
l3327:	
	clrf	(__doprnt@flag)
	line	638
	
l3331:	
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(__doprnt@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
; rangetable           110     6 (fixed)
; spacedrange          218     9 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3379
	xorlw	100^0	; case 100
	skipnz
	goto	l3333
	xorlw	105^100	; case 105
	skipnz
	goto	l3333
	goto	l3377
	opt asmopt_on

	line	1254
	
l3333:	
	movf	(__doprnt@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	((??__doprnt+0)+0)
	movlw	02h
	addwf	indf,f
	movf	((??__doprnt+0)+0),w
	movwf	fsr0
	movf	indf,w
	movwf	(__doprnt@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(__doprnt@_val+1)
	line	1256
	
l3335:	
	btfss	(__doprnt@_val+1),7
	goto	u761
	goto	u760
u761:
	goto	l3341
u760:
	line	1257
	
l3337:	
	movlw	(03h)
	iorwf	(__doprnt@flag),f
	line	1258
	
l3339:	
	comf	(__doprnt@_val),f
	comf	(__doprnt@_val+1),f
	incf	(__doprnt@_val),f
	skipnz
	incf	(__doprnt@_val+1),f
	line	1300
	
l3341:	
	clrf	(__doprnt@c)
	incf	(__doprnt@c),f
	line	1301
	
l3345:	
	clrc
	rlf	(__doprnt@c),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??__doprnt+0)+0
	fcall	stringdir
	movwf	(??__doprnt+0)+0+1
	movf	1+(??__doprnt+0)+0,w
	subwf	(__doprnt@_val+1),w
	skipz
	goto	u775
	movf	0+(??__doprnt+0)+0,w
	subwf	(__doprnt@_val),w
u775:
	skipnc
	goto	u771
	goto	u770
u771:
	goto	l3349
u770:
	goto	l3353
	line	1300
	
l3349:	
	incf	(__doprnt@c),f
	
l3351:	
	movf	(__doprnt@c),w
	xorlw	05h
	skipz
	goto	u781
	goto	u780
u781:
	goto	l3345
u780:
	line	1433
	
l3353:	
	movf	(__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u791
	goto	u790
u791:
	goto	l3363
u790:
	line	1434
	
l3355:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u801
	goto	u800
u801:
	goto	l3359
u800:
	
l3357:	
	movlw	(02Dh)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l3363
	
l3359:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l3361:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1467
	
l3363:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@c),w
	movwf	(__doprnt@prec)
	line	1469
	goto	l3375
	line	1484
	
l3365:	
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	clrc
	rlf	(__doprnt@prec),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(__doprnt@_val+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(__doprnt@_val),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(__doprnt@c)
	line	1516
	
l3367:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u811
	goto	u810
u811:
	goto	l3371
u810:
	
l3369:	
	movf	(__doprnt@c),w
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l3375
	
l3371:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c),w
	movwf	indf
	
l3373:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1469
	
l3375:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(__doprnt@prec),f
	incf	((__doprnt@prec)),w
	skipz
	goto	u821
	goto	u820
u821:
	goto	l3365
u820:
	line	540
	
l3377:	
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__doprnt@c)
	movf	((__doprnt@c)),f
	skipz
	goto	u831
	goto	u830
u831:
	goto	l3317
u830:
	line	1532
	
l3379:	
	clrf	(?__doprnt)
	clrf	(?__doprnt+1)
	line	1533
	
l1180:	
	return
	opt stack 0
GLOBAL	__end_of__doprnt
	__end_of__doprnt:
;; =============== function __doprnt ends ============

	signat	__doprnt,12410
	global	_atoi
psect	text322,local,class=CODE,delta=2
global __ptext322
__ptext322:

;; *************** function _atoi *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\atoi.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> carac1(4), 
;; Auto vars:     Size  Location     Type
;;  s               1   13[COMMON] PTR const unsigned char 
;;		 -> carac1(4), 
;;  a               2   11[COMMON] int 
;;  sign            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___wmul
;;		_isdigit
;; This function is called by:
;;		_SR
;; This function uses a non-reentrant model
;;
psect	text322
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\atoi.c"
	line	6
	global	__size_of_atoi
	__size_of_atoi	equ	__end_of_atoi-_atoi
	
_atoi:	
	opt	stack 5
; Regs used in _atoi: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;atoi@s stored from wreg
	movwf	(atoi@s)
	line	10
	
l3281:	
	goto	l3285
	line	11
	
l3283:	
	incf	(atoi@s),f
	line	10
	
l3285:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	020h
	skipnz
	goto	u681
	goto	u680
u681:
	goto	l3283
u680:
	
l3287:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	09h
	skipnz
	goto	u691
	goto	u690
u691:
	goto	l3283
u690:
	line	12
	
l3289:	
	clrf	(atoi@a)
	clrf	(atoi@a+1)
	line	13
	clrf	(atoi@sign)
	line	14
	
l3291:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u701
	goto	u700
u701:
	goto	l3295
u700:
	line	15
	
l3293:	
	incf	(atoi@sign),f
	line	16
	incf	(atoi@s),f
	line	17
	goto	l3303
	
l3295:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Bh
	skipz
	goto	u711
	goto	u710
u711:
	goto	l3303
u710:
	line	18
	
l3297:	
	incf	(atoi@s),f
	goto	l3303
	line	20
	
l3299:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	(atoi@a+1),w
	movwf	(?___wmul+1)
	movf	(atoi@a),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	indf,w
	addwf	(0+(?___wmul)),w
	movwf	(??_atoi+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_atoi+0)+0
	movf	0+(??_atoi+0)+0,w
	addlw	low(0FFD0h)
	movwf	(atoi@a)
	movf	1+(??_atoi+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(atoi@a)
	goto	l3297
	line	19
	
l3303:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_isdigit
	btfsc	status,0
	goto	u721
	goto	u720
u721:
	goto	l3299
u720:
	line	21
	
l3305:	
	movf	(atoi@sign),w
	skipz
	goto	u730
	goto	l3311
u730:
	line	22
	
l3307:	
	comf	(atoi@a),w
	movwf	(??_atoi+0)+0
	comf	(atoi@a+1),w
	movwf	((??_atoi+0)+0+1)
	incf	(??_atoi+0)+0,f
	skipnz
	incf	((??_atoi+0)+0+1),f
	movf	0+(??_atoi+0)+0,w
	movwf	(?_atoi)
	movf	1+(??_atoi+0)+0,w
	movwf	(?_atoi+1)
	goto	l2175
	line	23
	
l3311:	
	movf	(atoi@a+1),w
	movwf	(?_atoi+1)
	movf	(atoi@a),w
	movwf	(?_atoi)
	line	24
	
l2175:	
	return
	opt stack 0
GLOBAL	__end_of_atoi
	__end_of_atoi:
;; =============== function _atoi ends ============

	signat	_atoi,4218
	global	_PWM
psect	text323,local,class=CODE,delta=2
global __ptext323
__ptext323:

;; *************** function _PWM *****************
;; Defined at:
;;		line 328 in file "C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_line
;;		_rutina
;; This function uses a non-reentrant model
;;
psect	text323
	file	"C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
	line	328
	global	__size_of_PWM
	__size_of_PWM	equ	__end_of_PWM-_PWM
	
_PWM:	
	opt	stack 6
; Regs used in _PWM: [wreg+status,2+status,0]
	line	329
	
l3263:	
;BTCAR.c: 329: ADRESH=pwm1>>2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_pwm1+1),w
	movwf	(??_PWM+0)+0+1
	movf	(_pwm1),w
	movwf	(??_PWM+0)+0
	clrc
	rrf	(??_PWM+0)+1,f
	rrf	(??_PWM+0)+0,f
	clrc
	rrf	(??_PWM+0)+1,f
	rrf	(??_PWM+0)+0,f
	movf	0+(??_PWM+0)+0,w
	movwf	(30)	;volatile
	line	330
	
l3265:	
;BTCAR.c: 330: ADRESL=pwm1<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	331
	
l3267:	
;BTCAR.c: 331: CCPR1L=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(21)	;volatile
	line	332
	
l3269:	
;BTCAR.c: 332: CCP1CON=0X0C|(ADRESL>>2);
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
	line	333
	
l3271:	
;BTCAR.c: 333: _delay((unsigned long)((10)*(4000000/4000000.0)));
	opt asmopt_off
movlw	3
movwf	(??_PWM+0)+0,f
u1247:
decfsz	(??_PWM+0)+0,f
	goto	u1247
opt asmopt_on

	line	335
	
l3273:	
;BTCAR.c: 335: ADRESH=pwm2>>2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_pwm2+1),w
	movwf	(??_PWM+0)+0+1
	movf	(_pwm2),w
	movwf	(??_PWM+0)+0
	clrc
	rrf	(??_PWM+0)+1,f
	rrf	(??_PWM+0)+0,f
	clrc
	rrf	(??_PWM+0)+1,f
	rrf	(??_PWM+0)+0,f
	movf	0+(??_PWM+0)+0,w
	movwf	(30)	;volatile
	line	336
	
l3275:	
;BTCAR.c: 336: ADRESL=pwm2<<8;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	337
	
l3277:	
;BTCAR.c: 337: CCPR2L=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	movwf	(27)	;volatile
	line	338
	
l3279:	
;BTCAR.c: 338: CCP2CON=0X0C|(ADRESL>>2);
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
	line	339
;BTCAR.c: 339: _delay((unsigned long)((10)*(4000000/4000000.0)));
	opt asmopt_off
movlw	3
movwf	(??_PWM+0)+0,f
u1257:
decfsz	(??_PWM+0)+0,f
	goto	u1257
opt asmopt_on

	line	341
	
l1136:	
	return
	opt stack 0
GLOBAL	__end_of_PWM
	__end_of_PWM:
;; =============== function _PWM ends ============

	signat	_PWM,88
	global	___lwmod
psect	text324,local,class=CODE,delta=2
global __ptext324
__ptext324:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] unsigned int 
;;  dividend        2    9[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text324
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3243:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u641
	goto	u640
u641:
	goto	l3259
u640:
	line	9
	
l3245:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l3249
	line	11
	
l3247:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l3249:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u651
	goto	u650
u651:
	goto	l3247
u650:
	line	15
	
l3251:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u665
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u665:
	skipc
	goto	u661
	goto	u660
u661:
	goto	l3255
u660:
	line	16
	
l3253:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l3255:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l3257:	
	decfsz	(___lwmod@counter),f
	goto	u671
	goto	u670
u671:
	goto	l3251
u670:
	line	20
	
l3259:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l2228:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text325,local,class=CODE,delta=2
global __ptext325
__ptext325:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMMON] unsigned int 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SR
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text325
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3217:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3219:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u601
	goto	u600
u601:
	goto	l3239
u600:
	line	11
	
l3221:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l3225
	line	13
	
l3223:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l3225:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u611
	goto	u610
u611:
	goto	l3223
u610:
	line	17
	
l3227:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l3229:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u625
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u625:
	skipc
	goto	u621
	goto	u620
u621:
	goto	l3235
u620:
	line	19
	
l3231:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3233:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3235:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3237:	
	decfsz	(___lwdiv@counter),f
	goto	u631
	goto	u630
u631:
	goto	l3227
u630:
	line	25
	
l3239:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2218:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text326,local,class=CODE,delta=2
global __ptext326
__ptext326:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text326
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3201:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l3203:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u581
	goto	u580
u581:
	goto	l3207
u580:
	line	8
	
l3205:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l3207:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l3209:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l3211:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u591
	goto	u590
u591:
	goto	l3203
u590:
	line	12
	
l3213:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2208:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text327,local,class=CODE,delta=2
global __ptext327
__ptext327:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text327
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 5
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l3189:	
	clrf	(_isdigit$2399)
	
l3191:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u561
	goto	u560
u561:
	goto	l3197
u560:
	
l3193:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u571
	goto	u570
u571:
	goto	l3197
u570:
	
l3195:	
	clrf	(_isdigit$2399)
	incf	(_isdigit$2399),f
	
l3197:	
	rrf	(_isdigit$2399),w
	
	line	15
	
l2180:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_init_comms
psect	text328,local,class=CODE,delta=2
global __ptext328
__ptext328:

;; *************** function _init_comms *****************
;; Defined at:
;;		line 55 in file "C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/60
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text328
	file	"C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
	line	55
	global	__size_of_init_comms
	__size_of_init_comms	equ	__end_of_init_comms-_init_comms
	
_init_comms:	
	opt	stack 7
; Regs used in _init_comms: [wreg+status,2]
	line	56
	
l3183:	
;BTCAR.c: 56: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	57
;BTCAR.c: 57: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	58
	
l3185:	
;BTCAR.c: 58: SPBRG = 0x19;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	60
;BTCAR.c: 60: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	61
;BTCAR.c: 61: TXSTA = 0x26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	62
	
l3187:	
;BTCAR.c: 62: BAUDCTL = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	63
	
l1071:	
	return
	opt stack 0
GLOBAL	__end_of_init_comms
	__end_of_init_comms:
;; =============== function _init_comms ends ============

	signat	_init_comms,88
	global	_getch
psect	text329,local,class=CODE,delta=2
global __ptext329
__ptext329:

;; *************** function _getch *****************
;; Defined at:
;;		line 49 in file "C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text329
	file	"C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
	line	49
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 7
; Regs used in _getch: [wreg]
	line	51
	
l3177:	
	line	52
;BTCAR.c: 51: while(!RCIF)
	
l1065:	
	line	51
	btfss	(101/8),(101)&7
	goto	u551
	goto	u550
u551:
	goto	l1065
u550:
	line	53
	
l3179:	
;BTCAR.c: 53: return RCREG;
	movf	(26),w	;volatile
	line	54
	
l1068:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_putch
psect	text330,local,class=CODE,delta=2
global __ptext330
__ptext330:

;; *************** function _putch *****************
;; Defined at:
;;		line 43 in file "C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
;; Parameters:    Size  Location     Type
;;  byte            1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text330
	file	"C:\Users\Jorge\OneDrive\Escritorio\BTCAR\BTCAR.c"
	line	43
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 4
; Regs used in _putch: [wreg]
	line	45
	
l3173:	
	line	46
;BTCAR.c: 45: while(!TXIF)
	
l1059:	
	line	45
	btfss	(100/8),(100)&7
	goto	u541
	goto	u540
u541:
	goto	l1059
u540:
	line	47
	
l3175:	
;BTCAR.c: 47: TXREG = byte;
	movf	(putch@byte),w
	movwf	(25)	;volatile
	line	48
	
l1062:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	fptotal
fptotal equ 2
	file ""
	line	#
psect	functab,class=CODE,delta=2,reloc=256
global __pfunctab
__pfunctab:
	global	fptable
fptable:
	movwf (btemp+1)&07Fh
	movlw high(fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	fpbase
fpbase:
	goto fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp__putch:
	ljmp	_putch
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
