'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 07/06/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************

TRISA=0
A VAR PORTB.0
B VAR PORTB.1
C VAR PORTB.2
D VAR PORTB.3

UNO VAR PORTB.4
DOS VAR PORTB.5
TRES VAR PORTB.6
CUATRO VAR PORTB.7

BARRIDO
    LOW A
IF UNO  =0 THEN porta=1
IF DOS  =0 THEN porta=2
IF TRES =0 THEN porta=3
IF CUATRO   =0 THEN porta=10
    HIGH A
    LOW B
IF UNO=0 THEN porta=4 
IF DOS=0 THEN porta=5
IF TRES=0 THEN porta=6
IF CUATRO=0 THEN porta=11
    HIGH B
    LOW C
IF UNO=0 THEN porta=7
IF DOS=0 THEN porta=8 
IF TRES=0 THEN porta=9 
IF CUATRO=0 THEN porta=12 
    HIGH C
    LOW D
IF UNO=0 THEN porta=14
IF DOS=0 THEN porta=0
IF TRES=0 THEN porta=15 
IF CUATRO=0 THEN porta=13
    HIGH D
    PAUSE 10
GOTO BARRIDO 
end     
