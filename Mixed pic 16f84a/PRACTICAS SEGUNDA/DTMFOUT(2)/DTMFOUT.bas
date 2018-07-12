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
R VAR PORTB.1


INICIO:
    SOUND PORTB.0,[110,2000]
    LOW R
GOTO INICIO
END
