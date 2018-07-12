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
' PIC TRANSMISOR '

INCLUDE "modedefs.bas"       
'CMCON=7
S VAR PORTA.0
INICIO:
    IF S=0 THEN
        SEROUT PORTB.0,N2400,["E"]
        GOTO INICIO
    ENDIF
        SEROUT PORTB.0,N2400,["A"]
        
GOTO INICIO
