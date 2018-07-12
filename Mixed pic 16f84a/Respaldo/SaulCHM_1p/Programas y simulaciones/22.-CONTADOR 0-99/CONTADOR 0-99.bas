'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 10/09/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
  TRISB=%0000
  TRISA=%00
  
  X VAR BYTE
  Y VAR BYTE
  R VAR BYTE
  
  INICIO:
  
  FOR X=0 TO 9
  FOR Y=0 TO 9
  FOR R=1 TO 50
      PORTA=%01
      PORTB=X
      PAUSE 10
      
      PORTA=%10
      PORTB=y
      PAUSE 10
      
      NEXT
      NEXT
      NEXT
      
GOTO INICIO

END
      
