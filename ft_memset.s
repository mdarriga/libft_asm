global _ft_memset

section .text

_ft_memset:
	push rdi
	mov rax, rsi
	mov rcx, rdx
	cld
	rep stosb

end:
	pop rax
	ret
