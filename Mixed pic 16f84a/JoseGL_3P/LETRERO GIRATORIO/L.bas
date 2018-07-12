'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 11/12/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
TRISB = 0
TRISA = 0

LUCES:

PORTB = %00000001
PORTA = %00000
PAUSE 50
PORTB = %00000010
PORTA = %00000
PAUSE 50
PORTB = %00000100
PORTA = %00000
PAUSE 50 
PORTB = %00001000
PORTA = %00000
PAUSE 50 
PORTB = %00010000
PORTA = %00000
PAUSE 50 
PORTB = %00100000
PORTA = %00000
PAUSE 50 
PORTB = %01000000
PORTA = %00000
PAUSE 50 
PORTB = %10000000
PORTA = %00000
PAUSE 50 
PORTB = %00000000
PORTA = %00001
PAUSE 50 
PORTB = %00000000
PORTA = %00010
PAUSE 50 
PORTB = %00000000
PORTA = %00100
PAUSE 50 
PORTB = %00000000
PORTA = %01000
PAUSE 50 
PORTB = %00000000
PORTA = %10000
PAUSE 50 

GOTO LUCES

END
