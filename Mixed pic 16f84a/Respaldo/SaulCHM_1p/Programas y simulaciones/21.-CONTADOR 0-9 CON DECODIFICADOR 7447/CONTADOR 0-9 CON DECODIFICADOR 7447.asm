
; PICBASIC PRO(TM) Compiler 2.50a, (c) 1998, 2007 microEngineering Labs, Inc. All Rights Reserved.  
PM_USED			EQU	1

	INCLUDE	"16F84A.INC"

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
_PORTL           		EQU	 PORTB
_PORTH           		EQU	 PORTA
_TRISL           		EQU	 TRISB
_TRISH           		EQU	 TRISA
	INCLUDE	"CONTAD~1.MAC"
	INCLUDE	"PBPPIC14.LIB"

	MOVE?CB	0F0h, TRISB

	LABEL?L	_INICIO	
	MOVE?CB	000h, PORTB
	PAUSE?C	0012Ch
	MOVE?CB	001h, PORTB
	PAUSE?C	0012Ch
	MOVE?CB	002h, PORTB
	PAUSE?C	0012Ch
	MOVE?CB	003h, PORTB
	PAUSE?C	0012Ch
	MOVE?CB	004h, PORTB
	PAUSE?C	0012Ch
	MOVE?CB	005h, PORTB
	PAUSE?C	0012Ch
	MOVE?CB	006h, PORTB
	PAUSE?C	0012Ch
	MOVE?CB	007h, PORTB
	PAUSE?C	0012Ch
	MOVE?CB	008h, PORTB
	PAUSE?C	0012Ch
	MOVE?CB	009h, PORTB
	PAUSE?C	0012Ch
	GOTO?L	_INICIO
	END?	

	END
