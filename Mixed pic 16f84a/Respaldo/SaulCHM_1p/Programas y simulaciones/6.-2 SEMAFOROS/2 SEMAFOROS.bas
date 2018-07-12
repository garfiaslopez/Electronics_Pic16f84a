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
TRISB=%11000000

INICIO:

     PORTB=%00100001
     PAUSE 5000
     PORTB=%00100000
     PAUSE 200
     PORTB=%00100001
     PAUSE 200
     PORTB=%00100000
     PAUSE 200
     PORTB=%00100001
     PAUSE 200
     PORTB=%00100000
     PAUSE 200
     PORTB=%00100001
     PAUSE 200
     PORTB=%00100010
     PAUSE 300
     PORTB=%00001100
     PAUSE 5000
     PORTB=%00000100
     PAUSE 200
     PORTB=%00001100
     PAUSE 200
     PORTB=%00000100
     PAUSE 200
     PORTB=%00001100
     PAUSE 200
     PORTB=%00000100
     PAUSE 200
     PORTB=%00001100
     PAUSE 200
     PORTB=%00010100
     PAUSE 300
     GOTO INICIO
     
 END    
