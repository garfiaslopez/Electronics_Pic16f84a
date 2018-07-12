'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 27/08/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
TRISB=0
 
   INICIO:
   PORTB=$3F
   PAUSE 1000
   PORTB=$06
   PAUSE 1000
   PORTB=$5B
   PAUSE 1000
   PORTB=$4F
   PAUSE 1000
   PORTB=$66
   PAUSE 1000
   PORTB=$6D
   PAUSE 1000
   PORTB=$7D
   PAUSE 1000
   PORTB=$07
   PAUSE 1000
   PORTB=$7F
   PAUSE 1000
   PORTB=$67
   PAUSE 1000 
   GOTO INICIO
 
 END    
