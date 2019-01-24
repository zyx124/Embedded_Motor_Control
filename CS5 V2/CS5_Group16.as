opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F737
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
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PCLATH equ 0Ah ;# 
# 382 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
INTCON equ 0Bh ;# 
# 471 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PIR1 equ 0Ch ;# 
# 532 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PIR2 equ 0Dh ;# 
# 583 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
TMR1 equ 0Eh ;# 
# 589 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
TMR1L equ 0Eh ;# 
# 595 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
TMR1H equ 0Fh ;# 
# 601 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
T1CON equ 010h ;# 
# 681 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
TMR2 equ 011h ;# 
# 687 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
T2CON equ 012h ;# 
# 757 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
SSPBUF equ 013h ;# 
# 763 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
SSPCON equ 014h ;# 
# 832 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
CCPR1 equ 015h ;# 
# 838 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
CCPR1L equ 015h ;# 
# 844 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
CCPR1H equ 016h ;# 
# 850 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
CCP1CON equ 017h ;# 
# 907 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
RCSTA equ 018h ;# 
# 1001 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
TXREG equ 019h ;# 
# 1007 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
RCREG equ 01Ah ;# 
# 1013 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
CCPR2 equ 01Bh ;# 
# 1019 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
CCPR2L equ 01Bh ;# 
# 1025 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
CCPR2H equ 01Ch ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
CCP2CON equ 01Dh ;# 
# 1088 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
ADRESH equ 01Eh ;# 
# 1094 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
ADCON0 equ 01Fh ;# 
# 1194 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
OPTION_REG equ 081h ;# 
# 1263 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
TRISA equ 085h ;# 
# 1324 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
TRISB equ 086h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
TRISC equ 087h ;# 
# 1446 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PIE1 equ 08Ch ;# 
# 1507 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PIE2 equ 08Dh ;# 
# 1558 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PCON equ 08Eh ;# 
# 1597 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
OSCCON equ 08Fh ;# 
# 1667 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
OSCTUNE equ 090h ;# 
# 1724 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
SSPCON2 equ 091h ;# 
# 1785 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PR2 equ 092h ;# 
# 1791 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
SSPADD equ 093h ;# 
# 1797 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
SSPSTAT equ 094h ;# 
# 1965 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
CCPR3 equ 095h ;# 
# 1971 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
CCPR3L equ 095h ;# 
# 1990 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
CCPR3H equ 096h ;# 
# 2009 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
CCP3CON equ 097h ;# 
# 2066 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
TXSTA equ 098h ;# 
# 2146 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
SPBRG equ 099h ;# 
# 2152 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
ADCON2 equ 09Bh ;# 
# 2193 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
CMCON equ 09Ch ;# 
# 2262 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
CVRCON equ 09Dh ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
ADRESL equ 09Eh ;# 
# 2332 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
ADCON1 equ 09Fh ;# 
# 2407 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
WDTCON equ 0105h ;# 
# 2464 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
LVDCON equ 0109h ;# 
# 2521 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PMDATA equ 010Ch ;# 
# 2527 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PMADR equ 010Dh ;# 
# 2533 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PMDATH equ 010Eh ;# 
# 2539 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PMADRH equ 010Fh ;# 
# 2545 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f737.h"
PMCON1 equ 018Ch ;# 
	FNCALL	_main,_Mode0
	FNCALL	_main,_Mode3
	FNCALL	_main,_SwitchDelay
	FNCALL	_main,_indexMotor
	FNCALL	_main,_initAtoD_PWM
	FNCALL	_main,_initPort
	FNCALL	_indexMotor,_PControl
	FNCALL	_Mode3,_PIDControl
	FNCALL	_Mode3,_brakeFlash
	FNCALL	_Mode3,_countUp
	FNCALL	_PIDControl,___awtoft
	FNCALL	_PIDControl,___ftadd
	FNCALL	_PIDControl,___ftge
	FNCALL	_PIDControl,___ftmul
	FNCALL	_PIDControl,___fttol
	FNCALL	___ftadd,___ftpack
	FNCALL	_Mode0,_PControl
	FNCALL	_Mode0,_brakeFlash
	FNCALL	_Mode0,_countUp
	FNCALL	_brakeFlash,_flashDelay
	FNCALL	_PControl,___awtoft
	FNCALL	_PControl,___ftge
	FNCALL	_PControl,___ftmul
	FNCALL	_PControl,___fttol
	FNCALL	___ftmul,___ftpack
	FNCALL	___awtoft,___ftpack
	FNROOT	_main
	FNCALL	_isrAD,___awdiv
	FNCALL	intlevel1,_isrAD
	global	intlevel1
	FNROOT	intlevel1
	global	_Count
	global	_i
	global	_State
	global	_Speed
	global	_aSpeed
	global	_baseVel
	global	_eCount
	global	_enCount
	global	_vErrorDiff
	global	_vErrorInt
	global	_K_i
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_K_i:
       ds      3

	global	_K_p
_K_p:
       ds      3

	global	_duty
_duty:
       ds      3

	global	_vError
_vError:
       ds      2

	global	_vRef
_vRef:
       ds      2

	global	_K_d
psect	nvBANK1,class=BANK1,space=1,noexec
global __pnvBANK1
__pnvBANK1:
_K_d:
       ds      3

	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_T2CON
_T2CON	set	0x12
	global	_ADIF
_ADIF	set	0x66
	global	_GIE
_GIE	set	0x5F
	global	_GO
_GO	set	0xFA
	global	_PEIE
_PEIE	set	0x5E
	global	_RC4
_RC4	set	0x3C
	global	_RC5
_RC5	set	0x3D
	global	_blackButton
_blackButton	set	44
	global	_brake
_brake	set	57
	global	_eddySensor
_eddySensor	set	59
	global	_encoder
_encoder	set	62
	global	_ADCON1
_ADCON1	set	0x9F
	global	_PR2
_PR2	set	0x92
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_ADIE
_ADIE	set	0x466
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_BORV$20
__CFG_BORV$20 equ 0x0
global __CFG_DEBUG$OFF
__CFG_DEBUG$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
global __CFG_BORSEN$OFF
__CFG_BORSEN$OFF equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
	file	"CS5_Group16.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_Count:
       ds      2

_i:
       ds      2

_State:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_Speed:
       ds      2

_aSpeed:
       ds      2

_baseVel:
       ds      2

_eCount:
       ds      2

_enCount:
       ds      2

_vErrorDiff:
       ds      2

_vErrorInt:
       ds      2

	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+0Eh)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x0
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x1
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2
	ds	1
??_PIDControl:	; 0 bytes @ 0x3
	ds	2
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_SwitchDelay:	; 0 bytes @ 0x0
?_flashDelay:	; 0 bytes @ 0x0
?_initPort:	; 0 bytes @ 0x0
?_initAtoD_PWM:	; 0 bytes @ 0x0
?_brakeFlash:	; 0 bytes @ 0x0
?_countUp:	; 0 bytes @ 0x0
?_PControl:	; 0 bytes @ 0x0
?_PIDControl:	; 0 bytes @ 0x0
?_indexMotor:	; 0 bytes @ 0x0
?_isrAD:	; 0 bytes @ 0x0
?_Mode0:	; 0 bytes @ 0x0
?_Mode3:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
??___awdiv:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_isrAD:	; 0 bytes @ 0x0
	ds	6
??_SwitchDelay:	; 0 bytes @ 0x6
??_flashDelay:	; 0 bytes @ 0x6
??_initPort:	; 0 bytes @ 0x6
??_initAtoD_PWM:	; 0 bytes @ 0x6
??_countUp:	; 0 bytes @ 0x6
?___ftge:	; 1 bit 
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x6
	global	?___fttol
?___fttol:	; 4 bytes @ 0x6
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x6
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x6
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x6
	ds	3
??_brakeFlash:	; 0 bytes @ 0x9
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x9
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x9
	ds	1
??___fttol:	; 0 bytes @ 0xA
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0xA
	ds	1
??___ftpack:	; 0 bytes @ 0xB
	ds	1
??___ftge:	; 0 bytes @ 0xC
	ds	2
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0xE
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0xE
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0xE
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0xF
	ds	2
??___awtoft:	; 0 bytes @ 0x11
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x13
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x13
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x14
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x14
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x17
	ds	3
??___ftmul:	; 0 bytes @ 0x1A
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1E
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1F
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x22
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x23
	ds	1
??_PControl:	; 0 bytes @ 0x24
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x24
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x24
	ds	2
??_indexMotor:	; 0 bytes @ 0x26
??_Mode0:	; 0 bytes @ 0x26
	ds	1
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x27
	ds	3
??___ftadd:	; 0 bytes @ 0x2A
	ds	4
??_Mode3:	; 0 bytes @ 0x2E
??_main:	; 0 bytes @ 0x2E
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         19
;!    Persistent  16
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      14
;!    BANK0            80     46      73
;!    BANK1            80      5       8
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _isrAD in COMMON
;!
;!    _isrAD->___awdiv
;!
;!Critical Paths under _main in BANK0
;!
;!    _indexMotor->_PControl
;!    _PIDControl->___ftadd
;!    ___ftadd->___ftmul
;!    _Mode0->_PControl
;!    _brakeFlash->_flashDelay
;!    _PControl->___ftmul
;!    ___ftmul->___awtoft
;!    ___awtoft->___ftpack
;!
;!Critical Paths under _isrAD in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _Mode3->_PIDControl
;!    _PIDControl->___ftadd
;!
;!Critical Paths under _isrAD in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isrAD in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isrAD in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0   19068
;!                              _Mode0
;!                              _Mode3
;!                        _SwitchDelay
;!                         _indexMotor
;!                       _initAtoD_PWM
;!                           _initPort
;! ---------------------------------------------------------------------------------
;! (1) _initPort                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initAtoD_PWM                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _indexMotor                                           0     0      0    5315
;!                           _PControl
;! ---------------------------------------------------------------------------------
;! (1) _SwitchDelay                                          2     2      0       0
;!                                              6 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _Mode3                                                0     0      0    8438
;!                         _PIDControl
;!                         _brakeFlash
;!                            _countUp
;! ---------------------------------------------------------------------------------
;! (2) _PIDControl                                           2     2      0    8438
;!                                              3 BANK1      2     2      0
;!                           ___awtoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___ftmul
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             13     7      6    3123
;!                                             36 BANK0     10     4      6
;!                                              0 BANK1      3     3      0
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) _Mode0                                                0     0      0    5315
;!                           _PControl
;!                         _brakeFlash
;!                            _countUp
;! ---------------------------------------------------------------------------------
;! (2) _countUp                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _brakeFlash                                           0     0      0       0
;!                         _flashDelay
;! ---------------------------------------------------------------------------------
;! (3) _flashDelay                                           3     3      0       0
;!                                              6 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _PControl                                             2     2      0    5315
;!                                             36 BANK0      2     2      0
;!                           ___awtoft
;!                             ___ftge
;!                            ___ftmul
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (3) ___fttol                                             14    10      4     338
;!                                              6 BANK0     14    10      4
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             16    10      6    2534
;!                                             20 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftge                                              12     6      6     480
;!                                              6 BANK0     12     6      6
;! ---------------------------------------------------------------------------------
;! (3) ___awtoft                                             6     3      3    1963
;!                                             14 BANK0      6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    1614
;!                                              6 BANK0      8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _isrAD                                                6     6      0     386
;!                                              0 BANK0      6     6      0
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (6) ___awdiv                                              9     5      4     386
;!                                              0 COMMON     9     5      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Mode0
;!     _PControl
;!       ___awtoft
;!         ___ftpack
;!       ___ftge
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!       ___fttol
;!     _brakeFlash
;!       _flashDelay
;!     _countUp
;!   _Mode3
;!     _PIDControl
;!       ___awtoft
;!         ___ftpack
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftge
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!       ___fttol
;!     _brakeFlash
;!       _flashDelay
;!     _countUp
;!   _SwitchDelay
;!   _indexMotor
;!     _PControl
;!       ___awtoft
;!         ___ftpack
;!       ___ftge
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!       ___fttol
;!   _initAtoD_PWM
;!   _initPort
;!
;! _isrAD (ROOT)
;!   ___awdiv
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      5F       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     2E      49       5       91.3%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!DATA                 0      0      5F       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BANK1               50      5       8       8       10.0%
;!BITBANK3            60      0       0       9        0.0%
;!BANK3               60      0       0      10        0.0%
;!BITBANK2            60      0       0      11        0.0%
;!BANK2               60      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 325 in file "C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Mode0
;;		_Mode3
;;		_SwitchDelay
;;		_indexMotor
;;		_initAtoD_PWM
;;		_initPort
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	325
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	325
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	332
	
l1823:	
;CS5_Group16.c: 332: initAtoD_PWM();
	fcall	_initAtoD_PWM
	line	333
;CS5_Group16.c: 333: initPort();
	fcall	_initPort
	line	334
	
l1825:	
;CS5_Group16.c: 334: indexMotor();
	fcall	_indexMotor
	line	342
;CS5_Group16.c: 342: while(1 != 2)
	
l180:	
	line	344
;CS5_Group16.c: 343: {
;CS5_Group16.c: 344: if(blackButton == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(44/8),(44)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l180
u2740:
	goto	l182
	line	346
	
l1827:	
;CS5_Group16.c: 345: {
;CS5_Group16.c: 346: while(blackButton == 1){}
	goto	l182
	
l183:	
	
l182:	
	btfsc	(44/8),(44)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l182
u2750:
	goto	l1829
	
l184:	
	line	347
	
l1829:	
;CS5_Group16.c: 347: SwitchDelay();
	fcall	_SwitchDelay
	line	349
	
l1831:	
;CS5_Group16.c: 349: if(RC4 == 1 && RC5 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7	;volatile
	goto	u2761
	goto	u2760
u2761:
	goto	l1837
u2760:
	
l1833:	
	btfss	(61/8),(61)&7	;volatile
	goto	u2771
	goto	u2770
u2771:
	goto	l1837
u2770:
	line	351
	
l1835:	
;CS5_Group16.c: 350: {
;CS5_Group16.c: 351: Mode0();
	fcall	_Mode0
	goto	l1837
	line	352
	
l185:	
	line	353
	
l1837:	
;CS5_Group16.c: 352: }
;CS5_Group16.c: 353: if(RC4 == 0 && RC5 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7	;volatile
	goto	u2781
	goto	u2780
u2781:
	goto	l180
u2780:
	
l1839:	
	btfsc	(61/8),(61)&7	;volatile
	goto	u2791
	goto	u2790
u2791:
	goto	l180
u2790:
	line	355
	
l1841:	
;CS5_Group16.c: 354: {
;CS5_Group16.c: 355: Mode3();
	fcall	_Mode3
	goto	l180
	line	356
	
l186:	
	goto	l180
	line	357
	
l181:	
	goto	l180
	line	358
	
l179:	
	line	342
	goto	l180
	
l187:	
	line	362
	
l188:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initPort

;; *************** function _initPort *****************
;; Defined at:
;;		line 92 in file "C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	92
global __ptext1
__ptext1:	;psect for function _initPort
psect	text1
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	92
	global	__size_of_initPort
	__size_of_initPort	equ	__end_of_initPort-_initPort
	
_initPort:	
;incstack = 0
	opt	stack 5
; Regs used in _initPort: [wreg+status,2]
	line	94
	
l1353:	
;CS5_Group16.c: 94: PORTB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	95
	
l1355:	
;CS5_Group16.c: 95: PORTC = 0B00000001;
	movlw	(01h)
	movwf	(7)	;volatile
	line	96
	
l1357:	
;CS5_Group16.c: 96: CCPR1L = 0B00000000;
	clrf	(21)	;volatile
	line	97
;CS5_Group16.c: 97: TRISA = 0B00111111;
	movlw	(03Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	98
	
l1359:	
;CS5_Group16.c: 98: TRISB = 0B00000000;
	clrf	(134)^080h	;volatile
	line	99
	
l1361:	
;CS5_Group16.c: 99: TRISC = 0B11111000;
	movlw	(0F8h)
	movwf	(135)^080h	;volatile
	line	101
;CS5_Group16.c: 101: i = 0;
	clrf	(_i)
	clrf	(_i+1)
	line	102
;CS5_Group16.c: 102: State = 0;
	clrf	(_State)
	line	103
	
l1363:	
;CS5_Group16.c: 103: duty = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_duty)
	movlw	0x0
	movwf	(_duty+1)
	movlw	0x0
	movwf	(_duty+2)
	line	104
	
l1365:	
;CS5_Group16.c: 104: Speed = 0;
	clrf	(_Speed)
	clrf	(_Speed+1)
	line	105
	
l1367:	
;CS5_Group16.c: 105: aSpeed = 0;
	clrf	(_aSpeed)
	clrf	(_aSpeed+1)
	line	106
	
l1369:	
;CS5_Group16.c: 106: Count = 0;
	clrf	(_Count)
	clrf	(_Count+1)
	line	107
	
l1371:	
;CS5_Group16.c: 107: eCount = 0;
	clrf	(_eCount)
	clrf	(_eCount+1)
	line	108
	
l1373:	
;CS5_Group16.c: 108: vRef = 165;
	movlw	low(0A5h)
	movwf	(_vRef)
	movlw	high(0A5h)
	movwf	((_vRef))+1
	line	109
;CS5_Group16.c: 109: baseVel = 0;
	clrf	(_baseVel)
	clrf	(_baseVel+1)
	line	110
;CS5_Group16.c: 110: vError = 0;
	clrf	(_vError)
	clrf	(_vError+1)
	line	111
;CS5_Group16.c: 111: vErrorDiff = 0;
	clrf	(_vErrorDiff)
	clrf	(_vErrorDiff+1)
	line	112
;CS5_Group16.c: 112: vErrorInt = 0;
	clrf	(_vErrorInt)
	clrf	(_vErrorInt+1)
	line	113
	
l1375:	
;CS5_Group16.c: 113: K_p = 10.0;
	movlw	0x0
	movwf	(_K_p)
	movlw	0x20
	movwf	(_K_p+1)
	movlw	0x41
	movwf	(_K_p+2)
	line	114
	
l1377:	
;CS5_Group16.c: 114: K_i = 0.5;
	movlw	0x0
	movwf	(_K_i)
	movlw	0x0
	movwf	(_K_i+1)
	movlw	0x3f
	movwf	(_K_i+2)
	line	115
	
l1379:	
;CS5_Group16.c: 115: K_d = 0.125;
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_K_d)^080h
	movlw	0x0
	movwf	(_K_d+1)^080h
	movlw	0x3e
	movwf	(_K_d+2)^080h
	line	116
	
l89:	
	return
	opt stack 0
GLOBAL	__end_of_initPort
	__end_of_initPort:
	signat	_initPort,88
	global	_initAtoD_PWM

;; *************** function _initAtoD_PWM *****************
;; Defined at:
;;		line 118 in file "C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
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
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	118
global __ptext2
__ptext2:	;psect for function _initAtoD_PWM
psect	text2
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	118
	global	__size_of_initAtoD_PWM
	__size_of_initAtoD_PWM	equ	__end_of_initAtoD_PWM-_initAtoD_PWM
	
_initAtoD_PWM:	
;incstack = 0
	opt	stack 5
; Regs used in _initAtoD_PWM: [wreg]
	line	121
	
l1381:	
;CS5_Group16.c: 121: ADIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7	;volatile
	line	122
;CS5_Group16.c: 122: ADIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1126/8)^080h,(1126)&7	;volatile
	line	123
;CS5_Group16.c: 123: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	124
;CS5_Group16.c: 124: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	126
	
l1383:	
;CS5_Group16.c: 126: ADCON1 = 0B01011101;
	movlw	(05Dh)
	movwf	(159)^080h	;volatile
	line	127
;CS5_Group16.c: 127: ADCON0 = 0B10001001;
	movlw	(089h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	128
	
l1385:	
;CS5_Group16.c: 128: GO = 1;
	bsf	(250/8),(250)&7	;volatile
	line	130
;CS5_Group16.c: 130: PR2 = 0B11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	131
;CS5_Group16.c: 131: T2CON = 0B00000100;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	132
;CS5_Group16.c: 132: CCP1CON = 0B00001100;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	133
	
l92:	
	return
	opt stack 0
GLOBAL	__end_of_initAtoD_PWM
	__end_of_initAtoD_PWM:
	signat	_initAtoD_PWM,88
	global	_indexMotor

;; *************** function _indexMotor *****************
;; Defined at:
;;		line 207 in file "C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_PControl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	207
global __ptext3
__ptext3:	;psect for function _indexMotor
psect	text3
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	207
	global	__size_of_indexMotor
	__size_of_indexMotor	equ	__end_of_indexMotor-_indexMotor
	
_indexMotor:	
;incstack = 0
	opt	stack 2
; Regs used in _indexMotor: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	209
	
l1745:	
;CS5_Group16.c: 209: while(eCount < 4)
	goto	l1755
	
l126:	
	line	211
	
l1747:	
;CS5_Group16.c: 210: {
;CS5_Group16.c: 211: PControl();
	fcall	_PControl
	line	212
	
l1749:	
;CS5_Group16.c: 212: if(eddySensor == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(59/8),(59)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l1755
u2610:
	goto	l128
	line	214
	
l1751:	
;CS5_Group16.c: 213: {
;CS5_Group16.c: 214: while(eddySensor == 1){}
	goto	l128
	
l129:	
	
l128:	
	btfsc	(59/8),(59)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l128
u2620:
	goto	l1753
	
l130:	
	line	215
	
l1753:	
;CS5_Group16.c: 215: eCount = eCount + 1;
	movf	(_eCount),w
	addlw	low(01h)
	movwf	(_eCount)
	movf	(_eCount+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_eCount)
	goto	l1755
	line	216
	
l127:	
	goto	l1755
	line	217
	
l125:	
	line	209
	
l1755:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_eCount+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2635
	movlw	low(04h)
	subwf	(_eCount),w
u2635:

	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l1747
u2630:
	goto	l1757
	
l131:	
	line	219
	
l1757:	
;CS5_Group16.c: 216: }
;CS5_Group16.c: 217: }
;CS5_Group16.c: 219: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(21)	;volatile
	line	220
	
l132:	
	return
	opt stack 0
GLOBAL	__end_of_indexMotor
	__end_of_indexMotor:
	signat	_indexMotor,88
	global	_SwitchDelay

;; *************** function _SwitchDelay *****************
;; Defined at:
;;		line 82 in file "C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
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
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	82
global __ptext4
__ptext4:	;psect for function _SwitchDelay
psect	text4
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	82
	global	__size_of_SwitchDelay
	__size_of_SwitchDelay	equ	__end_of_SwitchDelay-_SwitchDelay
	
_SwitchDelay:	
;incstack = 0
	opt	stack 5
; Regs used in _SwitchDelay: [wreg]
	line	84
	
l1351:	
;CS5_Group16.c: 84: _delay((unsigned long)((1200)*(20000000/4000000.0)));
	opt asmopt_off
movlw	8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_SwitchDelay+0)+0+1),f
	movlw	201
movwf	((??_SwitchDelay+0)+0),f
u2807:
	decfsz	((??_SwitchDelay+0)+0),f
	goto	u2807
	decfsz	((??_SwitchDelay+0)+0+1),f
	goto	u2807
	nop2
opt asmopt_on

	line	85
	
l83:	
	return
	opt stack 0
GLOBAL	__end_of_SwitchDelay
	__end_of_SwitchDelay:
	signat	_SwitchDelay,88
	global	_Mode3

;; *************** function _Mode3 *****************
;; Defined at:
;;		line 282 in file "C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_PIDControl
;;		_brakeFlash
;;		_countUp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	282
global __ptext5
__ptext5:	;psect for function _Mode3
psect	text5
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	282
	global	__size_of_Mode3
	__size_of_Mode3	equ	__end_of_Mode3-_Mode3
	
_Mode3:	
;incstack = 0
	opt	stack 2
; Regs used in _Mode3: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	284
	
l1791:	
;CS5_Group16.c: 284: CCPR1L = vRef;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vRef),w
	movwf	(21)	;volatile
	line	286
;CS5_Group16.c: 286: while(1 != 2)
	goto	l1795
	
l160:	
	line	288
;CS5_Group16.c: 287: {
;CS5_Group16.c: 288: while(enCount < 100)
	goto	l1795
	
l162:	
	line	290
	
l1793:	
;CS5_Group16.c: 289: {
;CS5_Group16.c: 290: countUp();
	fcall	_countUp
	line	291
;CS5_Group16.c: 291: PIDControl();
	fcall	_PIDControl
	goto	l1795
	line	292
	
l161:	
	line	288
	
l1795:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_enCount+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2695
	movlw	low(064h)
	subwf	(_enCount),w
u2695:

	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l1793
u2690:
	goto	l1797
	
l163:	
	line	293
	
l1797:	
;CS5_Group16.c: 292: }
;CS5_Group16.c: 293: enCount = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_enCount)
	clrf	(_enCount+1)
	line	294
	
l1799:	
;CS5_Group16.c: 294: vRef = vRef + 1;
	movf	(_vRef),w
	addlw	low(01h)
	movwf	(_vRef)
	movf	(_vRef+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_vRef)
	line	296
	
l1801:	
;CS5_Group16.c: 296: if(vRef == 190)
	movlw	0BEh
	xorwf	(_vRef),w
	iorwf	(_vRef+1),w
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l1795
u2700:
	goto	l1807
	line	298
	
l1803:	
;CS5_Group16.c: 297: {
;CS5_Group16.c: 298: while(enCount < 6000)
	goto	l1807
	
l166:	
	line	300
	
l1805:	
;CS5_Group16.c: 299: {
;CS5_Group16.c: 300: countUp();
	fcall	_countUp
	line	301
;CS5_Group16.c: 301: PIDControl();
	fcall	_PIDControl
	goto	l1807
	line	302
	
l165:	
	line	298
	
l1807:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_enCount+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01770h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2715
	movlw	low(01770h)
	subwf	(_enCount),w
u2715:

	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l1805
u2710:
	goto	l1809
	
l167:	
	line	303
	
l1809:	
;CS5_Group16.c: 302: }
;CS5_Group16.c: 303: enCount = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_enCount)
	clrf	(_enCount+1)
	line	304
;CS5_Group16.c: 304: break;
	goto	l1813
	line	305
	
l164:	
	goto	l1795
	line	306
	
l159:	
	line	286
	goto	l1795
	
l168:	
	line	307
;CS5_Group16.c: 305: }
;CS5_Group16.c: 306: }
;CS5_Group16.c: 307: while(1 != 2)
	goto	l1813
	
l170:	
	line	309
;CS5_Group16.c: 308: {
;CS5_Group16.c: 309: while(enCount < 100)
	goto	l1813
	
l172:	
	line	311
	
l1811:	
;CS5_Group16.c: 310: {
;CS5_Group16.c: 311: countUp();
	fcall	_countUp
	line	312
;CS5_Group16.c: 312: PIDControl();
	fcall	_PIDControl
	goto	l1813
	line	313
	
l171:	
	line	309
	
l1813:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_enCount+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2725
	movlw	low(064h)
	subwf	(_enCount),w
u2725:

	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l1811
u2720:
	goto	l1815
	
l173:	
	line	314
	
l1815:	
;CS5_Group16.c: 313: }
;CS5_Group16.c: 314: enCount = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_enCount)
	clrf	(_enCount+1)
	line	315
	
l1817:	
;CS5_Group16.c: 315: vRef = vRef - 1;
	movf	(_vRef),w
	addlw	low(-1)
	movwf	(_vRef)
	movf	(_vRef+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(_vRef)
	line	317
	
l1819:	
;CS5_Group16.c: 317: if(aSpeed == 140)
	movlw	08Ch
	xorwf	(_aSpeed),w
	iorwf	(_aSpeed+1),w
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l1813
u2730:
	line	319
	
l1821:	
;CS5_Group16.c: 318: {
;CS5_Group16.c: 319: brakeFlash();
	fcall	_brakeFlash
	line	320
;CS5_Group16.c: 320: break;
	goto	l176
	line	321
	
l174:	
	goto	l1813
	line	322
	
l169:	
	line	307
	goto	l1813
	
l175:	
	line	323
	
l176:	
	return
	opt stack 0
GLOBAL	__end_of_Mode3
	__end_of_Mode3:
	signat	_Mode3,88
	global	_PIDControl

;; *************** function _PIDControl *****************
;; Defined at:
;;		line 181 in file "C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
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
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftge
;;		___ftmul
;;		___fttol
;; This function is called by:
;;		_Mode3
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	181
global __ptext6
__ptext6:	;psect for function _PIDControl
psect	text6
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	181
	global	__size_of_PIDControl
	__size_of_PIDControl	equ	__end_of_PIDControl-_PIDControl
	
_PIDControl:	
;incstack = 0
	opt	stack 2
; Regs used in _PIDControl: [wreg+status,2+status,0+pclath+cstack]
	line	183
	
l1725:	
;CS5_Group16.c: 183: vError = vRef - aSpeed;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_aSpeed),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_PIDControl+0)^080h+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_aSpeed+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((??_PIDControl+0)^080h+0+1)
	incf	(??_PIDControl+0)^080h+0,f
	skipnz
	incf	((??_PIDControl+0)^080h+0+1),f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vRef),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	0+(??_PIDControl+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vError)
	movf	(_vRef+1),w
	skipnc
	incf	(_vRef+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	1+(??_PIDControl+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(_vError)
	line	184
;CS5_Group16.c: 184: vErrorDiff = vError - vErrorDiff;
	comf	(_vErrorDiff),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_PIDControl+0)^080h+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_vErrorDiff+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((??_PIDControl+0)^080h+0+1)
	incf	(??_PIDControl+0)^080h+0,f
	skipnz
	incf	((??_PIDControl+0)^080h+0+1),f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vError),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	0+(??_PIDControl+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_vErrorDiff)
	movf	(_vError+1),w
	skipnc
	incf	(_vError+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	1+(??_PIDControl+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(_vErrorDiff)
	line	185
;CS5_Group16.c: 185: vErrorInt = vErrorInt + vError;
	movf	(_vError),w
	addwf	(_vErrorInt),w
	movwf	(_vErrorInt)
	movf	(_vError+1),w
	skipnc
	incf	(_vError+1),w
	addwf	(_vErrorInt+1),w
	movwf	1+(_vErrorInt)
	line	187
	
l1727:	
;CS5_Group16.c: 187: PORTB = vError;
	movf	(_vError),w
	movwf	(6)	;volatile
	line	189
	
l1729:	
;CS5_Group16.c: 189: duty = K_p * vError;
	movf	(_K_p),w
	movwf	(___ftmul@f1)
	movf	(_K_p+1),w
	movwf	(___ftmul@f1+1)
	movf	(_K_p+2),w
	movwf	(___ftmul@f1+2)
	movf	(_vError+1),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(_vError),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_duty)
	movf	(1+(?___ftmul)),w
	movwf	(_duty+1)
	movf	(2+(?___ftmul)),w
	movwf	(_duty+2)
	line	190
	
l1731:	
;CS5_Group16.c: 190: duty = duty + K_d * vErrorDiff;
	movf	(_duty),w
	movwf	(___ftadd@f1)
	movf	(_duty+1),w
	movwf	(___ftadd@f1+1)
	movf	(_duty+2),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_K_d)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_K_d+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_K_d+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	movf	(_vErrorDiff+1),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(_vErrorDiff),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(_duty)
	movf	(1+(?___ftadd)),w
	movwf	(_duty+1)
	movf	(2+(?___ftadd)),w
	movwf	(_duty+2)
	line	191
	
l1733:	
;CS5_Group16.c: 191: duty = duty + K_i * vErrorInt;
	movf	(_duty),w
	movwf	(___ftadd@f1)
	movf	(_duty+1),w
	movwf	(___ftadd@f1+1)
	movf	(_duty+2),w
	movwf	(___ftadd@f1+2)
	movf	(_K_i),w
	movwf	(___ftmul@f1)
	movf	(_K_i+1),w
	movwf	(___ftmul@f1+1)
	movf	(_K_i+2),w
	movwf	(___ftmul@f1+2)
	movf	(_vErrorInt+1),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(_vErrorInt),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(_duty)
	movf	(1+(?___ftadd)),w
	movwf	(_duty+1)
	movf	(2+(?___ftadd)),w
	movwf	(_duty+2)
	line	193
	
l1735:	
;CS5_Group16.c: 193: if(duty > 255)
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x7f
	movwf	(___ftge@ff1+1)
	movlw	0x43
	movwf	(___ftge@ff1+2)
	movf	(_duty),w
	movwf	(___ftge@ff2)
	movf	(_duty+1),w
	movwf	(___ftge@ff2+1)
	movf	(_duty+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2591
	goto	u2590
u2591:
	goto	l1739
u2590:
	line	195
	
l1737:	
;CS5_Group16.c: 194: {
;CS5_Group16.c: 195: CCPR1L = 255;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	196
;CS5_Group16.c: 196: }
	goto	l122
	line	197
	
l118:	
	
l1739:	
;CS5_Group16.c: 197: else if(duty < 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_duty),w
	movwf	(___ftge@ff1)
	movf	(_duty+1),w
	movwf	(___ftge@ff1+1)
	movf	(_duty+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2601
	goto	u2600
u2601:
	goto	l1743
u2600:
	line	199
	
l1741:	
;CS5_Group16.c: 198: {
;CS5_Group16.c: 199: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(21)	;volatile
	line	200
;CS5_Group16.c: 200: }
	goto	l122
	line	201
	
l120:	
	line	203
	
l1743:	
;CS5_Group16.c: 201: else
;CS5_Group16.c: 202: {
;CS5_Group16.c: 203: CCPR1L = duty;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_duty),w
	movwf	(___fttol@f1)
	movf	(_duty+1),w
	movwf	(___fttol@f1+1)
	movf	(_duty+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	movwf	(21)	;volatile
	goto	l122
	line	204
	
l121:	
	goto	l122
	
l119:	
	line	205
	
l122:	
	return
	opt stack 0
GLOBAL	__end_of_PIDControl
	__end_of_PIDControl:
	signat	_PIDControl,88
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   36[BANK0 ] float 
;;  f2              3   39[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1    2[BANK1 ] unsigned char 
;;  exp2            1    1[BANK1 ] unsigned char 
;;  sign            1    0[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   36[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      10       3       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_PIDControl
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext7
__ptext7:	;psect for function ___ftadd
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1587:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___ftadd@exp1)^080h
	line	91
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___ftadd@exp2)^080h
	line	92
	
l1589:	
	movf	(___ftadd@exp1)^080h,w
	skipz
	goto	u2190
	goto	l1595
u2190:
	
l1591:	
	movf	(___ftadd@exp2)^080h,w
	subwf	(___ftadd@exp1)^080h,w
	skipnc
	goto	u2201
	goto	u2200
u2201:
	goto	l1599
u2200:
	
l1593:	
	decf	(___ftadd@exp1)^080h,w
	xorlw	0ffh
	addwf	(___ftadd@exp2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l1599
u2210:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	goto	l1595
	
l367:	
	line	93
	
l1595:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l368
	
l1597:	
	goto	l368
	
l365:	
	line	94
	
l1599:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@exp2)^080h,w
	skipz
	goto	u2220
	goto	l371
u2220:
	
l1601:	
	movf	(___ftadd@exp1)^080h,w
	subwf	(___ftadd@exp2)^080h,w
	skipnc
	goto	u2231
	goto	u2230
u2231:
	goto	l1605
u2230:
	
l1603:	
	decf	(___ftadd@exp2)^080h,w
	xorlw	0ffh
	addwf	(___ftadd@exp1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l1605
u2240:
	
l371:	
	line	95
	goto	l368
	
l369:	
	line	96
	
l1605:	
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___ftadd@sign)^080h
	line	97
	
l1607:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l372
u2250:
	line	98
	
l1609:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(___ftadd@sign)^080h+(7/8),(7)&7
	
l372:	
	line	99
	bcf	status, 5	;RP0=0, select bank0
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l373
u2260:
	line	100
	
l1611:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(___ftadd@sign)^080h+(6/8),(6)&7
	
l373:	
	line	101
	bcf	status, 5	;RP0=0, select bank0
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1613:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1615:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@exp2)^080h,w
	subwf	(___ftadd@exp1)^080h,w
	skipnc
	goto	u2271
	goto	u2270
u2271:
	goto	l1627
u2270:
	goto	l1617
	line	109
	
l375:	
	line	110
	
l1617:	
	movlw	01h
u2285:
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2285
	line	111
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(___ftadd@exp2)^080h,f
	line	112
	
l1619:	
	movf	(___ftadd@exp2)^080h,w
	xorwf	(___ftadd@exp1)^080h,w
	skipnz
	goto	u2291
	goto	u2290
u2291:
	goto	l1625
u2290:
	
l1621:	
	movlw	low(01h)
	subwf	(___ftadd@sign)^080h,f
	movf	((___ftadd@sign)^080h),w
	andlw	07h
	btfss	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l1617
u2300:
	goto	l1625
	
l377:	
	goto	l1625
	
l378:	
	line	113
	goto	l1625
	
l380:	
	line	114
	
l1623:	
	movlw	01h
u2315:
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2315

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(___ftadd@exp1)^080h,f
	goto	l1625
	line	116
	
l379:	
	line	113
	
l1625:	
	movf	(___ftadd@exp1)^080h,w
	xorwf	(___ftadd@exp2)^080h,w
	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l1623
u2320:
	goto	l382
	
l381:	
	line	117
	goto	l382
	
l374:	
	
l1627:	
	movf	(___ftadd@exp1)^080h,w
	subwf	(___ftadd@exp2)^080h,w
	skipnc
	goto	u2331
	goto	u2330
u2331:
	goto	l382
u2330:
	goto	l1629
	line	120
	
l384:	
	line	121
	
l1629:	
	movlw	01h
u2345:
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2345
	line	122
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(___ftadd@exp1)^080h,f
	line	123
	
l1631:	
	movf	(___ftadd@exp2)^080h,w
	xorwf	(___ftadd@exp1)^080h,w
	skipnz
	goto	u2351
	goto	u2350
u2351:
	goto	l1637
u2350:
	
l1633:	
	movlw	low(01h)
	subwf	(___ftadd@sign)^080h,f
	movf	((___ftadd@sign)^080h),w
	andlw	07h
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l1629
u2360:
	goto	l1637
	
l386:	
	goto	l1637
	
l387:	
	line	124
	goto	l1637
	
l389:	
	line	125
	
l1635:	
	movlw	01h
u2375:
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2375

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(___ftadd@exp2)^080h,f
	goto	l1637
	line	127
	
l388:	
	line	124
	
l1637:	
	movf	(___ftadd@exp1)^080h,w
	xorwf	(___ftadd@exp2)^080h,w
	skipz
	goto	u2381
	goto	u2380
u2381:
	goto	l1635
u2380:
	goto	l382
	
l390:	
	goto	l382
	line	128
	
l383:	
	line	129
	
l382:	
	btfss	(___ftadd@sign)^080h,(7)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l1641
u2390:
	line	131
	
l1639:	
	movlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l1641
	line	133
	
l391:	
	line	134
	
l1641:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(___ftadd@sign)^080h,(6)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l1645
u2400:
	line	136
	
l1643:	
	movlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l1645
	line	138
	
l392:	
	line	139
	
l1645:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___ftadd@sign)^080h
	line	140
	
l1647:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2411
	addwf	(___ftadd@f2+1),f
u2411:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2412
	addwf	(___ftadd@f2+2),f
u2412:

	line	141
	
l1649:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l1655
u2420:
	line	142
	
l1651:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l1653:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___ftadd@sign)^080h
	incf	(___ftadd@sign)^080h,f
	goto	l1655
	line	145
	
l393:	
	line	146
	
l1655:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@exp1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@sign)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l368
	
l1657:	
	line	148
	
l368:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	_Mode0

;; *************** function _Mode0 *****************
;; Defined at:
;;		line 238 in file "C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_PControl
;;		_brakeFlash
;;		_countUp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	238
global __ptext8
__ptext8:	;psect for function _Mode0
psect	text8
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	238
	global	__size_of_Mode0
	__size_of_Mode0	equ	__end_of_Mode0-_Mode0
	
_Mode0:	
;incstack = 0
	opt	stack 2
; Regs used in _Mode0: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	240
	
l1759:	
;CS5_Group16.c: 240: CCPR1L = vRef;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vRef),w
	movwf	(21)	;volatile
	line	242
;CS5_Group16.c: 242: while(1 != 2)
	goto	l1763
	
l140:	
	line	244
;CS5_Group16.c: 243: {
;CS5_Group16.c: 244: while(enCount < 100)
	goto	l1763
	
l142:	
	line	246
	
l1761:	
;CS5_Group16.c: 245: {
;CS5_Group16.c: 246: countUp();
	fcall	_countUp
	line	247
;CS5_Group16.c: 247: PControl();
	fcall	_PControl
	goto	l1763
	line	248
	
l141:	
	line	244
	
l1763:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_enCount+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2645
	movlw	low(064h)
	subwf	(_enCount),w
u2645:

	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l1761
u2640:
	goto	l1765
	
l143:	
	line	249
	
l1765:	
;CS5_Group16.c: 248: }
;CS5_Group16.c: 249: enCount = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_enCount)
	clrf	(_enCount+1)
	line	250
	
l1767:	
;CS5_Group16.c: 250: vRef = vRef + 1;
	movf	(_vRef),w
	addlw	low(01h)
	movwf	(_vRef)
	movf	(_vRef+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_vRef)
	line	253
	
l1769:	
;CS5_Group16.c: 253: if(vRef == 190)
	movlw	0BEh
	xorwf	(_vRef),w
	iorwf	(_vRef+1),w
	skipz
	goto	u2651
	goto	u2650
u2651:
	goto	l1763
u2650:
	goto	l1775
	line	255
	
l1771:	
;CS5_Group16.c: 254: {
;CS5_Group16.c: 255: while(enCount < 6000)
	goto	l1775
	
l146:	
	line	257
	
l1773:	
;CS5_Group16.c: 256: {
;CS5_Group16.c: 257: countUp();
	fcall	_countUp
	line	258
;CS5_Group16.c: 258: PControl();
	fcall	_PControl
	goto	l1775
	line	259
	
l145:	
	line	255
	
l1775:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_enCount+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01770h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2665
	movlw	low(01770h)
	subwf	(_enCount),w
u2665:

	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l1773
u2660:
	goto	l1777
	
l147:	
	line	260
	
l1777:	
;CS5_Group16.c: 259: }
;CS5_Group16.c: 260: enCount = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_enCount)
	clrf	(_enCount+1)
	line	261
;CS5_Group16.c: 261: break;
	goto	l1781
	line	262
	
l144:	
	goto	l1763
	line	263
	
l139:	
	line	242
	goto	l1763
	
l148:	
	line	264
;CS5_Group16.c: 262: }
;CS5_Group16.c: 263: }
;CS5_Group16.c: 264: while(1 != 2)
	goto	l1781
	
l150:	
	line	266
;CS5_Group16.c: 265: {
;CS5_Group16.c: 266: while(enCount < 100)
	goto	l1781
	
l152:	
	line	268
	
l1779:	
;CS5_Group16.c: 267: {
;CS5_Group16.c: 268: countUp();
	fcall	_countUp
	line	269
;CS5_Group16.c: 269: PControl();
	fcall	_PControl
	goto	l1781
	line	270
	
l151:	
	line	266
	
l1781:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_enCount+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2675
	movlw	low(064h)
	subwf	(_enCount),w
u2675:

	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l1779
u2670:
	goto	l1783
	
l153:	
	line	271
	
l1783:	
;CS5_Group16.c: 270: }
;CS5_Group16.c: 271: enCount = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_enCount)
	clrf	(_enCount+1)
	line	272
	
l1785:	
;CS5_Group16.c: 272: vRef = vRef - 1;
	movf	(_vRef),w
	addlw	low(-1)
	movwf	(_vRef)
	movf	(_vRef+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(_vRef)
	line	274
	
l1787:	
;CS5_Group16.c: 274: if(vRef == 140)
	movlw	08Ch
	xorwf	(_vRef),w
	iorwf	(_vRef+1),w
	skipz
	goto	u2681
	goto	u2680
u2681:
	goto	l1781
u2680:
	line	276
	
l1789:	
;CS5_Group16.c: 275: {
;CS5_Group16.c: 276: brakeFlash();
	fcall	_brakeFlash
	line	277
;CS5_Group16.c: 277: break;
	goto	l156
	line	278
	
l154:	
	goto	l1781
	line	279
	
l149:	
	line	264
	goto	l1781
	
l155:	
	line	280
	
l156:	
	return
	opt stack 0
GLOBAL	__end_of_Mode0
	__end_of_Mode0:
	signat	_Mode0,88
	global	_countUp

;; *************** function _countUp *****************
;; Defined at:
;;		line 151 in file "C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mode0
;;		_Mode3
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	151
global __ptext9
__ptext9:	;psect for function _countUp
psect	text9
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	151
	global	__size_of_countUp
	__size_of_countUp	equ	__end_of_countUp-_countUp
	
_countUp:	
;incstack = 0
	opt	stack 4
; Regs used in _countUp: [wreg+status,2+status,0]
	line	153
	
l1309:	
;CS5_Group16.c: 153: if(encoder == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(62/8),(62)&7
	goto	u1711
	goto	u1710
u1711:
	goto	l108
u1710:
	goto	l105
	line	155
	
l1311:	
;CS5_Group16.c: 154: {
;CS5_Group16.c: 155: while(encoder == 1){}
	goto	l105
	
l106:	
	
l105:	
	btfsc	(62/8),(62)&7
	goto	u1721
	goto	u1720
u1721:
	goto	l105
u1720:
	goto	l1313
	
l107:	
	line	156
	
l1313:	
;CS5_Group16.c: 156: enCount = enCount + 1;
	movf	(_enCount),w
	addlw	low(01h)
	movwf	(_enCount)
	movf	(_enCount+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_enCount)
	goto	l108
	line	157
	
l104:	
	line	158
	
l108:	
	return
	opt stack 0
GLOBAL	__end_of_countUp
	__end_of_countUp:
	signat	_countUp,88
	global	_brakeFlash

;; *************** function _brakeFlash *****************
;; Defined at:
;;		line 135 in file "C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_flashDelay
;; This function is called by:
;;		_Mode0
;;		_Mode3
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	135
global __ptext10
__ptext10:	;psect for function _brakeFlash
psect	text10
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	135
	global	__size_of_brakeFlash
	__size_of_brakeFlash	equ	__end_of_brakeFlash-_brakeFlash
	
_brakeFlash:	
;incstack = 0
	opt	stack 3
; Regs used in _brakeFlash: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	137
	
l1291:	
;CS5_Group16.c: 137: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(21)	;volatile
	line	138
	
l1293:	
;CS5_Group16.c: 138: brake = 1;
	bsf	(57/8),(57)&7
	line	140
;CS5_Group16.c: 140: while(aSpeed != 128){}
	goto	l1295
	
l96:	
	goto	l1295
	
l95:	
	
l1295:	
	movlw	080h
	xorwf	(_aSpeed),w
	iorwf	(_aSpeed+1),w
	skipz
	goto	u1691
	goto	u1690
u1691:
	goto	l1295
u1690:
	goto	l1307
	
l97:	
	line	141
;CS5_Group16.c: 141: while(i < 10)
	goto	l1307
	
l99:	
	line	143
	
l1297:	
;CS5_Group16.c: 142: {
;CS5_Group16.c: 143: PORTB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	144
	
l1299:	
;CS5_Group16.c: 144: flashDelay();
	fcall	_flashDelay
	line	145
	
l1301:	
;CS5_Group16.c: 145: PORTB = 0B11111111;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	146
	
l1303:	
;CS5_Group16.c: 146: flashDelay();
	fcall	_flashDelay
	line	147
	
l1305:	
;CS5_Group16.c: 147: i = i + 1;
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	goto	l1307
	line	148
	
l98:	
	line	141
	
l1307:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u1705
	movlw	low(0Ah)
	subwf	(_i),w
u1705:

	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l1297
u1700:
	goto	l101
	
l100:	
	line	149
	
l101:	
	return
	opt stack 0
GLOBAL	__end_of_brakeFlash
	__end_of_brakeFlash:
	signat	_brakeFlash,88
	global	_flashDelay

;; *************** function _flashDelay *****************
;; Defined at:
;;		line 87 in file "C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
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
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_brakeFlash
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	87
global __ptext11
__ptext11:	;psect for function _flashDelay
psect	text11
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	87
	global	__size_of_flashDelay
	__size_of_flashDelay	equ	__end_of_flashDelay-_flashDelay
	
_flashDelay:	
;incstack = 0
	opt	stack 3
; Regs used in _flashDelay: [wreg]
	line	89
	
l1091:	
;CS5_Group16.c: 89: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_flashDelay+0)+0+2),f
movlw	175
movwf	((??_flashDelay+0)+0+1),f
	movlw	193
movwf	((??_flashDelay+0)+0),f
u2817:
	decfsz	((??_flashDelay+0)+0),f
	goto	u2817
	decfsz	((??_flashDelay+0)+0+1),f
	goto	u2817
	decfsz	((??_flashDelay+0)+0+2),f
	goto	u2817
	nop
opt asmopt_on

	line	90
	
l86:	
	return
	opt stack 0
GLOBAL	__end_of_flashDelay
	__end_of_flashDelay:
	signat	_flashDelay,88
	global	_PControl

;; *************** function _PControl *****************
;; Defined at:
;;		line 160 in file "C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
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
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtoft
;;		___ftge
;;		___ftmul
;;		___fttol
;; This function is called by:
;;		_indexMotor
;;		_Mode0
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	160
global __ptext12
__ptext12:	;psect for function _PControl
psect	text12
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	160
	global	__size_of_PControl
	__size_of_PControl	equ	__end_of_PControl-_PControl
	
_PControl:	
;incstack = 0
	opt	stack 2
; Regs used in _PControl: [wreg+status,2+status,0+pclath+cstack]
	line	162
	
l1709:	
;CS5_Group16.c: 162: vError = vRef - aSpeed;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_aSpeed),w
	movwf	(??_PControl+0)+0
	comf	(_aSpeed+1),w
	movwf	((??_PControl+0)+0+1)
	incf	(??_PControl+0)+0,f
	skipnz
	incf	((??_PControl+0)+0+1),f
	movf	(_vRef),w
	addwf	0+(??_PControl+0)+0,w
	movwf	(_vError)
	movf	(_vRef+1),w
	skipnc
	incf	(_vRef+1),w
	addwf	1+(??_PControl+0)+0,w
	movwf	1+(_vError)
	line	163
	
l1711:	
;CS5_Group16.c: 163: PORTB = vError;
	movf	(_vError),w
	movwf	(6)	;volatile
	line	165
	
l1713:	
;CS5_Group16.c: 165: duty = vError * K_p;
	movf	(_K_p),w
	movwf	(___ftmul@f1)
	movf	(_K_p+1),w
	movwf	(___ftmul@f1+1)
	movf	(_K_p+2),w
	movwf	(___ftmul@f1+2)
	movf	(_vError+1),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(_vError),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_duty)
	movf	(1+(?___ftmul)),w
	movwf	(_duty+1)
	movf	(2+(?___ftmul)),w
	movwf	(_duty+2)
	line	167
	
l1715:	
;CS5_Group16.c: 167: if(duty > 255)
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x7f
	movwf	(___ftge@ff1+1)
	movlw	0x43
	movwf	(___ftge@ff1+2)
	movf	(_duty),w
	movwf	(___ftge@ff2)
	movf	(_duty+1),w
	movwf	(___ftge@ff2+1)
	movf	(_duty+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2571
	goto	u2570
u2571:
	goto	l1719
u2570:
	line	169
	
l1717:	
;CS5_Group16.c: 168: {
;CS5_Group16.c: 169: CCPR1L = 255;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	170
;CS5_Group16.c: 170: }
	goto	l115
	line	171
	
l111:	
	
l1719:	
;CS5_Group16.c: 171: else if(duty < 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_duty),w
	movwf	(___ftge@ff1)
	movf	(_duty+1),w
	movwf	(___ftge@ff1+1)
	movf	(_duty+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2581
	goto	u2580
u2581:
	goto	l1723
u2580:
	line	173
	
l1721:	
;CS5_Group16.c: 172: {
;CS5_Group16.c: 173: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(21)	;volatile
	line	174
;CS5_Group16.c: 174: }
	goto	l115
	line	175
	
l113:	
	line	177
	
l1723:	
;CS5_Group16.c: 175: else
;CS5_Group16.c: 176: {
;CS5_Group16.c: 177: CCPR1L = duty;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_duty),w
	movwf	(___fttol@f1)
	movf	(_duty+1),w
	movwf	(___fttol@f1+1)
	movf	(_duty+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	movwf	(21)	;volatile
	goto	l115
	line	178
	
l114:	
	goto	l115
	
l112:	
	line	179
	
l115:	
	return
	opt stack 0
GLOBAL	__end_of_PControl
	__end_of_PControl:
	signat	_PControl,88
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    6[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   15[BANK0 ] unsigned long 
;;  exp1            1   19[BANK0 ] unsigned char 
;;  sign1           1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    6[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PControl
;;		_PIDControl
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext13
__ptext13:	;psect for function ___fttol
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1247:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u1591
	goto	u1590
u1591:
	goto	l1253
u1590:
	line	50
	
l1249:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l434
	
l1251:	
	goto	l434
	
l433:	
	line	51
	
l1253:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1605:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1600:
	addlw	-1
	skipz
	goto	u1605
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1255:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1257:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1259:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1261:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l1263:	
	btfss	(___fttol@exp1),7
	goto	u1611
	goto	u1610
u1611:
	goto	l1273
u1610:
	line	57
	
l1265:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1621
	goto	u1620
u1621:
	goto	l1271
u1620:
	line	58
	
l1267:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l434
	
l1269:	
	goto	l434
	
l436:	
	goto	l1271
	line	59
	
l437:	
	line	60
	
l1271:	
	movlw	01h
u1635:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u1635

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l1271
u1640:
	goto	l1283
	
l438:	
	line	62
	goto	l1283
	
l435:	
	line	63
	
l1273:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l1281
u1650:
	line	64
	
l1275:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l434
	
l1277:	
	goto	l434
	
l440:	
	line	65
	goto	l1281
	
l442:	
	line	66
	
l1279:	
	movlw	01h
	movwf	(??___fttol+0)+0
u1665:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u1665
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l1281
	line	68
	
l441:	
	line	65
	
l1281:	
	movf	(___fttol@exp1),f
	skipz
	goto	u1671
	goto	u1670
u1671:
	goto	l1279
u1670:
	goto	l1283
	
l443:	
	goto	l1283
	line	69
	
l439:	
	line	70
	
l1283:	
	movf	(___fttol@sign1),w
	skipz
	goto	u1680
	goto	l1287
u1680:
	line	71
	
l1285:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l1287
	
l444:	
	line	72
	
l1287:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l434
	
l1289:	
	line	73
	
l434:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   20[BANK0 ] float 
;;  f2              3   23[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   31[BANK0 ] unsigned um
;;  sign            1   35[BANK0 ] unsigned char 
;;  cntr            1   34[BANK0 ] unsigned char 
;;  exp             1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   20[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_PControl
;;		_PIDControl
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext14
__ptext14:	;psect for function ___ftmul
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1659:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l1665
u2430:
	line	68
	
l1661:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l414
	
l1663:	
	goto	l414
	
l413:	
	line	69
	
l1665:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l1671
u2440:
	line	70
	
l1667:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l414
	
l1669:	
	goto	l414
	
l415:	
	line	71
	
l1671:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u2455:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2450:
	addlw	-1
	skipz
	goto	u2455
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	73
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u2465:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2460:
	addlw	-1
	skipz
	goto	u2465
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l1673:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1675:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1677:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1679:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1681:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1683
	line	135
	
l416:	
	line	136
	
l1683:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l1687
u2470:
	line	137
	
l1685:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2481
	addwf	(___ftmul@f3_as_product+1),f
u2481:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2482
	addwf	(___ftmul@f3_as_product+2),f
u2482:

	goto	l1687
	
l417:	
	line	138
	
l1687:	
	movlw	01h
u2495:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2495

	line	139
	
l1689:	
	movlw	01h
u2505:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u2505
	line	140
	
l1691:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l1683
u2510:
	goto	l1693
	
l418:	
	line	143
	
l1693:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1695
	line	144
	
l419:	
	line	145
	
l1695:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l1699
u2520:
	line	146
	
l1697:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2531
	addwf	(___ftmul@f3_as_product+1),f
u2531:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2532
	addwf	(___ftmul@f3_as_product+2),f
u2532:

	goto	l1699
	
l420:	
	line	147
	
l1699:	
	movlw	01h
u2545:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2545

	line	148
	
l1701:	
	movlw	01h
u2555:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u2555

	line	149
	
l1703:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l1695
u2560:
	goto	l1705
	
l421:	
	line	156
	
l1705:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l414
	
l1707:	
	line	157
	
l414:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    6[BANK0 ] float 
;;  ff2             3    9[BANK0 ] float 
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
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PControl
;;		_PIDControl
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext15
__ptext15:	;psect for function ___ftge
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l1177:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftge@ff1+2),(23)&7
	goto	u1401
	goto	u1400
u1401:
	goto	l1181
u1400:
	line	7
	
l1179:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u1411
	goto	u1412
u1411:
	addwf	(??___ftge+0)+1,f
	
u1412:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u1413
	goto	u1414
u1413:
	addwf	(??___ftge+0)+2,f
	
u1414:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l1181
	
l406:	
	line	8
	
l1181:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u1421
	goto	u1420
u1421:
	goto	l1185
u1420:
	line	9
	
l1183:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u1431
	goto	u1432
u1431:
	addwf	(??___ftge+0)+1,f
	
u1432:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u1433
	goto	u1434
u1433:
	addwf	(??___ftge+0)+2,f
	
u1434:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l1185
	
l407:	
	line	10
	
l1185:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l1187:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l1189:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u1445
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u1445
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u1445:
	skipnc
	goto	u1441
	goto	u1440
u1441:
	goto	l1193
u1440:
	
l1191:	
	clrc
	
	goto	l408
	
l1057:	
	
l1193:	
	setc
	
	goto	l408
	
l1059:	
	goto	l408
	
l1195:	
	line	13
	
l408:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   14[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   14[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_PControl
;;		_PIDControl
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext16
__ptext16:	;psect for function ___awtoft
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l1575:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	
l1577:	
	btfss	(___awtoft@c+1),7
	goto	u2181
	goto	u2180
u2181:
	goto	l1583
u2180:
	line	38
	
l1579:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l1581:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l1583
	line	40
	
l342:	
	line	41
	
l1583:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l343
	
l1585:	
	line	42
	
l343:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    6[BANK0 ] unsigned um
;;  exp             1    9[BANK0 ] unsigned char 
;;  sign            1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    6[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftadd
;;		___ftmul
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext17
__ptext17:	;psect for function ___ftpack
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1545:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u2070
	goto	l1549
u2070:
	
l1547:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2081
	goto	u2080
u2081:
	goto	l1555
u2080:
	goto	l1549
	
l348:	
	line	65
	
l1549:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l349
	
l1551:	
	goto	l349
	
l346:	
	line	66
	goto	l1555
	
l351:	
	line	67
	
l1553:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2095:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2095

	goto	l1555
	line	69
	
l350:	
	line	66
	
l1555:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2101
	goto	u2100
u2101:
	goto	l1553
u2100:
	goto	l353
	
l352:	
	line	70
	goto	l353
	
l354:	
	line	71
	
l1557:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1559:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l1561:	
	movlw	01h
u2115:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2115

	line	74
	
l353:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l1557
u2120:
	goto	l1565
	
l355:	
	line	75
	goto	l1565
	
l357:	
	line	76
	
l1563:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2135:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2135
	goto	l1565
	line	78
	
l356:	
	line	75
	
l1565:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l1563
u2140:
	
l358:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l359
u2150:
	line	80
	
l1567:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l359:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1569:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2165:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2160:
	addlw	-1
	skipz
	goto	u2165
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1571:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2170
	goto	l360
u2170:
	line	84
	
l1573:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l360:	
	line	85
	line	86
	
l349:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_isrAD

;; *************** function _isrAD *****************
;; Defined at:
;;		line 222 in file "C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
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
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	222
global __ptext18
__ptext18:	;psect for function _isrAD
psect	text18
	file	"C:\Users\Robert Kydd\Documents\Personal\HW\Mechatronics\CS5 V2\CS5_Group16.c"
	line	222
	global	__size_of_isrAD
	__size_of_isrAD	equ	__end_of_isrAD-_isrAD
	
_isrAD:	
;incstack = 0
	opt	stack 2
; Regs used in _isrAD: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_isrAD+2)
	movf	fsr0,w
	movwf	(??_isrAD+3)
	movf	pclath,w
	movwf	(??_isrAD+4)
	movf	btemp+1,w
	movwf	(??_isrAD+5)
	ljmp	_isrAD
psect	text18
	line	224
	
i1l1509:	
;CS5_Group16.c: 224: Speed = Speed + ADRESH;
	movf	(30),w	;volatile
	addwf	(_Speed),w
	movwf	(??_isrAD+0)+0
	movf	(_Speed+1),w
	skipnc
	incf	(_Speed+1),w
	movwf	((??_isrAD+0)+0)+1
	movf	0+(??_isrAD+0)+0,w
	movwf	(_Speed)
	movf	1+(??_isrAD+0)+0,w
	movwf	(_Speed+1)
	line	225
	
i1l1511:	
;CS5_Group16.c: 225: Count = Count + 1;
	movf	(_Count),w
	addlw	low(01h)
	movwf	(_Count)
	movf	(_Count+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_Count)
	line	227
	
i1l1513:	
;CS5_Group16.c: 227: if(Count == 64)
	movlw	040h
	xorwf	(_Count),w
	iorwf	(_Count+1),w
	skipz
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l1521
u200_20:
	line	229
	
i1l1515:	
;CS5_Group16.c: 228: {
;CS5_Group16.c: 229: aSpeed = Speed/64;
	movlw	low(040h)
	movwf	(___awdiv@divisor)
	movlw	high(040h)
	movwf	((___awdiv@divisor))+1
	movf	(_Speed+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(_Speed),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_aSpeed+1)
	addwf	(_aSpeed+1)
	movf	(0+(?___awdiv)),w
	clrf	(_aSpeed)
	addwf	(_aSpeed)

	line	230
	
i1l1517:	
;CS5_Group16.c: 230: Count = 0;
	clrf	(_Count)
	clrf	(_Count+1)
	line	231
	
i1l1519:	
;CS5_Group16.c: 231: Speed = 0;
	clrf	(_Speed)
	clrf	(_Speed+1)
	goto	i1l1521
	line	232
	
i1l135:	
	line	234
	
i1l1521:	
;CS5_Group16.c: 232: }
;CS5_Group16.c: 234: ADIF = 0;
	bcf	(102/8),(102)&7	;volatile
	line	235
	
i1l1523:	
;CS5_Group16.c: 235: GO = 1;
	bsf	(250/8),(250)&7	;volatile
	line	236
	
i1l136:	
	movf	(??_isrAD+5),w
	movwf	btemp+1
	movf	(??_isrAD+4),w
	movwf	pclath
	movf	(??_isrAD+3),w
	movwf	fsr0
	swapf	(??_isrAD+2)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isrAD
	__end_of_isrAD:
	signat	_isrAD,88
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isrAD
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext19
__ptext19:	;psect for function ___awdiv
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
i1l1465:	
	clrf	(___awdiv@sign)
	line	15
	
i1l1467:	
	btfss	(___awdiv@divisor+1),7
	goto	u190_21
	goto	u190_20
u190_21:
	goto	i1l1473
u190_20:
	line	16
	
i1l1469:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
i1l1471:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	i1l1473
	line	18
	
i1l314:	
	line	19
	
i1l1473:	
	btfss	(___awdiv@dividend+1),7
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l1479
u191_20:
	line	20
	
i1l1475:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
i1l1477:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	i1l1479
	line	22
	
i1l315:	
	line	23
	
i1l1479:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
i1l1481:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u192_21
	goto	u192_20
u192_21:
	goto	i1l1501
u192_20:
	line	25
	
i1l1483:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	i1l1489
	
i1l318:	
	line	27
	
i1l1485:	
	movlw	01h
	
u193_25:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u193_25
	line	28
	
i1l1487:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	i1l1489
	line	29
	
i1l317:	
	line	26
	
i1l1489:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l1485
u194_20:
	goto	i1l1491
	
i1l319:	
	goto	i1l1491
	line	30
	
i1l320:	
	line	31
	
i1l1491:	
	movlw	01h
	
u195_25:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u195_25
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u196_25
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u196_25:
	skipc
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l1497
u196_20:
	line	33
	
i1l1493:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
i1l1495:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	i1l1497
	line	35
	
i1l321:	
	line	36
	
i1l1497:	
	movlw	01h
	
u197_25:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u197_25
	line	37
	
i1l1499:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l1491
u198_20:
	goto	i1l1501
	
i1l322:	
	goto	i1l1501
	line	38
	
i1l316:	
	line	39
	
i1l1501:	
	movf	(___awdiv@sign),w
	skipz
	goto	u199_20
	goto	i1l1505
u199_20:
	line	40
	
i1l1503:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	i1l1505
	
i1l323:	
	line	41
	
i1l1505:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	i1l324
	
i1l1507:	
	line	42
	
i1l324:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
