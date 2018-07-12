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
R VAR BYTE
DATOS VAR BYTE

LCDOUT $FE,$7
LCDOUT $FE,1
INICIO:
    LCDOUT $FE,$90
    FOR R=0 TO 24
        LOOKUP R,["ELECTRONICA-PRACTICA-"],DATOS
        LCDOUT , DATOS
        PAUSE 1000
    NEXT

GOTO INICIO
END
