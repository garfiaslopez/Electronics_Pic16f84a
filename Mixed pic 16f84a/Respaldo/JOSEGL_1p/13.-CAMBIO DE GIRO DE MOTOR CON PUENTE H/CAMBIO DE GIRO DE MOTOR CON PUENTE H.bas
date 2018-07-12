'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 10/09/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
TRISB=%11111100

D1 VAR PORTB.0
D2 VAR PORTB.1

INICIO:

HIGH D1
LOW D2
PAUSE 5000

LOW D1
HIGH D2
PAUSE 5000

GOTO INICIO

END

