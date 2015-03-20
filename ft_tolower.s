global _ft_tolower

section .text

_ft_tolower:
	cmp rdi, 65
	jl end
	cmp rdi, 90
	jg end
	add rdi, 32
	jmp end

end:
	mov rax, rdi
	ret
