
; PICBASIC PRO(TM) Compiler 2.50a, (c) 1998, 2007 microEngineering Labs, Inc. All Rights Reserved.  
PM_USED			EQU	1

	INCLUDE	"16F84A.INC"


; Define statements.
#define		LCD_DREG		 PORTA
#define		LCD_DBIT		 0
#define		LCD_RSREG		 PORTB
#define		LCD_RSBIT		 1
#define		LCD_EREG		 PORTB
#define		LCD_EBIT		 2

RAM_START       		EQU	0000Ch
RAM_END         		EQU	0004Fh
RAM_BANKS       		EQU	00001h
BANK0_START     		EQU	0000Ch
BANK0_END       		EQU	0004Fh
EEPROM_START    		EQU	02100h
EEPROM_END      		EQU	0213Fh

R0              		EQU	RAM_START + 000h
R1              		EQU	RAM_START + 002h
R2              		EQU	RAM_START + 004h
R3              		EQU	RAM_START + 006h
R4              		EQU	RAM_START + 008h
R5              		EQU	RAM_START + 00Ah
R6              		EQU	RAM_START + 00Ch
R7              		EQU	RAM_START + 00Eh
R8              		EQU	RAM_START + 010h
FLAGS           		EQU	RAM_START + 012h
GOP             		EQU	RAM_START + 013h
RM1             		EQU	RAM_START + 014h
RM2             		EQU	RAM_START + 015h
RR1             		EQU	RAM_START + 016h
RR2             		EQU	RAM_START + 017h
_DATOS           		EQU	RAM_START + 018h
_R               		EQU	RAM_START + 019h
_PORTL           		EQU	 PORTB
_PORTH           		EQU	 PORTA
_TRISL           		EQU	 TRISB
_TRISH           		EQU	 TRISA
	INCLUDE	"LETRERO.MAC"
	INCLUDE	"PBPPIC14.LIB"

	LCDOUT?C	0FEh
	LCDOUT?C	007h
	LCDOUT?C	0FEh
	LCDOUT?C	001h

	LABEL?L	_INICIO	
	LCDOUT?C	0FEh
	LCDOUT?C	090h
	MOVE?CB	000h, _R
	LABEL?L	L00002	
	CMPGT?BCL	_R, 018h, L00003
	LOOKUP?BCLB	_R, 015h, L00001, _DATOS
	LURET?C	045h
	LURET?C	04Ch
	LURET?C	045h
	LURET?C	043h
	LURET?C	054h
	LURET?C	052h
	LURET?C	04Fh
	LURET?C	04Eh
	LURET?C	049h
	LURET?C	043h
	LURET?C	041h
	LURET?C	02Dh
	LURET?C	050h
	LURET?C	052h
	LURET?C	041h
	LURET?C	043h
	LURET?C	054h
	LURET?C	049h
	LURET?C	043h
	LURET?C	041h
	LURET?C	02Dh

	LABEL?L	L00001	
	LCDOUT?B	_DATOS
	PAUSE?C	003E8h
	NEXT?BCL	_R, 001h, L00002
	LABEL?L	L00003	
	GOTO?L	_INICIO
	END?	

	END
