
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
#define _PORTB??2        	 PORTB, 002h
#define _PORTB??1        	 PORTB, 001h

; Constants.
_T2400           		EQU	00000h
_T1200           		EQU	00001h
_T9600           		EQU	00002h
_T300            		EQU	00003h
_N2400           		EQU	00004h
_N1200           		EQU	00005h
_N9600           		EQU	00006h
_N300            		EQU	00007h
_OT2400          		EQU	00008h
_OT1200          		EQU	00009h
_OT9600          		EQU	0000Ah
_OT300           		EQU	0000Bh
_ON2400          		EQU	0000Ch
_ON1200          		EQU	0000Dh
_ON9600          		EQU	0000Eh
_ON300           		EQU	0000Fh
_MSBPRE          		EQU	00000h
_LSBPRE          		EQU	00001h
_MSBPOST         		EQU	00002h
_LSBPOST         		EQU	00003h
_LSBFIRST        		EQU	00000h
_MSBFIRST        		EQU	00001h
_CLS             		EQU	00000h
_HOME            		EQU	00001h
_BELL            		EQU	00007h
_BKSP            		EQU	00008h
_TAB             		EQU	00009h
_CR              		EQU	0000Dh
_UnitOn          		EQU	00012h
_UnitOff         		EQU	0001Ah
_UnitsOff        		EQU	0001Ch
_LightsOn        		EQU	00014h
_LightsOff       		EQU	00010h
_Dim             		EQU	0001Eh
_Bright          		EQU	00016h
	INCLUDE	"COMUNI~1.MAC"
	INCLUDE	"PBPPIC14.LIB"


	LABEL?L	_INICIO	
	HIGH?T	_PORTB??2
	PAUSE?C	001F4h
	LOW?T	_PORTB??2
	PAUSE?C	0FAh
	SERPIN?T	_PORTB??1
	SERMODE?C	_N2400
	SEROUT?C	045h
	SEROUT?C	04Ch
	SEROUT?C	045h
	SEROUT?C	043h
	SEROUT?C	054h
	SEROUT?C	052h
	SEROUT?C	04Fh
	SEROUT?C	04Eh
	SEROUT?C	049h
	SEROUT?C	043h
	SEROUT?C	041h
	SEROUT?C	020h
	SEROUT?C	035h
	SEROUT?C	030h
	SEROUT?C	036h
	SEROUT?C	020h
	SEROUT?C	04Ch
	SEROUT?C	04Fh
	SEROUT?C	053h
	SEROUT?C	020h
	SEROUT?C	04Dh
	SEROUT?C	045h
	SEROUT?C	04Ah
	SEROUT?C	04Fh
	SEROUT?C	052h
	SEROUT?C	045h
	SEROUT?C	053h
	GOTO?L	_INICIO
	END?	

	END
