global _ft_isascii

section .text

_ft_isascii:
	cmp rdi, 127
	jg end_fail
	cmp rdi, 0
	jl end_fail
	jmp end_success

end_fail:
	mov rax, 0
	ret

end_success:
	mov rax, 1
	ret
