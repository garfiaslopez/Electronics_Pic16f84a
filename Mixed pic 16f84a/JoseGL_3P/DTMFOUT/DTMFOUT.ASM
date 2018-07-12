
; PICBASIC PRO(TM) Compiler 2.50a, (c) 1998, 2007 microEngineering Labs, Inc. All Rights Reserved.  
PM_USED			EQU	1

	INCLUDE	"16F877.INC"


; Define statements.
#define		CODE_SIZE		 8

RAM_START       		EQU	00020h
RAM_END         		EQU	001EFh
RAM_BANKS       		EQU	00004h
BANK0_START     		EQU	00020h
BANK0_END       		EQU	0007Fh
BANK1_START     		EQU	000A0h
BANK1_END       		EQU	000EFh
BANK2_START     		EQU	00110h
BANK2_END       		EQU	0016Fh
BANK3_START     		EQU	00190h
BANK3_END       		EQU	001EFh
EEPROM_START    		EQU	02100h
EEPROM_END      		EQU	021FFh

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
_PORTL           		EQU	 PORTB
_PORTH           		EQU	 PORTC
_TRISL           		EQU	 TRISB
_TRISH           		EQU	 TRISC
#define _PORTB??0        	 PORTB, 000h
	INCLUDE	"DTMFOUT.MAC"
	INCLUDE	"PBPPIC14.LIB"

	MOVE?CB	000h, TRISB

	LABEL?L	_INICIO	
	DTMFPIN?T	_PORTB??0
	DTMFONTIME?C	0C8h
	DTMFOFFTIME?C	032h
	DTMFOUT?C	009h
	DTMFOUT?C	005h
	DTMFOUT?C	001h
	DTMFOUT?C	002h
	DTMFOUT?C	004h
	DTMFOUT?C	002h
	DTMFOUT?C	008h
	DTMFOUT?C	005h
	DTMFOUT?C	000h
	DTMFOUT?C	009h
	PAUSE?C	001F4h
	GOTO?L	_INICIO
	END?	

	END
