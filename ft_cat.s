%define MACH_SYSCALL(nb)	0x2000000 | nb
%define READ				3
%define WRITE				4

global _ft_cat

section .data
	buffer times 255 db 0
	buffsize equ $ - buffer

section .text

_ft_cat:
	push rbp
	mov rbp, rsp

while:
	push rdi
	mov rax, MACH_SYSCALL(READ)
	lea rsi, [rel buffer]
	mov rdx, buffsize
	syscall
	jc err
	cmp rax, 0
	je end
	mov rdi, 1
	mov rdx, rax
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	jc err
	pop rdi
	jmp while


err:
	pop rdi
	mov rax, 1

end:
	mov rsp, rbp
	pop rbp
	ret
