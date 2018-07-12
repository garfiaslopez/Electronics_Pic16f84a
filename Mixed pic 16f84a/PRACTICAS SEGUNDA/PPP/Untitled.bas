'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 23/11/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
TRISA=%11111
TRISB=%00000000

INICIO:
IF PORTA=%10000 THEN
PORTB=$07
PAUSE 500
PORTB=$3F
PAUSE 500
PORTB =$5E
PAUSE 500
PORTB=$3F
PAUSE 500
ENDIF
goto INICIO
END
