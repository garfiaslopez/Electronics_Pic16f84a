'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 21/09/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
TRISA=11111
TRISB=00000000

INICIO:
IF PORTA=00000 THEN
    PORTB=%01111100
    PAUSE 500
    PORTB=0
    PAUSE 500
    ENDIF

IF PORTA=00001 THEN
    PORTB=$06
    PAUSE 500
    PORTB=0
    PAUSE 500
    ENDIF

IF PORTA=00010 THEN
    PORTB=$5B
    PAUSE 500
    PORTB=0
    PAUSE 500
    ENDIF
    
IF PORTA=00100 THEN
    PORTB=$4F
    PAUSE 500
    PORTB=0
    PAUSE 500
    ENDIF
    
IF PORTA=01000 THEN
    PORTB=$66
    PAUSE 500
    PORTB=0
    PAUSE 500
    ENDIF
    
goto inicio
end

    
