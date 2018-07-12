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
   PORTB=$6F
   PAUSE 300
   PORTB=$7F
   PAUSE 300
   PORTB=$07
   PAUSE 300
   PORTB=$7D
   PAUSE 300
   PORTB=$6D
   PAUSE 300
   PORTB=$66
   PAUSE 300
   PORTB=$4F
   PAUSE 300
   PORTB=$5B
   PAUSE 300
   PORTB=$06
   PAUSE 300
   PORTB=$3F
   PAUSE 300 
   GOTO INICIO
 
 END    
