
	; Microchip MPLAB XC8 C Compiler V1.33
	; Copyright (C) 1984-2014 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; -oCS5_Group16.cof -mCS5_Group16.map --summary=default \
	; --output=default CS5_Group16.p1 --chip=16F737 -P --runtime=default \
	; --opt=default -N-1 -D__DEBUG=1 -g --asmlist \
	; --errformat=Error   [%n] %f; %l.%c %s --msgformat=Advisory[%n] %s \
	; --warnformat=Warning [%n] %f; %l.%c %s
	;


	processor	16F737

	global	_main,start,reset_vec
	fnroot	_main
	psect	config,class=CONFIG,delta=2,noexec
	psect	idloc,class=IDLOC,delta=2,noexec
	psect	code,class=CODE,delta=2
	psect	powerup,class=CODE,delta=2
	psect	reset_vec,class=CODE,delta=2
	psect	maintext,class=CODE,delta=2
	C	set	0
	Z	set	2
	PCL	set	2
	INDF	set	0

	STATUS	equ	3
	PCLATH	equ	0Ah

	psect	eeprom_data,class=EEDATA,delta=2,space=3,noexec
	psect	intentry,class=CODE,delta=2
	psect	functab,class=CODE,delta=2
	global	intlevel0,intlevel1,intlevel2, intlevel3, intlevel4, intlevel5
intlevel0:
intlevel1:
intlevel2:
intlevel3:
intlevel4:
intlevel5:
	psect	init,class=CODE,delta=2
	psect	cinit,class=CODE,delta=2
	psect	text,class=CODE,delta=2
	psect	end_init,class=CODE,delta=2
	psect	clrtext,class=CODE,delta=2
	FSR	set	4
	psect	strings,class=CODE,delta=2,reloc=256

	global stacklo, stackhi
	stacklo	equ	0
	stackhi	equ	0


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___int_sp
	___sp:
	___int_sp:
	psect	reset_vec
reset_vec:
	; No powerup routine
	global start

; jump to start
	goto	start & 0x7FF | (reset_vec & not 0x7FF)



	psect	init
start
	psect	end_init
	global start_initialization
	ljmp start_initialization	;jump to C runtime clear & initialization

; Config register CONFIG1 @ 0x2007
;	Watchdog Timer Enable bit
;	WDTE = OFF, WDT disabled
;	CCP2 Multiplex bit
;	CCP2MX = 0x1, unprogrammed default
;	Power-up Timer Enable bit
;	PWRTE = ON, PWRT enabled
;	Flash Program Memory Code Protection bits
;	CP = OFF, Code protection off
;	Brown-out Reset Enable bit
;	BOREN = OFF, Disabled
;	Brown-out Reset Voltage bits
;	BORV = 20, VBOR set to 2.0V
;	In-Circuit Debugger Mode bit
;	DEBUG = OFF, In-Circuit Debugger disabled, RB6 and RB7 are general purpose I/O pins
;	MCLR/VPP/RE3 Pin Function Select bit
;	MCLRE = ON, MCLR/VPP/RE3 pin function is MCLR
;	Oscillator Selection bits
;	FOSC = HS, HS oscillator

	psect	config
		org 0x0
		dw 0xFFA2

; Config register CONFIG2 @ 0x2008
;	Brown-out Reset Software Enable bit
;	BORSEN = OFF, Disabled
;	Fail-Safe Clock Monitor Enable bit
;	FCMEN = OFF, Fail-Safe Clock Monitor disabled
;	Internal External Switchover bit
;	IESO = OFF, Internal External Switchover mode disabled

	psect	config
		org 0x1
		dw 0xFFBC


psect common,class=COMMON,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect ram,class=RAM,space=1
psect abs1,class=ABS1,space=1
psect sfr0,class=SFR0,space=1
psect sfr1,class=SFR1,space=1
psect sfr2,class=SFR2,space=1
psect sfr3,class=SFR3,space=1


	end	start
