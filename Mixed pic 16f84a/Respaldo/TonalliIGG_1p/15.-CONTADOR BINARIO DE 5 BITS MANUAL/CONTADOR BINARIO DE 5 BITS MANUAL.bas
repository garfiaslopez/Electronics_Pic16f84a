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
TRISA=%11111
TRISB=%11100000


SW1 VAR PORTA.0
SW2 VAR PORTA.1
SW3 VAR PORTA.2
SW4 VAR PORTA.3
SW5 VAR PORTA.4
LED1 VAR PORTB.0
LED2 VAR PORTB.1
LED3 VAR PORTB.2
LED4 VAR PORTB.3
LED5 VAR PORTB.4

 INICIO: 

 IF SW1=0 THEN
 HIGH LED1
 ELSE 
 LOW LED1
 ENDIF
 
 IF SW2=0 THEN
 HIGH LED2
 ELSE
 LOW LED2
 ENDIF
 
 IF SW3=0 THEN
 HIGH LED3
 ELSE
 LOW LED3
 ENDIF
 
 IF SW4=0 THEN
 HIGH LED4
 ELSE
 LOW LED4
 ENDIF
 
 IF SW5=0 THEN
 HIGH LED5
 ELSE
 LOW LED5
 ENDIF
 
 GOTO INICIO
 
 END
