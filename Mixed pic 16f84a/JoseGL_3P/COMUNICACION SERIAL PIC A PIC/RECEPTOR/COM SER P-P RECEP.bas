'****************************************************************
'*  Name    : COMUNICACIÓN SERIAL PIC-PIC.BAS                                      *
'*  Author  : NOEL GARCIA HEREDIA                               *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 23/11/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
' PIC RECEPTOR '

INCLUDE "modedefs.bas"       
'CMCON=7
LED VAR PORTA.0
DATOS VAR BYTE
INICIO:
    SERIN PORTB.0,N2400,DATOS
    IF DATOS="E" THEN HIGH LED
    IF DATOS="A" THEN LOW LED
    
GOTO INICIO
