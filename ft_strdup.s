extern _malloc
extern _ft_strlen
extern _ft_memcpy
global _ft_strdup

section .text

_ft_strdup:
	push rbp
	mov rbp, rsp
	mov rax, 0
	cmp rdi, 0
	je end
	push rdi
	call _ft_strlen
	push rax
	mov rdi, rax
	call _malloc
	mov rdi, rax
	pop rdx
	pop rsi
	call _ft_memcpy
	pop rsi

end:
	mov rsp, rbp
	pop rbp
	ret
