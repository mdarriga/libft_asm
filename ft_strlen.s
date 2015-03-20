global _ft_strlen

section .text

_ft_strlen:
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	je ifnull
	sub rcx, rcx
	not rcx
	sub al, al
	cld
	repne scasb
	not rcx
	dec rcx
	mov rax, rcx
	jmp end

ifnull:
	mov rax, 0

end:
	mov rsp, rbp
	pop rbp
	ret
