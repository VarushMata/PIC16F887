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
# 6 "C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\Sensor_distancia.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\Sensor_distancia.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 7 "C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\Sensor_distancia.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\Sensor_distancia.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_pause
	FNCALL	_main,_espera_sensor
	FNCALL	_main,_obten_dist
	FNCALL	_main,___lwdiv
	FNCALL	_main,_sprintf
	FNCALL	_lcd_init,_pause
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_init,_lcd_clear
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_pause
	FNCALL	_lcd_write,_pause
	FNCALL	_sprintf,_isdigit
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
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
	global	_texto
	global	_PORTC
_PORTC	set	7
	global	_T1CON
_T1CON	set	16
	global	_TMR0
_TMR0	set	1
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD4
_RD4	set	68
	global	_T0IF
_T0IF	set	90
	global	_TMR1ON
_TMR1ON	set	128
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	
STR_2:	
	retlw	70	;'F'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	111	;'o'
	retlw	0
psect	strings
	
STR_1:	
	retlw	68	;'D'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	78	;'N'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	97	;'a'
	retlw	0
psect	strings
	
STR_3:	
	retlw	32	;' '
	retlw	37	;'%'
	retlw	51	;'3'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	109	;'m'
	retlw	0
psect	strings
	file	"sensor_distancia.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_texto:
       ds      13

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
	clrf	((__pbssBANK0)+11)&07Fh
	clrf	((__pbssBANK0)+12)&07Fh
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
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x0
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_espera_sensor
?_espera_sensor:	; 2 bytes @ 0x0
	global	?_obten_dist
?_obten_dist:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	_isdigit$2790
_isdigit$2790:	; 1 bytes @ 0x0
	global	pause@usvalue
pause@usvalue:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
	global	??_pause
??_pause:	; 0 bytes @ 0x2
	global	??_espera_sensor
??_espera_sensor:	; 0 bytes @ 0x2
	global	??_obten_dist
??_obten_dist:	; 0 bytes @ 0x2
	global	pause@x
pause@x:	; 2 bytes @ 0x2
	global	espera_sensor@i
espera_sensor@i:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x4
	global	obten_dist@pulsos
obten_dist@pulsos:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x5
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x5
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x5
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x5
	global	lcd_puts@s
lcd_puts@s:	; 2 bytes @ 0x5
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x7
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x7
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	ds	2
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xC
	global	main@distancia
main@distancia:	; 2 bytes @ 0xC
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x0
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x0
	ds	3
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x3
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x6
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x7
	ds	4
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0xB
	ds	1
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0xC
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0xD
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0xF
	ds	1
;;Data sizes: Strings 47, constant 10, data 0, bss 13, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     16      29
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 8
;;		 -> STR_3(CODE[8]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 13
;;		 -> texto(BANK0[13]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S2272$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; obten_dist@pulsos	PTR unsigned int  size(1) Largest target is 2
;;		 -> main@distancia(COMMON[2]), 
;;
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 15
;;		 -> STR_4(CODE[12]), texto(BANK0[13]), STR_2(CODE[15]), STR_1(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _lcd_init->_lcd_write
;;   _lcd_goto->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _lcd_clear->_lcd_write
;;   _lcd_write->_pause
;;   _sprintf->___lwmod
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_sprintf
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
;; (0) _main                                                 2     2      0    2187
;;                                             12 COMMON     2     2      0
;;                           _lcd_init
;;                          _lcd_clear
;;                           _lcd_goto
;;                           _lcd_puts
;;                              _pause
;;                      _espera_sensor
;;                         _obten_dist
;;                            ___lwdiv
;;                            _sprintf
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             1     1      0     295
;;                                              5 COMMON     1     1      0
;;                              _pause
;;                          _lcd_write
;;                          _lcd_clear
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0     112
;;                                              5 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_puts                                             2     0      2     135
;;                                              5 COMMON     2     0      2
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0     136
;;                          _lcd_write
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            1     1      0      90
;;                                              4 COMMON     1     1      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                             17    14      3    1093
;;                                              0 BANK0     16    13      3
;;                            _isdigit
;;                             ___wmul
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _pause                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              5     1      4     159
;;                                              7 COMMON     5     1      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     162
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _obten_dist                                           5     3      2      88
;;                                              0 COMMON     5     3      2
;; ---------------------------------------------------------------------------------
;; (1) _espera_sensor                                        4     2      2      47
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _pause
;;       _msecbase
;;     _lcd_write
;;       _pause
;;         _msecbase
;;     _lcd_clear
;;       _lcd_write
;;         _pause
;;           _msecbase
;;       _pause
;;         _msecbase
;;   _lcd_clear
;;     _lcd_write
;;       _pause
;;         _msecbase
;;     _pause
;;       _msecbase
;;   _lcd_goto
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _lcd_puts
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _pause
;;     _msecbase
;;   _espera_sensor
;;   _obten_dist
;;   ___lwdiv
;;   _sprintf
;;     _isdigit
;;     ___wmul
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      2B       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     10      1D       5       36.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      30      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\Sensor_distancia.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  distancia       2   12[COMMON] unsigned int 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_init
;;		_lcd_clear
;;		_lcd_goto
;;		_lcd_puts
;;		_pause
;;		_espera_sensor
;;		_obten_dist
;;		___lwdiv
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\Sensor_distancia.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	16
	
l3984:	
;Sensor_distancia.c: 16: ANSEL = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	17
;Sensor_distancia.c: 17: ANSELH = 0;
	clrf	(393)^0180h	;volatile
	line	18
;Sensor_distancia.c: 18: TRISA = 0;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	19
	
l3986:	
;Sensor_distancia.c: 19: TRISB = 0x02;
	movlw	(02h)
	movwf	(134)^080h	;volatile
	line	20
	
l3988:	
;Sensor_distancia.c: 20: T1CON = 0x10;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(16)	;volatile
	line	21
;Sensor_distancia.c: 21: TMR1H = TMR1L = 0;
	clrf	(14)	;volatile
	clrf	(15)	;volatile
	line	22
	
l3990:	
;Sensor_distancia.c: 22: lcd_init();
	fcall	_lcd_init
	line	24
	
l3992:	
;Sensor_distancia.c: 24: lcd_clear();
	fcall	_lcd_clear
	line	25
	
l3994:	
;Sensor_distancia.c: 25: lcd_goto(0x03);
	movlw	(03h)
	fcall	_lcd_goto
	line	26
	
l3996:	
;Sensor_distancia.c: 26: lcd_puts("Distancia: ");
	movlw	low((STR_1-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	27
	
l3998:	
;Sensor_distancia.c: 27: RB0 = 0;
	bcf	(48/8),(48)&7
	line	28
	
l4000:	
;Sensor_distancia.c: 28: pause(2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	29
	
l4002:	
;Sensor_distancia.c: 29: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	30
	
l4004:	
;Sensor_distancia.c: 30: if(espera_sensor())
	fcall	_espera_sensor
	movf	(1+(?_espera_sensor)),w
	iorwf	(0+(?_espera_sensor)),w
	skipnz
	goto	u651
	goto	u650
u651:
	goto	l4018
u650:
	line	33
	
l4006:	
;Sensor_distancia.c: 31: {
;Sensor_distancia.c: 32: unsigned int distancia;
;Sensor_distancia.c: 33: if(obten_dist(&distancia))
	movlw	(main@distancia)&0ffh
	fcall	_obten_dist
	movf	(1+(?_obten_dist)),w
	iorwf	(0+(?_obten_dist)),w
	skipnz
	goto	u661
	goto	u660
u661:
	goto	l4012
u660:
	line	35
	
l4008:	
;Sensor_distancia.c: 34: {
;Sensor_distancia.c: 35: lcd_goto(0x43);
	movlw	(043h)
	fcall	_lcd_goto
	line	36
	
l4010:	
;Sensor_distancia.c: 36: lcd_puts("Fuera de rango");
	movlw	low((STR_2-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	37
;Sensor_distancia.c: 37: }
	goto	l4022
	line	40
	
l4012:	
;Sensor_distancia.c: 38: else
;Sensor_distancia.c: 39: {
;Sensor_distancia.c: 40: distancia = distancia/29;
	movlw	01Dh
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(main@distancia+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(main@distancia),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@distancia+1)
	movf	(0+(?___lwdiv)),w
	movwf	(main@distancia)
	line	41
;Sensor_distancia.c: 41: lcd_goto(0x43);
	movlw	(043h)
	fcall	_lcd_goto
	line	42
	
l4014:	
;Sensor_distancia.c: 42: sprintf(texto, " %3u cm", distancia);
	movlw	((STR_3-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(main@distancia+1),w
	movwf	1+(?_sprintf)+01h
	movf	(main@distancia),w
	movwf	0+(?_sprintf)+01h
	movlw	(_texto)&0ffh
	fcall	_sprintf
	line	43
	
l4016:	
;Sensor_distancia.c: 43: lcd_puts(texto);
	movlw	(_texto&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x0/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	goto	l4022
	line	49
	
l4018:	
;Sensor_distancia.c: 47: else
;Sensor_distancia.c: 48: {
;Sensor_distancia.c: 49: lcd_goto(0x43);
	movlw	(043h)
	fcall	_lcd_goto
	line	50
	
l4020:	
;Sensor_distancia.c: 50: lcd_puts("No hay nada");
	movlw	low((STR_4-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	52
	
l4022:	
;Sensor_distancia.c: 51: }
;Sensor_distancia.c: 52: pause(500);
	movlw	low(01F4h)
	movwf	(?_pause)
	movlw	high(01F4h)
	movwf	((?_pause))+1
	fcall	_pause
	goto	l3992
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	55
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text280,local,class=CODE,delta=2
global __ptext280
__ptext280:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 74 in file "C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  init_value      1    0        unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_pause
;;		_lcd_write
;;		_lcd_clear
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text280
	file	"C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\lcd.c"
	line	74
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	77
	
l3934:	
;lcd.c: 75: char init_value;
;lcd.c: 77: ANSEL = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	79
	
l3936:	
	line	80
	
l3938:	
;lcd.c: 80: TRISA=0;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	81
	
l3940:	
;lcd.c: 81: TRISC=0;
	clrf	(135)^080h	;volatile
	line	82
	
l3942:	
;lcd.c: 82: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(66/8),(66)&7
	line	83
	
l3944:	
;lcd.c: 83: RD1 = 0;
	bcf	(65/8),(65)&7
	line	84
	
l3946:	
;lcd.c: 84: RD4 = 0;
	bcf	(68/8),(68)&7
	line	86
	
l3948:	
;lcd.c: 86: pause (15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	87
	
l3950:	
;lcd.c: 87: PORTC = init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	88
	
l3952:	
;lcd.c: 88: ((RD1 = 1),(RD1=0));
	bsf	(65/8),(65)&7
	
l3954:	
	bcf	(65/8),(65)&7
	line	89
	
l3956:	
;lcd.c: 89: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	90
	
l3958:	
;lcd.c: 90: ((RD1 = 1),(RD1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	
l3960:	
	bcf	(65/8),(65)&7
	line	91
	
l3962:	
;lcd.c: 91: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	92
	
l3964:	
;lcd.c: 92: ((RD1 = 1),(RD1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	
l3966:	
	bcf	(65/8),(65)&7
	line	93
	
l3968:	
;lcd.c: 93: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	94
	
l3970:	
;lcd.c: 94: PORTC = 2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	95
	
l3972:	
;lcd.c: 95: ((RD1 = 1),(RD1=0));
	bsf	(65/8),(65)&7
	
l3974:	
	bcf	(65/8),(65)&7
	line	97
	
l3976:	
;lcd.c: 97: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	99
	
l3978:	
;lcd.c: 99: lcd_write(0xF);
	movlw	(0Fh)
	fcall	_lcd_write
	line	100
	
l3980:	
;lcd.c: 100: lcd_clear();
	fcall	_lcd_clear
	line	101
	
l3982:	
;lcd.c: 101: lcd_write(0x6);
	movlw	(06h)
	fcall	_lcd_write
	line	102
	
l855:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_goto
psect	text281,local,class=CODE,delta=2
global __ptext281
__ptext281:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 66 in file "C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\lcd.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text281
	file	"C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\lcd.c"
	line	66
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	67
	
l3930:	
;lcd.c: 67: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	68
	
l3932:	
;lcd.c: 68: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	69
	
l852:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_puts
psect	text282,local,class=CODE,delta=2
global __ptext282
__ptext282:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 44 in file "C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               2    5[COMMON] PTR const unsigned char 
;;		 -> STR_4(12), texto(13), STR_2(15), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text282
	file	"C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\lcd.c"
	line	44
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 4
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	45
	
l3922:	
;lcd.c: 45: RD2 = 1;
	bsf	(66/8),(66)&7
	line	46
;lcd.c: 46: while(*s)
	goto	l3928
	line	47
	
l3924:	
;lcd.c: 47: lcd_write(*s++);
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	
l3926:	
	incf	(lcd_puts@s),f
	skipnz
	incf	(lcd_puts@s+1),f
	line	46
	
l3928:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u641
	goto	u640
u641:
	goto	l3924
u640:
	line	48
	
l846:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_clear
psect	text283,local,class=CODE,delta=2
global __ptext283
__ptext283:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 34 in file "C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\lcd.c"
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
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;;		_pause
;; This function is called by:
;;		_lcd_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text283
	file	"C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\lcd.c"
	line	34
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	35
	
l3918:	
;lcd.c: 35: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	36
	
l3920:	
;lcd.c: 36: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	37
;lcd.c: 37: pause (2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	38
	
l840:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_write
psect	text284,local,class=CODE,delta=2
global __ptext284
__ptext284:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 19 in file "C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\lcd.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pause
;; This function is called by:
;;		_lcd_clear
;;		_lcd_puts
;;		_lcd_goto
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text284
	file	"C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\lcd.c"
	line	19
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	20
	
l3904:	
;lcd.c: 20: pause (1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	21
	
l3906:	
;lcd.c: 21: PORTC = ( ( c >> 4 ) & 0x0F );
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	22
	
l3908:	
;lcd.c: 22: ((RD1 = 1),(RD1=0));
	bsf	(65/8),(65)&7
	
l3910:	
	bcf	(65/8),(65)&7
	line	23
	
l3912:	
;lcd.c: 23: PORTC = ( c & 0x0F );
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(7)	;volatile
	line	24
	
l3914:	
;lcd.c: 24: ((RD1 = 1),(RD1=0));
	bsf	(65/8),(65)&7
	
l3916:	
	bcf	(65/8),(65)&7
	line	26
	
l837:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_sprintf
psect	text285,local,class=CODE,delta=2
global __ptext285
__ptext285:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> texto(13), 
;;  f               1    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(8), 
;; Auto vars:     Size  Location     Type
;;  sp              1   12[BANK0 ] PTR unsigned char 
;;		 -> texto(13), 
;;  _val            4    7[BANK0 ] struct .
;;  width           2   13[BANK0 ] int 
;;  c               1   15[BANK0 ] char 
;;  prec            1   11[BANK0 ] char 
;;  ap              1    6[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  flag            1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_isdigit
;;		___wmul
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text285
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 6
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	movwf	(sprintf@sp)
	
l3832:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)
	line	540
	goto	l3898
	line	542
	
l3834:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u541
	goto	u540
u541:
	goto	l3840
u540:
	line	545
	
l3836:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3838:	
	incf	(sprintf@sp),f
	line	546
	goto	l3898
	line	550
	
l3840:	
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	601
	
l3842:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u551
	goto	u550
u551:
	goto	l3854
u550:
	line	602
	
l3844:	
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	604
	
l3846:	
	movf	(sprintf@width+1),w
	movwf	(?___wmul+1)
	movf	(sprintf@width),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??_sprintf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_sprintf+0)+0
	movf	0+(??_sprintf+0)+0,w
	addlw	low(0FFD0h)
	movwf	(sprintf@width)
	movf	1+(??_sprintf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(sprintf@width)
	
l3848:	
	incf	(sprintf@f),f
	line	605
	
l3850:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u561
	goto	u560
u561:
	goto	l3846
u560:
	line	638
	
l3854:	
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
; rangetable           122     6 (fixed)
; spacedrange          242     9 (fixed)
; locatedrange         118     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3900
	xorlw	117^0	; case 117
	skipnz
	goto	l3856
	goto	l3898
	opt asmopt_on

	line	1281
	
l3856:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l3858:	
	incf	(sprintf@ap),f
	incf	(sprintf@ap),f
	line	1300
	
l3860:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	line	1301
	
l3866:	
	clrc
	rlf	(sprintf@c),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	fcall	stringdir
	movwf	(??_sprintf+0)+0+1
	movf	1+(??_sprintf+0)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u575
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@_val),w
u575:
	skipnc
	goto	u571
	goto	u570
u571:
	goto	l3870
u570:
	goto	l3874
	line	1300
	
l3870:	
	incf	(sprintf@c),f
	
l3872:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u581
	goto	u580
u581:
	goto	l3866
u580:
	line	1376
	
l3874:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	movf	(sprintf@width+1),w
	xorlw	80h
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u595
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u595:

	skipnc
	goto	u591
	goto	u590
u591:
	goto	l3878
u590:
	line	1377
	
l3876:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@width),f
	movf	1+(??_sprintf+0)+0,w
	skipc
	decf	(sprintf@width+1),f
	subwf	(sprintf@width+1),f
	goto	l3880
	line	1379
	
l3878:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	1423
	
l3880:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u601
	goto	u600
u601:
	goto	l3888
u600:
	line	1425
	
l3882:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	(020h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3884:	
	incf	(sprintf@sp),f
	line	1426
	
l3886:	
	movlw	-1
	addwf	(sprintf@width),f
	skipc
	decf	(sprintf@width+1),f
	movf	(((sprintf@width+1))),w
	iorwf	(((sprintf@width))),w
	skipz
	goto	u611
	goto	u610
u611:
	goto	l3882
u610:
	line	1467
	
l3888:	
	movf	(sprintf@c),w
	movwf	(sprintf@prec)
	line	1469
	goto	l3896
	line	1484
	
l3890:	
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	clrc
	rlf	(sprintf@prec),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(sprintf@_val+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(sprintf@_val),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(sprintf@c)
	line	1516
	
l3892:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3894:	
	incf	(sprintf@sp),f
	line	1469
	
l3896:	
	decf	(sprintf@prec),f
	incf	((sprintf@prec)),w
	skipz
	goto	u621
	goto	u620
u621:
	goto	l3890
u620:
	line	540
	
l3898:	
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u631
	goto	u630
u631:
	goto	l3834
u630:
	line	1530
	
l3900:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1533
	
l1974:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_pause
psect	text286,local,class=CODE,delta=2
global __ptext286
__ptext286:

;; *************** function _pause *****************
;; Defined at:
;;		line 58 in file "C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\Sensor_distancia.c"
;; Parameters:    Size  Location     Type
;;  usvalue         2    0[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  x               2    2[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
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
;;		_lcd_write
;;		_lcd_clear
;;		_lcd_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text286
	file	"C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\Sensor_distancia.c"
	line	58
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 6
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	60
	
l3824:	
;Sensor_distancia.c: 59: unsigned short x;
;Sensor_distancia.c: 60: for (x=0; x<usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l3830
	line	62
	
l3826:	
;Sensor_distancia.c: 61: {
;Sensor_distancia.c: 62: msecbase();
	fcall	_msecbase
	line	60
	
l3828:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l3830:	
	movf	(pause@usvalue+1),w
	subwf	(pause@x+1),w
	skipz
	goto	u535
	movf	(pause@usvalue),w
	subwf	(pause@x),w
u535:
	skipc
	goto	u531
	goto	u530
u531:
	goto	l3826
u530:
	line	64
	
l1913:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	___lwmod
psect	text287,local,class=CODE,delta=2
global __ptext287
__ptext287:

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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text287
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3804:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u491
	goto	u490
u491:
	goto	l3820
u490:
	line	9
	
l3806:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l3810
	line	11
	
l3808:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l3810:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u501
	goto	u500
u501:
	goto	l3808
u500:
	line	15
	
l3812:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u515
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u515:
	skipc
	goto	u511
	goto	u510
u511:
	goto	l3816
u510:
	line	16
	
l3814:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l3816:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l3818:	
	decfsz	(___lwmod@counter),f
	goto	u521
	goto	u520
u521:
	goto	l3812
u520:
	line	20
	
l3820:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l2991:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text288,local,class=CODE,delta=2
global __ptext288
__ptext288:

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
;;		_main
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text288
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3778:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3780:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u451
	goto	u450
u451:
	goto	l3800
u450:
	line	11
	
l3782:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l3786
	line	13
	
l3784:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l3786:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u461
	goto	u460
u461:
	goto	l3784
u460:
	line	17
	
l3788:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l3790:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u475
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u475:
	skipc
	goto	u471
	goto	u470
u471:
	goto	l3796
u470:
	line	19
	
l3792:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3794:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3796:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3798:	
	decfsz	(___lwdiv@counter),f
	goto	u481
	goto	u480
u481:
	goto	l3788
u480:
	line	25
	
l3800:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2981:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text289,local,class=CODE,delta=2
global __ptext289
__ptext289:

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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text289
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3762:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l3764:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u431
	goto	u430
u431:
	goto	l3768
u430:
	line	8
	
l3766:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l3768:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l3770:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l3772:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u441
	goto	u440
u441:
	goto	l3764
u440:
	line	12
	
l3774:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2971:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text290,local,class=CODE,delta=2
global __ptext290
__ptext290:

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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text290
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 6
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l3750:	
	clrf	(_isdigit$2790)
	
l3752:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u411
	goto	u410
u411:
	goto	l3758
u410:
	
l3754:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u421
	goto	u420
u421:
	goto	l3758
u420:
	
l3756:	
	clrf	(_isdigit$2790)
	incf	(_isdigit$2790),f
	
l3758:	
	rrf	(_isdigit$2790),w
	
	line	15
	
l2959:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_msecbase
psect	text291,local,class=CODE,delta=2
global __ptext291
__ptext291:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 66 in file "C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\Sensor_distancia.c"
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
psect	text291
	file	"C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\Sensor_distancia.c"
	line	66
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 6
; Regs used in _msecbase: [wreg]
	line	67
	
l3748:	
;Sensor_distancia.c: 67: OPTION_REG = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	68
;Sensor_distancia.c: 68: TMR0 = 0xD;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	69
;Sensor_distancia.c: 69: while(!T0IF);
	
l1916:	
	btfss	(90/8),(90)&7
	goto	u401
	goto	u400
u401:
	goto	l1916
u400:
	
l1918:	
	line	70
;Sensor_distancia.c: 70: T0IF = 0;
	bcf	(90/8),(90)&7
	line	71
	
l1919:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_obten_dist
psect	text292,local,class=CODE,delta=2
global __ptext292
__ptext292:

;; *************** function _obten_dist *****************
;; Defined at:
;;		line 87 in file "C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\Sensor_distancia.c"
;; Parameters:    Size  Location     Type
;;  pulsos          1    wreg     PTR unsigned int 
;;		 -> main@distancia(2), 
;; Auto vars:     Size  Location     Type
;;  pulsos          1    4[COMMON] PTR unsigned int 
;;		 -> main@distancia(2), 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text292
	file	"C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\Sensor_distancia.c"
	line	87
	global	__size_of_obten_dist
	__size_of_obten_dist	equ	__end_of_obten_dist-_obten_dist
	
_obten_dist:	
	opt	stack 7
; Regs used in _obten_dist: [wreg-fsr0h+status,2+status,0]
;obten_dist@pulsos stored from wreg
	movwf	(obten_dist@pulsos)
	line	88
	
l3728:	
;Sensor_distancia.c: 88: *pulsos = 0;
	movf	(obten_dist@pulsos),w
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	89
	
l3730:	
;Sensor_distancia.c: 89: TMR1H = TMR1L = 0;
	clrf	(14)	;volatile
	clrf	(15)	;volatile
	line	90
;Sensor_distancia.c: 90: while(RB1 && (*pulsos < 23200));
	
l1932:	
	btfss	(49/8),(49)&7
	goto	u371
	goto	u370
u371:
	goto	l3734
u370:
	
l3732:	
	movf	(obten_dist@pulsos),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_obten_dist+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_obten_dist+0)+0+1
	movlw	high(05AA0h)
	subwf	1+(??_obten_dist+0)+0,w
	movlw	low(05AA0h)
	skipnz
	subwf	0+(??_obten_dist+0)+0,w
	skipc
	goto	u381
	goto	u380
u381:
	goto	l1932
u380:
	line	91
	
l3734:	
;Sensor_distancia.c: 91: *pulsos = (TMR1H << 8) | TMR1L;
	movf	(obten_dist@pulsos),w
	movwf	fsr0
	movf	(14),w	;volatile
	movwf	indf
	incf	fsr0,f
	movf	(15),w	;volatile
	movwf	indf
	line	93
	
l3736:	
;Sensor_distancia.c: 93: TMR1ON = 0;
	bcf	(128/8),(128)&7
	line	95
;Sensor_distancia.c: 95: if(*pulsos >= 23200)
	movf	(obten_dist@pulsos),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_obten_dist+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_obten_dist+0)+0+1
	movlw	high(05AA0h)
	subwf	1+(??_obten_dist+0)+0,w
	movlw	low(05AA0h)
	skipnz
	subwf	0+(??_obten_dist+0)+0,w
	skipc
	goto	u391
	goto	u390
u391:
	goto	l3744
u390:
	line	96
	
l3738:	
;Sensor_distancia.c: 96: return 1;
	clrf	(?_obten_dist)
	incf	(?_obten_dist),f
	clrf	(?_obten_dist+1)
	goto	l1938
	line	99
	
l3744:	
;Sensor_distancia.c: 98: else
;Sensor_distancia.c: 99: return 0;
	clrf	(?_obten_dist)
	clrf	(?_obten_dist+1)
	line	100
	
l1938:	
	return
	opt stack 0
GLOBAL	__end_of_obten_dist
	__end_of_obten_dist:
;; =============== function _obten_dist ends ============

	signat	_obten_dist,4218
	global	_espera_sensor
psect	text293,local,class=CODE,delta=2
global __ptext293
__ptext293:

;; *************** function _espera_sensor *****************
;; Defined at:
;;		line 73 in file "C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\Sensor_distancia.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
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
psect	text293
	file	"C:\Users\Varush\Documents\Microcontroladores\Lenguaje C\Sensor_distancia.c"
	line	73
	global	__size_of_espera_sensor
	__size_of_espera_sensor	equ	__end_of_espera_sensor-_espera_sensor
	
_espera_sensor:	
	opt	stack 7
; Regs used in _espera_sensor: [wreg+status,2+status,0]
	line	74
	
l3710:	
;Sensor_distancia.c: 74: unsigned int i=0;
	clrf	(espera_sensor@i)
	clrf	(espera_sensor@i+1)
	line	75
;Sensor_distancia.c: 75: TMR1H = TMR1L = 0;
	clrf	(14)	;volatile
	clrf	(15)	;volatile
	line	76
	
l3712:	
;Sensor_distancia.c: 76: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	77
;Sensor_distancia.c: 77: while(!RB1 && (i<1000));
	
l1922:	
	btfsc	(49/8),(49)&7
	goto	u341
	goto	u340
u341:
	goto	l3716
u340:
	
l3714:	
	movlw	high(03E8h)
	subwf	(espera_sensor@i+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(espera_sensor@i),w
	skipc
	goto	u351
	goto	u350
u351:
	goto	l1922
u350:
	line	78
	
l3716:	
;Sensor_distancia.c: 78: i = (TMR1H << 8) | TMR1L;
	movf	(15),w	;volatile
	movwf	(espera_sensor@i+1)
	clrf	(espera_sensor@i)
	movf	(14),w	;volatile
	iorwf	(espera_sensor@i),f
	line	80
;Sensor_distancia.c: 80: if(i >= 1000)
	movlw	high(03E8h)
	subwf	(espera_sensor@i+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(espera_sensor@i),w
	skipc
	goto	u361
	goto	u360
u361:
	goto	l3724
u360:
	line	81
	
l3718:	
;Sensor_distancia.c: 81: return 0;
	clrf	(?_espera_sensor)
	clrf	(?_espera_sensor+1)
	goto	l1928
	line	84
	
l3724:	
;Sensor_distancia.c: 83: else
;Sensor_distancia.c: 84: return 1;
	clrf	(?_espera_sensor)
	incf	(?_espera_sensor),f
	clrf	(?_espera_sensor+1)
	line	85
	
l1928:	
	return
	opt stack 0
GLOBAL	__end_of_espera_sensor
	__end_of_espera_sensor:
;; =============== function _espera_sensor ends ============

	signat	_espera_sensor,90
psect	text294,local,class=CODE,delta=2
global __ptext294
__ptext294:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
