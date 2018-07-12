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

LOOKUP CONTADOR,[56,63,109,0,125,80,119,84,94,121,109,0,57,119,121,84,0,56,0,56,63,80,119,84,0,115,121,80,63,0,84,62,84,57,119,0,94,121,14,119,84,0,94,121,0,56,62,57,118,119,80,0],LETRA           
PORTB=LETRA
CONTADOR= CONTADOR+1
PAUSE 1000
IF CONTADOR=52 THEN INICIO
GOTO PROGRAMA

END
