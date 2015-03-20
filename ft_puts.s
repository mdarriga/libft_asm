%define MACH_SYSCALL(nb)	0x2000000 | nb
%define READ				3
%define WRITE				4

extern _ft_strlen
global _ft_puts

section .text

_ft_puts:
	mov rbx, rdi
	call _ft_strlen
	mov rdx, rax
	mov rax, MACH_SYSCALL(WRITE)
	mov rdi, 1
	mov rsi, rbx
	push 10
	pop rax
	syscall

end:
	ret
