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
TRISB=%11110000

INICIO:

  PORTB=$00
  PAUSE 300
  PORTB=$01
  PAUSE 300
  PORTB=$02
  PAUSE 300
  PORTB=$03
  PAUSE 300
  PORTB=$04
  PAUSE 300
  PORTB=$05
  PAUSE 300
  PORTB=$06
  PAUSE 300
  PORTB=$07
  PAUSE 300
  PORTB=$08
  PAUSE 300
  PORTB=09
  PAUSE 300
GOTO INICIO

END
  
