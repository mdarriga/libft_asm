global _ft_strcat

section .text

_ft_strcat:
	mov rbx, 0
	cmp rsi, byte 0
	je end
	while_1:
		cmp [rdi + rbx], byte 0
		je while_2
		inc rbx
		jmp while_1
	while_2:
		cmp [rsi], byte 0
		je end
		mov r11, [rsi]
		mov [rdi + rbx], r11
		inc rbx
		inc rsi
		jmp while_2

end:
	mov rax, rdi
	ret
