extern _ft_strlen
global _ft_strchr

section .text

_ft_strchr:
	push rbp
	mov rbp, rsp
	call _ft_strlen
	cmp rsi, 0
	je zero
	mov rcx, rax
	push rdi
	inc rcx
	push rcx
	mov al, sil
	cld
	repne scasb
	pop rax
	pop rdi
	cmp rcx, 0
	je fail
	inc rcx
	sub rax, rcx
	add rdi, rax
	mov rax, rdi
	jmp end

fail:
	mov rax, 0
	jmp end

zero:
	add rdi, rax
	mov rax, rdi
	jmp end

end:
	mov rsp, rbp
	pop rbp
	ret
