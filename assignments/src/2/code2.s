;PRESERVE8
;thumb

	area appcode, CODE, READONLY
	export __main
	ENTRY

__main function
	MOV R3, #0x100
	MOV R8, #0x200
	
	CMP R8, R3 ; do R8 - R3 & updated N & V flags
	ITTTE LT ; or N != V
		ADDLT r3, r3,r8
		MOVLT r4, #4
		MOVLT R0, #5 
		SUBGE r3, r3, r3 ; Z != 1 pr N == V
		
stop B stop ; stop program
	endfunc
	end

stop B stop ; stop program