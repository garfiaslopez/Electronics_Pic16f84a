
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
_BANDERA         		EQU	RAM_START + 018h
_PORTL           		EQU	 PORTB
_PORTH           		EQU	 PORTA
_TRISL           		EQU	 TRISB
_TRISH           		EQU	 TRISA
#define _PORTB??0        	 PORTB, 000h
#define _PORTB??1        	 PORTB, 001h
#define _PORTB??2        	 PORTB, 002h
#define _PORTB??4        	 PORTB, 004h
#define _PORTB??5        	 PORTB, 005h
#define _PORTB??6        	 PORTB, 006h
#define _PORTB??7        	 PORTB, 007h
#define _PORTB??3        	 PORTB, 003h
#define _PORTA??0        	 PORTA, 000h
	INCLUDE	"PIC_AU~1.MAC"
	INCLUDE	"PBPPIC14.LIB"

	MOVE?CB	01Fh, TRISA
	MOVE?CB	000h, TRISB

	LABEL?L	_INICIO	
	MOVE?CT	000h, _PORTB??0
	MOVE?CT	000h, _PORTB??1
	MOVE?CT	000h, _PORTB??2
	MOVE?CT	000h, _PORTB??4
	MOVE?CT	000h, _PORTB??5
	MOVE?CT	000h, _PORTB??6
	MOVE?CT	000h, _PORTB??7
	MOVE?CT	001h, _PORTB??3
	CMPNE?TCL	_PORTA??0, 001h, L00001
	CMPNE?BCL	_BANDERA, 000h, L00003
	HIGH?T	_PORTB??0
	MOVE?CT	001h, _PORTB??1
	MOVE?CT	000h, _PORTB??3
	PAUSE?C	003E8h
	MOVE?CT	000h, _PORTB??0
	MOVE?CT	001h, _PORTB??2
	PAUSE?C	007D0h
	MOVE?CT	000h, _PORTB??2
	LABEL?L	L00003	
	MOVE?CB	001h, _BANDERA
	LABEL?L	L00001	
	CMPNE?TCL	_PORTA??0, 000h, L00005
	MOVE?CB	000h, _BANDERA
	LABEL?L	L00005	
	GOTO?L	_INICIO
	END?	

	END
