; Aravind Reddy V
; IMT 2015 524
; aravind.reddy@iiitb.org

; Find the GCD of two given numbers
; r1 contains the result

	AREA     appcode, CODE, READONLY
	EXPORT __main
	ENTRY 

__main FUNCTION
	MOV r0, #81
	MOV r1, #18
	
loop CMP r0, r1
	SUBGT r0, r0, r1
	SUBLT r1, r1, r0
	BNE loop
	B stop
	
stop B stop ; stop program
     ENDFUNC
     END
	