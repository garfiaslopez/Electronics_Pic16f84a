'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 09/09/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
TRISA=%00001
TRISB=%11111110

SW VAR PORTA.0
LED VAR PORTB.0

INICIO:

 IF SW=0 THEN 
 LOW LED
 ELSE 
 HIGH LED 
 ENDIF
 
 GOTO INICIO
 
 END
