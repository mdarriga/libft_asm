global _ft_isdigit

section .text

_ft_isdigit:
	cmp rdi, 48
	jl end_fail
	cmp rdi, 57
	jg end_fail
	jmp end_success

end_success:
	mov rax, 1
	ret

end_fail:
	mov rax, 0
	ret
