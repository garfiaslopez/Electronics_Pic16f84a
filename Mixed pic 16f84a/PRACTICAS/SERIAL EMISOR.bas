'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 03/12/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
TRISB=0
TRISA=1

INCLUDE  "modedefs.bas"

PULSADOR VAR PORTA.0

INICIO:

IF PULSADOR=0 THEN
SEROUT PORTB.0, N2400,["E"]
GOTO INICIO
ENDIF
SEROUT PORTB.0, N2400,["A"]
GOTO INICIO

