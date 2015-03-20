global _ft_isalnum

section .text

_ft_isalnum:
	cmp rdi, 122
	jg end_fail
	cmp rdi, 48
	jl end_fail
	cmp rdi, 97
	jge end_success
	cmp rdi, 57
	jle end_success
	cmp rdi, 90
	jg end_fail
	cmp rdi, 65
	jl end_fail
	jmp end_success

end_fail:
	mov rax, 0
	ret

end_success:
	mov rax, 1
	ret
