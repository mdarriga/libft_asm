%define MACH_SYSCALL(nb)	0x2000000 | nb
%define WRITE				4

extern _ft_strlen
global _ft_putstr

section .text

_ft_putstr:
	mov rbx, rdi
	call _ft_strlen
	mov rdx, rax
	mov rax, MACH_SYSCALL(WRITE)
	mov rdi, 1
	mov rsi, rbx
	syscall

end:
	ret
