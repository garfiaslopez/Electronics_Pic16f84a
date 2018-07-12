'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 06/12/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
TRISB=%0000
R VAR BYTE

INICIO:

FOR R=1 TO 4
PORTB=%0001
GOSUB TIMER
PORTB=%0010
GOSUB TIMER
PORTB=%0100
GOSUB TIMER
PORTB=%1000
GOSUB TIMER

NEXT
GOTO INICIO
TIMER:
PAUSE 200

RETURN 

END

