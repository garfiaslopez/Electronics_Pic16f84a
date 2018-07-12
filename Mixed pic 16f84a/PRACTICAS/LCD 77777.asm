
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
_PORTL           		EQU	 PORTB
_PORTH           		EQU	 PORTA
_TRISL           		EQU	 TRISB
_TRISH           		EQU	 TRISA
	INCLUDE	"LCD777~1.MAC"
	INCLUDE	"PBPPIC14.LIB"


	LABEL?L	_INICIO	
	PAUSE?C	001F4h
	LCDOUT?C	0FEh
	LCDOUT?C	001h
	LCDOUT?C	020h
	PAUSE?C	064h
	LCDOUT?C	0FEh
	LCDOUT?C	001h
	LCDOUT?C	020h
	LCDOUT?C	045h
	LCDOUT?C	04Ch
	LCDOUT?C	020h
	LCDOUT?C	043h
	LCDOUT?C	048h
	LCDOUT?C	049h
	LCDOUT?C	043h
	LCDOUT?C	04Fh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	05Eh
	LCDOUT?C	05Fh
	LCDOUT?C	05Eh
	LCDOUT?C	020h
	PAUSE?C	003E8h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	044h
	LCDOUT?C	045h
	LCDOUT?C	04Ch
	LCDOUT?C	020h
	LCDOUT?C	043h
	LCDOUT?C	04Fh
	LCDOUT?C	052h
	LCDOUT?C	041h
	LCDOUT?C	05Ah
	LCDOUT?C	030h
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	PAUSE?C	003E8h
	END?	

	END
