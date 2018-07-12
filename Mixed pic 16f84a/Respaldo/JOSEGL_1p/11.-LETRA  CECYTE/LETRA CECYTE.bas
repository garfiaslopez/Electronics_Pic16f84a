'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 28/08/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
CONTADOR VAR BYTE
LETRA VAR BYTE 
TRISB=0

INICIO:

CONTADOR=0

PROGRAMA:

LOOKUP CONTADOR,[118,63,56,119,0,57,121,57,110,7,121,0,115,56,119,84,7,121,56,0,63,6,0,63,119,118,119,57,119,0], LETRA
PORTB=LETRA
CONTADOR = CONTADOR+1
PAUSE 100
IF CONTADOR=30 THEN INICIO
GOTO PROGRAMA

END
