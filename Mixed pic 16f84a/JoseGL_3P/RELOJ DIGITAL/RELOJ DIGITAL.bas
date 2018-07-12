'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 06/09/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
DEFINE LCD_DREG PORTA
DEFINE LCD_DBIT 0
DEFINE LCD_RSREG PORTB
DEFINE LCD_RSBIT 1
DEFINE LCD_EREG PORTB
DEFINE LCD_EBIT 2
H VAR BYTE
M VAR BYTE
S VAR BYTE

LCDOUT $FE,1," RELOJ   DIGITAL"
INICIO:
    FOR H=0 TO 23
        FOR M=0 TO 59
            FOR S=0 TO 59
                LCDOUT $FE,$C4,DEC2 H,":",DEC2 M,":",DEC2 S
                PAUSE 500
                LCDOUT $FE,$C4,DEC2 H," ",DEC2 M," ",DEC2 S
                PAUSE 500
            NEXT
        NEXT
    NEXT

GOTO INICIO
END
