; variables that will change thourought the life cycle of the app
section .bss

; data that will not change
section .data
	name: db "garycrant", 10 ; string to print
	nameLen: equ $-name ; lenght of the string

; actual logic for the program
section .text
	global_start ; entry point for the linker

	_start: ; start here	
		mov rax,1 ; move into register (space) register_name,data_to_store (1 == sys_write)
		mov rdi,1 ; move 1 into register rdi, which corresponds to std in the terminal
		mov rsi,name ; message to write
		mov rdx,nameLen ; message lenght
		syscall ; call kernel to execute the code in the cpu

		; end program
		mov rax,60 ; sys_exit
		mov rdi,0 ; error_code 0 (success)
		syscall ; call kernel to exit the program
