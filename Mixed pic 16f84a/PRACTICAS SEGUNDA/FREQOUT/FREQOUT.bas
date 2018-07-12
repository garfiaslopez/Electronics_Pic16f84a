'****************************************************************
'*  Name    : FREQOUT.BAS                                      *
'*  Author  : NOEL GARCIA HEREDIA                               *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 23/11/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
TRISB=%00000000

INICIO:
    FREQOUT PORTB.0,200,941,1136
    PAUSE 50
    FREQOUT PORTB.0,200,852,1477
    PAUSE 50
    FREQOUT PORTB.0,200,852,1209
    PAUSE 50
    FREQOUT PORTB.0,200,941,1336
    PAUSE 50
    FREQOUT PORTB.0,200,852,1336
    PAUSE 50
    FREQOUT PORTB.0,200,852,1209
    PAUSE 50
    FREQOUT PORTB.0,200,852,1477
    PAUSE 50
    FREQOUT PORTB.0,200,852,1477
    PAUSE 50
    FREQOUT PORTB.0,200,852,1477
    PAUSE 50
GOTO INICIO
END
