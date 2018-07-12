'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2013 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 30/04/2013                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
TRISA=%00001
TRISB=0
INICIO

    IF PORTA.0=1 THEN
       HIGH PORTB.7
    ELSE
    PORTB=%00000001
    PAUSE 200
    PORTB=0
    PAUSE 500
    PORTB=%00000001
    PAUSE 200
    PORTB=0
    PAUSE 500
    PORTB=%00000001
    PAUSE 200
    PORTB=0
    PAUSE 5000
    PORTB=%00000010
    PAUSE 200
    ENDIF
    GOTO INICIO
END
    
