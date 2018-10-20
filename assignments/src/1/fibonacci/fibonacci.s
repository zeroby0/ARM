; Aravind Reddy V
; IMT 2015 524
; aravind.reddy@iiitb.org

; Implement Fibonacci series using Cortex M4

; 0 1 1 2 3 5 8 13 21 34

; a1, and a2 are two numbers in the Fibonacci series
; Find the nth number after a2

; 7 steps ahead of a2 = 1 is 34, so the R2 should be 0x22


; a1 = 1
; a2 = 1
; 
; loop n times:
;   a2 = a1 + a2
;   a1 = a2 - a1
;
; print a2

	AREA     appcode, CODE, READONLY
	EXPORT __main
	ENTRY 

__main FUNCTION
	MOV r0, #7
	MOV r1, 1
	MOV r2, 1

loop CMP r0, #0
	BLE stop        ; Jump if less than or equal to

	ADD r2, r2, r1
	SUB r1, r2, r1

	SUB r0, #1
	B loop          ; Jump back to loop

stop B stop 		; stop program
     ENDFUNC

END