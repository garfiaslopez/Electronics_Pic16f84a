'****************************************************************
'*  Name    : DTMFOUT.BAS                                      *
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
    DTMFOUT PORTB.0,[9,5,1,2,4,2,8,5,0,9]
    PAUSE 500
GOTO INICIO
END
