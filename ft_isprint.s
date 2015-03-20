global _ft_isprint

section .text

_ft_isprint:
	cmp rdi, 126
	jg end_fail
	cmp rdi, 32
	jl end_fail
	jmp end_success

end_fail:
	mov rax, 0
	ret

end_success:
	mov rax, 1
	ret
