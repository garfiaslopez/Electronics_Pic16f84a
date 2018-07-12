'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 27/08/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
TRISB=%11111000
TRISB=$F8
TRISB=248

LEDV VAR PORTB.0
LEDA VAR PORTB.1
LEDR VAR PORTB.2

INICIO:

     PORTB=%00000001
     PAUSE 5000
     PORTB=%00000000
     PAUSE 100
     PORTB=%00000001
     PAUSE 100
     PORTB=%00000000
     PAUSE 100
     PORTB=%00000001
     PAUSE 100
     PORTB=%00000000
     PAUSE 100
     PORTB=%00000001
     PAUSE 100
     PORTB=%00000010
     PAUSE 300
     PORTB=%00000100
     PAUSE 5000
     GOTO INICIO 
END
