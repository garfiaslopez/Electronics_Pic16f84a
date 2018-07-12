
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
#define _A               	_PORTB??0
#define _B               	_PORTB??1
#define _C               	_PORTB??2
#define _D               	_PORTB??3
#define _UNO             	_PORTB??4
#define _DOS             	_PORTB??5
#define _TRES            	_PORTB??6
#define _CUATRO          	_PORTB??7
#define _PORTB??0        	 PORTB, 000h
#define _PORTB??1        	 PORTB, 001h
#define _PORTB??2        	 PORTB, 002h
#define _PORTB??3        	 PORTB, 003h
#define _PORTB??4        	 PORTB, 004h
#define _PORTB??5        	 PORTB, 005h
#define _PORTB??6        	 PORTB, 006h
#define _PORTB??7        	 PORTB, 007h
	INCLUDE	"TECLADO.MAC"
	INCLUDE	"PBPPIC14.LIB"

	MOVE?CB	000h, TRISA

	LABEL?L	_BARRIDO	
	LOW?T	_A
	CMPNE?TCL	_UNO, 000h, L00001
	MOVE?CB	001h, PORTA
	LABEL?L	L00001	
	CMPNE?TCL	_DOS, 000h, L00003
	MOVE?CB	002h, PORTA
	LABEL?L	L00003	
	CMPNE?TCL	_TRES, 000h, L00005
	MOVE?CB	006h, PORTA
	LABEL?L	L00005	
	CMPNE?TCL	_CUATRO, 000h, L00007
	MOVE?CB	00Bh, PORTA
	LABEL?L	L00007	
	HIGH?T	_B
	HIGH?T	_C
	CMPNE?TCL	_UNO, 000h, L00009
	MOVE?CB	007h, PORTA
	LABEL?L	L00009	
	CMPNE?TCL	_DOS, 000h, L00011
	MOVE?CB	008h, PORTA
	LABEL?L	L00011	
	CMPNE?TCL	_TRES, 000h, L00013
	MOVE?CB	009h, PORTA
	LABEL?L	L00013	
	CMPNE?TCL	_CUATRO, 000h, L00015
	MOVE?CB	00Ch, PORTA
	LABEL?L	L00015	
	HIGH?T	_C
	LOW?T	_D
	CMPNE?TCL	_UNO, 000h, L00017
	MOVE?CB	00Eh, PORTA
	LABEL?L	L00017	
	CMPNE?TCL	_DOS, 000h, L00019
	MOVE?CB	000h, PORTA
	LABEL?L	L00019	
	CMPNE?TCL	_TRES, 000h, L00021
	MOVE?CB	00Fh, PORTA
	LABEL?L	L00021	
	CMPNE?TCL	_CUATRO, 000h, L00023
	MOVE?CB	00Dh, PORTA
	LABEL?L	L00023	
	HIGH?T	_D
	PAUSE?C	00Ah
	GOTO?L	_BARRIDO
	END?	

	END
