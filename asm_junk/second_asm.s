.global _start
.intel_syntax noprefix
_start: 
		// sys_write
		mov rax,1 
		mov rdi,1
		lea rsi,[msg]
		mov rdx,36
		syscall

		// sys_exit
		mov rax,60
		mov rdi,0
		syscall

msg: 
	.asciz "assemblys cool ah hell shits gas !!\n"

