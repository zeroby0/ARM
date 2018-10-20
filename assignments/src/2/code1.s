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
		MOV R3, #0x100
		MOV R8, #0x200
		MOV R7, #0x200
		MOV R6, #0x200

stop B stop ; stop program
	endfunc
	end

stop B stop ; stop program