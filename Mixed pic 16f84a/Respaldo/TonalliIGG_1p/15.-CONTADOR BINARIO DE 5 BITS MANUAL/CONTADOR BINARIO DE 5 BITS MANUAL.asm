
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
#define _SW1             	_PORTA??0
#define _SW2             	_PORTA??1
#define _SW3             	_PORTA??2
#define _SW4             	_PORTA??3
#define _SW5             	_PORTA??4
#define _LED1            	_PORTB??0
#define _LED2            	_PORTB??1
#define _LED3            	_PORTB??2
#define _LED4            	_PORTB??3
#define _LED5            	_PORTB??4
#define _PORTA??0        	 PORTA, 000h
#define _PORTA??1        	 PORTA, 001h
#define _PORTA??2        	 PORTA, 002h
#define _PORTA??3        	 PORTA, 003h
#define _PORTA??4        	 PORTA, 004h
#define _PORTB??0        	 PORTB, 000h
#define _PORTB??1        	 PORTB, 001h
#define _PORTB??2        	 PORTB, 002h
#define _PORTB??3        	 PORTB, 003h
#define _PORTB??4        	 PORTB, 004h
	INCLUDE	"CONTAD~1.MAC"
	INCLUDE	"PBPPIC14.LIB"

	MOVE?CB	01Fh, TRISA
	MOVE?CB	0E0h, TRISB

	LABEL?L	_INICIO	
	CMPNE?TCL	_SW1, 000h, L00001
	HIGH?T	_LED1
	GOTO?L	L00002
	LABEL?L	L00001	
	LOW?T	_LED1
	LABEL?L	L00002	
	CMPNE?TCL	_SW2, 000h, L00003
	HIGH?T	_LED2
	GOTO?L	L00004
	LABEL?L	L00003	
	LOW?T	_LED2
	LABEL?L	L00004	
	CMPNE?TCL	_SW3, 000h, L00005
	HIGH?T	_LED3
	GOTO?L	L00006
	LABEL?L	L00005	
	LOW?T	_LED3
	LABEL?L	L00006	
	CMPNE?TCL	_SW4, 000h, L00007
	HIGH?T	_LED4
	GOTO?L	L00008
	LABEL?L	L00007	
	LOW?T	_LED4
	LABEL?L	L00008	
	CMPNE?TCL	_SW5, 000h, L00009
	HIGH?T	_LED5
	GOTO?L	L00010
	LABEL?L	L00009	
	LOW?T	_LED5
	LABEL?L	L00010	
	GOTO?L	_INICIO
	END?	

	END
