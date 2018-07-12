'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2013 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 12/03/2013                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************

TRISB = %11111111
TRISA = 0

COCHERA:

    IF PORTB=%00000011 THEN
        
        PORTA=00010
        
    ENDIF
    
    
    IF PORTA=%00000001 THEN
        
        PORTA=00001
        
    ENDIF

goto COCHERA

END


