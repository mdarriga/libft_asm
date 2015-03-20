global _ft_isspace

section .text

_ft_isspace:
	cmp rdi, 32
	jg end_false
	cmp rdi, 9
	jl end_false
	cmp rdi, 14
	jl end_true
	cmp rdi, 31
	jg end_true

end_false:
	mov rax, 0
	ret

end_true:
	mov rax, 1
	ret
