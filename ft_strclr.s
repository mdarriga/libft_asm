global _ft_strclr
extern _ft_strlen

section .text

_ft_strclr:
	push rdi
	cmp rdi, byte 0
	je end
	call _ft_strlen
	mov rcx, rax
	pop rdi

while_1:
	cmp rcx, byte 0
	je end
	mov [rdi], byte 0
	inc rdi
	dec rcx
	jmp while_1

end:
	ret
