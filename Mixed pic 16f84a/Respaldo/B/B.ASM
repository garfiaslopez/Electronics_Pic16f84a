
; PICBASIC PRO(TM) Compiler 2.50a, (c) 1998, 2007 microEngineering Labs, Inc. All Rights Reserved.  
_USED			EQU	1

	INCLUDE	"C:\PBP\16F84A.INC"

RAM_START       		EQU	0000Ch
RAM_END         		EQU	0004Fh
RAM_BANKS       		EQU	00001h
BANK0_START     		EQU	0000Ch
BANK0_END       		EQU	0004Fh
EEPROM_START    		EQU	02100h
EEPROM_END      		EQU	0213Fh

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
; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00014	contador var byte
_contador        		EQU	RAM_START + 018h
; C:\PBP\16F84A.BAS        	00018	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PBP\16F84A.BAS        	00019	PORTH   VAR     PORTA
_PORTH           		EQU	 PORTA
; C:\PBP\16F84A.BAS        	00020	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PBP\16F84A.BAS        	00021	TRISH   VAR     TRISA
_TRISH           		EQU	 TRISA
#define _PORTA??0        	 PORTA, 000h
#define _PORTB??7        	 PORTB, 007h
	INCLUDE	"B.MAC"
	INCLUDE	"C:\PBP\PBPPIC14.LIB"


; C:\PBP\16F84A.BAS        	00012	BANK0   $000C, $004F
; C:\PBP\16F84A.BAS        	00013	EEPROM  $2100, $213F
; C:\PBP\16F84A.BAS        	00014	LIBRARY "PBPPIC14"

; C:\PBP\16F84A.BAS        	00016	        include "PIC14EXT.BAS"

; C:\PBP\16F84A.BAS        	00023	        include "PBPPIC14.RAM"

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00011	TRISA=%00001
	MOVE?CB	001h, TRISA

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00012	TRISB=0
	MOVE?CB	000h, TRISB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00015	 contador = 0
	MOVE?CB	000h, _contador

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00017	inicio:

	LABEL?L	_inicio	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00019	IF CONTADOR = 0 THEN
	CMPNE?BCL	_contador, 000h, L00001

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00020	    PORTB=$3F
	MOVE?CB	03Fh, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00021	    ENDIF
	LABEL?L	L00001	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00023	if PORTA.0 = 0 then
	CMPNE?TCL	_PORTA??0, 000h, L00003

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00024	    contador = contador+1
	ADD?BCB	_contador, 001h, _contador

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00027	    if contador = 1 then
	CMPNE?BCL	_contador, 001h, L00005

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00028	        PORTB=$06
	MOVE?CB	006h, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00029	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00030	        endif
	LABEL?L	L00005	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00031	    if contador = 2 then
	CMPNE?BCL	_contador, 002h, L00007

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00032	        PORTB=$5B
	MOVE?CB	05Bh, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00033	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00034	        endif
	LABEL?L	L00007	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00035	    if contador = 3 then
	CMPNE?BCL	_contador, 003h, L00009

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00036	        PORTB=$4F
	MOVE?CB	04Fh, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00037	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00038	        endif
	LABEL?L	L00009	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00039	    if contador = 4 then
	CMPNE?BCL	_contador, 004h, L00011

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00040	        PORTB=$66
	MOVE?CB	066h, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00041	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00042	        endif
	LABEL?L	L00011	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00043	    if contador = 5 then
	CMPNE?BCL	_contador, 005h, L00013

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00044	        PORTB=$6D
	MOVE?CB	06Dh, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00045	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00046	        endif
	LABEL?L	L00013	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00047	    if contador = 6 then
	CMPNE?BCL	_contador, 006h, L00015

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00048	        PORTB=$7D
	MOVE?CB	07Dh, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00049	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00050	        endif
	LABEL?L	L00015	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00051	    if contador = 7 then
	CMPNE?BCL	_contador, 007h, L00017

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00052	        PORTB=$07
	MOVE?CB	007h, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00053	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00054	        ENDIF
	LABEL?L	L00017	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00055	    if contador = 8 then
	CMPNE?BCL	_contador, 008h, L00019

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00056	        PORTB=$7F
	MOVE?CB	07Fh, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00057	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00058	        endif
	LABEL?L	L00019	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00059	    if contador = 9 then
	CMPNE?BCL	_contador, 009h, L00021

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00060	        PORTB=$67
	MOVE?CB	067h, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00061	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00062	        endif
	LABEL?L	L00021	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00063	    if contador > 9 then
	CMPLE?BCL	_contador, 009h, L00023

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00064	        contador = 0
	MOVE?CB	000h, _contador

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00065	        endif
	LABEL?L	L00023	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00068	        PORTB.7 = 1
	MOVE?CT	001h, _PORTB??7

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00069	        PAUSE 3000
	PAUSE?C	00BB8h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00070	        PORTB.7 = 0
	MOVE?CT	000h, _PORTB??7

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00072	    if contador = 1 then
	CMPNE?BCL	_contador, 001h, L00025

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00074	        PORTB=$06
	MOVE?CB	006h, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00075	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00076	        endif
	LABEL?L	L00025	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00077	    if contador = 2 then
	CMPNE?BCL	_contador, 002h, L00027

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00078	        PORTB=$5B
	MOVE?CB	05Bh, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00079	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00080	        endif
	LABEL?L	L00027	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00081	    if contador = 3 then
	CMPNE?BCL	_contador, 003h, L00029

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00082	        PORTB=$4F
	MOVE?CB	04Fh, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00083	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00084	        endif
	LABEL?L	L00029	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00085	    if contador = 4 then
	CMPNE?BCL	_contador, 004h, L00031

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00086	        PORTB=$66
	MOVE?CB	066h, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00087	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00088	        endif
	LABEL?L	L00031	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00089	    if contador = 5 then
	CMPNE?BCL	_contador, 005h, L00033

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00090	        PORTB=$6D
	MOVE?CB	06Dh, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00091	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00092	        endif
	LABEL?L	L00033	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00093	    if contador = 6 then
	CMPNE?BCL	_contador, 006h, L00035

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00094	        PORTB=$7D
	MOVE?CB	07Dh, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00095	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00096	        endif
	LABEL?L	L00035	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00097	    if contador = 7 then
	CMPNE?BCL	_contador, 007h, L00037

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00098	        PORTB=$07
	MOVE?CB	007h, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00099	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00100	        ENDIF
	LABEL?L	L00037	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00101	    if contador = 8 then
	CMPNE?BCL	_contador, 008h, L00039

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00102	        PORTB=$7F
	MOVE?CB	07Fh, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00103	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00104	        endif
	LABEL?L	L00039	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00105	    if contador = 9 then
	CMPNE?BCL	_contador, 009h, L00041

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00106	        PORTB=$67
	MOVE?CB	067h, PORTB

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00107	        pause 500
	PAUSE?C	001F4h

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00108	        endif
	LABEL?L	L00041	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00109	    if contador > 9 then
	CMPLE?BCL	_contador, 009h, L00043

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00110	        contador = 0
	MOVE?CB	000h, _contador

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00111	        endif
	LABEL?L	L00043	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00112	ENDIF
	LABEL?L	L00003	

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00114	 GOTO INICIO   
	GOTO?L	_inicio

; C:\USERS\GARFIASLOPEZWINDOWS\DESKTOP\B\B.PBP	00117	 end   
	END?	

	END
