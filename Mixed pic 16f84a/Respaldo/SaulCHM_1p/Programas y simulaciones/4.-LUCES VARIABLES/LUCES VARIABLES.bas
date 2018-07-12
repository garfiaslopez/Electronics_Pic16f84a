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
     TRISB=$FC
     LED1 VAR PORTB.0
     LED2 VAR PORTB.1
     
     INICIO:
     HIGH LED1
     LOW LED2
     PAUSE 500
     LOW LED1
     HIGH LED2
     PAUSE 500
     GOTO INICIO
 END    
