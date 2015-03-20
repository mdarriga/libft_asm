global _ft_isblank

section .text

_ft_isblank:
	cmp rdi, 9
	jl end_fail
	cmp rdi, 32
	jg end_fail
	cmp rdi, 10
	jl end_true
	cmp rdi, 31
	jg end_true

end_fail:
	mov rax, 0
	ret

end_true:
	mov rax, 1
	ret
