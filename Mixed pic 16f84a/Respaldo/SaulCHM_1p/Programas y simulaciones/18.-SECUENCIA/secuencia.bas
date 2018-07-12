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
TRISB=0

INICIO:
PORTB=%00000001
PAUSE 100
PORTB=%00000011
PAUSE 100
PORTB=%00000111
PAUSE 100
PORTB=%00001111
PAUSE 100
PORTB=%00011111
PAUSE 100
PORTB=%00111111
PAUSE 100
PORTB=%01111111
PAUSE 100
PORTB=%11111111
PAUSE 100
PORTB=%01111111
PAUSE 100
PORTB=%00111111
PAUSE 100
PORTB=%00011111
PAUSE 100
PORTB=%00001111
PAUSE 100
PORTB=%00000111
PAUSE 100
PORTB=%00000011
PAUSE 100
PORTB=%00000001
PAUSE 100
PORTB=%00000000
PAUSE 100
PORTB=%00011000
PAUSE 100
PORTB=%00100100
PAUSE 100
PORTB=%01000010
PAUSE 100
PORTB=%10000001
PAUSE 100
PORTB=%10000001
PAUSE 100
PORTB=%01000010
PAUSE 100
PORTB=%00100100
PAUSE 100
PORTB=%00011000
PAUSE 100

GOTO INICIO
END
