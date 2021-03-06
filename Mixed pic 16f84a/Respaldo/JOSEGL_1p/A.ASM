
; PICBASIC PRO(TM) Compiler 2.50a, (c) 1998, 2007 microEngineering Labs, Inc. All Rights Reserved.  
_USED			EQU	1

	INCLUDE	"C:\PBP\16F628.INC"

RAM_START       		EQU	00020h
RAM_END         		EQU	0014Fh
RAM_BANKS       		EQU	00003h
BANK0_START     		EQU	00020h
BANK0_END       		EQU	0007Fh
BANK1_START     		EQU	000A0h
BANK1_END       		EQU	000EFh
BANK2_START     		EQU	00120h
BANK2_END       		EQU	0014Fh
EEPROM_START    		EQU	02100h
EEPROM_END      		EQU	0217Fh

; C:\PBP\PBPPIC14.RAM      	00012	R0      VAR     WORD BANK0 SYSTEM       ' System Register
R0              		EQU	RAM_START + 000h
; C:\PBP\PBPPIC14.RAM      	00013	R1      VAR     WORD BANK0 SYSTEM       ' System Register
R1              		EQU	RAM_START + 002h
; C:\PBP\PBPPIC14.RAM      	00014	R2      VAR     WORD BANK0 SYSTEM       ' System Register
R2              		EQU	RAM_START + 004h
; C:\PBP\PBPPIC14.RAM      	00015	R3      VAR     WORD BANK0 SYSTEM       ' System Register
R3              		EQU	RAM_START + 006h
; C:\PBP\PBPPIC14.RAM      	00016	R4      VAR     WORD BANK0 SYSTEM       ' System Register
R4              		EQU	RAM_START + 008h
; C:\PBP\PBPPIC14.RAM      	00017	R5      VAR     WORD BANK0 SYSTEM       ' System Register
R5              		EQU	RAM_START + 00Ah
; C:\PBP\PBPPIC14.RAM      	00018	R6      VAR     WORD BANK0 SYSTEM       ' System Register
R6              		EQU	RAM_START + 00Ch
; C:\PBP\PBPPIC14.RAM      	00019	R7      VAR     WORD BANK0 SYSTEM       ' System Register
R7              		EQU	RAM_START + 00Eh
; C:\PBP\PBPPIC14.RAM      	00020	R8      VAR     WORD BANK0 SYSTEM       ' System Register
R8              		EQU	RAM_START + 010h
; C:\PBP\PBPPIC14.RAM      	00026	FLAGS   VAR     BYTE BANK0 SYSTEM       ' Static flags
FLAGS           		EQU	RAM_START + 012h
; C:\PBP\PBPPIC14.RAM      	00025	GOP     VAR     BYTE BANK0 SYSTEM       ' Gen Op Parameter
GOP             		EQU	RAM_START + 013h
; C:\PBP\PBPPIC14.RAM      	00022	RM1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Mask
RM1             		EQU	RAM_START + 014h
; C:\PBP\PBPPIC14.RAM      	00024	RM2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Mask
RM2             		EQU	RAM_START + 015h
; C:\PBP\PBPPIC14.RAM      	00021	RR1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Register
RR1             		EQU	RAM_START + 016h
; C:\PBP\PBPPIC14.RAM      	00023	RR2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Register
RR2             		EQU	RAM_START + 017h
; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\JOSEGL_1P\A.PBP	00011	CONTADOR VAR BYTE
_CONTADOR        		EQU	RAM_START + 018h
; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\JOSEGL_1P\A.PBP	00012	LETRA VAR BYTE 
_LETRA           		EQU	RAM_START + 019h
; C:\PBP\16F628.BAS        	00020	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PBP\16F628.BAS        	00021	PORTH   VAR     PORTA
_PORTH           		EQU	 PORTA
; C:\PBP\16F628.BAS        	00022	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PBP\16F628.BAS        	00023	TRISH   VAR     TRISA
_TRISH           		EQU	 TRISA
	INCLUDE	"A.MAC"
	INCLUDE	"C:\PBP\PBPPIC14.LIB"


; C:\PBP\16F628.BAS        	00012	BANK0   $0020, $007F
; C:\PBP\16F628.BAS        	00013	BANK1   $00A0, $00EF
; C:\PBP\16F628.BAS        	00014	BANK2   $0120, $014F
; C:\PBP\16F628.BAS        	00015	EEPROM  $2100, $217F
; C:\PBP\16F628.BAS        	00016	LIBRARY "PBPPIC14"

; C:\PBP\16F628.BAS        	00018	        include "PIC14EXT.BAS"

; C:\PBP\16F628.BAS        	00025	        include "PBPPIC14.RAM"

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\JOSEGL_1P\A.PBP	00013	TRISB=0
	MOVE?CB	000h, TRISB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\JOSEGL_1P\A.PBP	00015	INICIO:

	LABEL?L	_INICIO	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\JOSEGL_1P\A.PBP	00017	CONTADOR=0
	MOVE?CB	000h, _CONTADOR

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\JOSEGL_1P\A.PBP	00019	PROGRAMA:

	LABEL?L	_PROGRAMA	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\JOSEGL_1P\A.PBP	00021	LOOKUP CONTADOR,[115,119,80,119,00,56,63,109,00,103,62,121,00,57,80,121,6,119,84,00,103,62,121,00,84,63,00,115,63,94,6,119,00,118,119,57,121,80,00,121,109,7,63,00,7,121,84,125,119,84,00], 
	LOOKUP?BCLB	_CONTADOR, 033h, L00001, _LETRA
	LURET?C	073h
	LURET?C	077h
	LURET?C	050h
	LURET?C	077h
	LURET?C	000h
	LURET?C	038h
	LURET?C	03Fh
	LURET?C	06Dh
	LURET?C	000h
	LURET?C	067h
	LURET?C	03Eh
	LURET?C	079h
	LURET?C	000h
	LURET?C	039h
	LURET?C	050h
	LURET?C	079h
	LURET?C	006h
	LURET?C	077h
	LURET?C	054h
	LURET?C	000h
	LURET?C	067h
	LURET?C	03Eh
	LURET?C	079h
	LURET?C	000h
	LURET?C	054h
	LURET?C	03Fh
	LURET?C	000h
	LURET?C	073h
	LURET?C	03Fh
	LURET?C	05Eh
	LURET?C	006h
	LURET?C	077h
	LURET?C	000h
	LURET?C	076h
	LURET?C	077h
	LURET?C	039h
	LURET?C	079h
	LURET?C	050h
	LURET?C	000h
	LURET?C	079h
	LURET?C	06Dh
	LURET?C	007h
	LURET?C	03Fh
	LURET?C	000h
	LURET?C	007h
	LURET?C	079h
	LURET?C	054h
	LURET?C	07Dh
	LURET?C	077h
	LURET?C	054h
	LURET?C	000h

	LABEL?L	L00001	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\JOSEGL_1P\A.PBP	00022	PORTB=LETRA
	MOVE?BB	_LETRA, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\JOSEGL_1P\A.PBP	00023	CONTADOR = CONTADOR+1
	ADD?BCB	_CONTADOR, 001h, _CONTADOR

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\JOSEGL_1P\A.PBP	00024	PAUSE 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\JOSEGL_1P\A.PBP	00025	IF CONTADOR=50 THEN INICIO
	CMPEQ?BCL	_CONTADOR, 032h, _INICIO

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\JOSEGL_1P\A.PBP	00026	GOTO PROGRAMA
	GOTO?L	_PROGRAMA

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\JOSEGL_1P\A.PBP	00028	END
	END?	

	END
