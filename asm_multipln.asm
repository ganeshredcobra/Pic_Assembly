#INCLUDE P16F877A.INC
CBLOCK 0X20
DATA1
DATA2
RESULT
ENDC

ORG 00H
GOTO MAIN
ORG 20H

MAIN:
	MOVLW 0X02
	MOVWF DATA1
	MOVLW 0X03
LOOP:
	ADDLW 0X03
	MOVWF RESULT;3*3 IS DONE HERE
	DECFSZ DATA1,F
	GOTO LOOP
	
END