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
TRISA=0
TRISB=1

INCLUDE "modedefs.bas"
CMCON=7
LED VAR PORTA.0
DATOS VAR BYTE
INICIO:
SERIN  PORTB.0,N2400,DATOS

IF DATOS="E" THEN HIGH LED
IF DATOS="A" THEN LOW LED

GOTO INICIO

