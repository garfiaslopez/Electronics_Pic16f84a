
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
_R               		EQU	RAM_START + 018h
_X               		EQU	RAM_START + 019h
_Y               		EQU	RAM_START + 01Ah
_PORTL           		EQU	 PORTB
_PORTH           		EQU	 PORTA
_TRISL           		EQU	 TRISB
_TRISH           		EQU	 TRISA
	INCLUDE	"CONTAD~1.MAC"
	INCLUDE	"PBPPIC14.LIB"

	MOVE?CB	000h, TRISB
	MOVE?CB	000h, TRISA

	LABEL?L	_INICIO	
	MOVE?CB	000h, _X
	LABEL?L	L00001	
	CMPGT?BCL	_X, 009h, L00002
	MOVE?CB	000h, _Y
	LABEL?L	L00003	
	CMPGT?BCL	_Y, 009h, L00004
	MOVE?CB	001h, _R
	LABEL?L	L00005	
	CMPGT?BCL	_R, 032h, L00006
	MOVE?CB	001h, PORTA
	MOVE?BB	_X, PORTB
	PAUSE?C	00Ah
	MOVE?CB	002h, PORTA
	MOVE?BB	_Y, PORTB
	PAUSE?C	00Ah
	NEXT?BCL	_R, 001h, L00005
	LABEL?L	L00006	
	NEXT?BCL	_Y, 001h, L00003
	LABEL?L	L00004	
	NEXT?BCL	_X, 001h, L00001
	LABEL?L	L00002	
	GOTO?L	_INICIO
	END?	

	END
