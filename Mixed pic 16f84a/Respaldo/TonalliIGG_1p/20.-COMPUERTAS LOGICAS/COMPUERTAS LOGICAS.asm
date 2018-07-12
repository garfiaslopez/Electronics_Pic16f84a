
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
T1              		EQU	RAM_START + 018h
T2              		EQU	RAM_START + 01Ah
_PORTL           		EQU	 PORTB
_PORTH           		EQU	 PORTA
_TRISL           		EQU	 TRISB
_TRISH           		EQU	 TRISA
#define _A               	_PORTA??0
#define _B               	_PORTA??1
#define _Y               	_PORTB??0
#define _O               	_PORTB??1
#define _N               	_PORTB??2
#define _S               	_PORTB??3
#define _NY              	_PORTB??4
#define _NO              	_PORTB??5
#define _XO              	_PORTB??6
#define _XNO             	_PORTB??7
#define _PORTA??0        	 PORTA, 000h
#define _PORTA??1        	 PORTA, 001h
#define _PORTB??0        	 PORTB, 000h
#define _PORTB??1        	 PORTB, 001h
#define _PORTB??2        	 PORTB, 002h
#define _PORTB??3        	 PORTB, 003h
#define _PORTB??4        	 PORTB, 004h
#define _PORTB??5        	 PORTB, 005h
#define _PORTB??6        	 PORTB, 006h
#define _PORTB??7        	 PORTB, 007h
	INCLUDE	"COMPUE~1.MAC"
	INCLUDE	"PBPPIC14.LIB"

	MOVE?CB	000h, TRISB
	MOVE?CB	003h, TRISA

	LABEL?L	_INICIO	
	CMPEQ?TCB	_A, 001h, T1
	CMPEQ?TCB	_B, 001h, T2
	LAND?BBW	T1, T2, T2
	CMPF?WL	T2, L00001
	MOVE?CT	001h, _Y
	GOTO?L	L00002
	LABEL?L	L00001	
	MOVE?CT	000h, _Y
	LABEL?L	L00002	
	CMPEQ?TCB	_A, 000h, T1
	CMPEQ?TCB	_B, 000h, T2
	LAND?BBW	T1, T2, T2
	CMPF?WL	T2, L00003
	MOVE?CT	000h, _O
	GOTO?L	L00004
	LABEL?L	L00003	
	MOVE?CT	001h, _O
	LABEL?L	L00004	
	CMPNE?TCL	_A, 000h, L00005
	MOVE?CT	001h, _N
	GOTO?L	L00006
	LABEL?L	L00005	
	MOVE?CT	000h, _N
	LABEL?L	L00006	
	CMPNE?TCL	_A, 000h, L00007
	MOVE?CT	000h, _S
	GOTO?L	L00008
	LABEL?L	L00007	
	MOVE?CT	001h, _S
	LABEL?L	L00008	
	CMPEQ?TCB	_A, 001h, T1
	CMPEQ?TCB	_B, 001h, T2
	LAND?BBW	T1, T2, T2
	CMPF?WL	T2, L00009
	MOVE?CT	001h, _NY
	GOTO?L	L00010
	LABEL?L	L00009	
	MOVE?CT	000h, _NY
	LABEL?L	L00010	
	CMPEQ?TCB	_A, 000h, T1
	CMPEQ?TCB	_B, 000h, T2
	LAND?BBW	T1, T2, T2
	CMPF?WL	T2, L00011
	MOVE?CT	001h, _NO
	GOTO?L	L00012
	LABEL?L	L00011	
	MOVE?CT	000h, _NO
	LABEL?L	L00012	
	CMPNE?TTL	_A, _B, L00013
	MOVE?CT	000h, _XO
	GOTO?L	L00014
	LABEL?L	L00013	
	MOVE?CT	001h, _XO
	LABEL?L	L00014	
	CMPNE?TTL	_A, _B, L00015
	MOVE?CT	001h, _XNO
	GOTO?L	L00016
	LABEL?L	L00015	
	MOVE?CT	000h, _XNO
	LABEL?L	L00016	
	GOTO?L	_INICIO
	END?	

	END
