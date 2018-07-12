'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2012 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 10/12/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************

INCLUDE "modedefs.bas"

INICIO:
HIGH PORTB.2
PAUSE 500
LOW PORTB.2
PAUSE 250

SEROUT PORTB.1,N2400,["BUBU Y EL GORDO"]

GOTO INICIO
END
