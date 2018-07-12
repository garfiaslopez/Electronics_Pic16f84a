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

INICIO:
PAUSE 500
LCDOUT $FE,1, 
PAUSE 1000
LCDOUT $FE,1, " LA PRACTICA"
LCDOUT $FE,$C0, " DEL LCD"
PAUSE 500

GOTO INICIO
END
