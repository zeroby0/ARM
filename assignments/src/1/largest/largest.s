; Aravind Reddy V
; IMT 2015 524
; aravind.reddy@iiitb.org

; Given three numbers, find the largest of the three

; if a > b
;   swap(a, b)
; if b > c
;   swap(b, c)
;
; print(c)

; NOTE: The largest number will be stored in R2

	AREA     appcode, CODE, READONLY
	EXPORT __main
	ENTRY 

__main FUNCTION
	MOV r0, #3
	MOV r1, #1
	MOV r2, #8
	
	CMP r0, r1
	MOVGE r1, r0     ; Move r0 to r1 if r0 > r1
	
	CMP r1, r2
	MOVGE r2, r1     ; Move r1 to r2 if r1 > r2 
	
	B stop
	
stop B stop ; stop program
     ENDFUNC
     END