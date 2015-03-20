global _ft_isalpha

section .text

_ft_isalpha:
	cmp rdi, 122
	jg end_fail
	cmp rdi, 97
	jge end_success
	cmp rdi, 65
	jl end_fail
	cmp rdi, 90
	jle end_success

end_fail:
	mov rax, 0
	ret

end_success:
	mov rax, 1
	ret
