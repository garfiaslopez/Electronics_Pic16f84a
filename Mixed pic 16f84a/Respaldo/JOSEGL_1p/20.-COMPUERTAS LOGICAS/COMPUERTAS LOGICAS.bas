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
TRISB=0
TRISA=%00011

A VAR PORTA.0
B VAR PORTA.1
Y VAR PORTB.0
O VAR PORTB.1
N VAR PORTB.2
S VAR PORTB.3
NY VAR PORTB.4
NO VAR PORTB.5
XO VAR PORTB.6
XNO VAR PORTB.7

INICIO:

  IF A=1 AND B=1 THEN 
  Y=1
  ELSE
  Y=0
  ENDIF
  
  IF A=0 AND B=0 THEN
  O=0 
  ELSE 
  O=1
  ENDIF
  
  IF A=0 THEN 
  N=1
  ELSE 
  N=0
  ENDIF
  
  IF A=0 THEN 
  S=0
  ELSE 
  S=1
  ENDIF
  
  IF A=1 AND B=1 THEN
  NY=1
  ELSE
  NY=0
  ENDIF
  
  IF A=0 AND B=0   THEN
  NO=1
  ELSE
  NO=0
  ENDIF
  
  IF A=B THEN
  XO=0
  ELSE
  XO=1
  ENDIF
  
  IF A=B THEN
  XNO=1
  ELSE
  XNO=0
  ENDIF
  
  GOTO INICIO
  
  END
  
