global _ft_strlen

section .text
_ft_strlen:
	mov rax, 0
loop:
	cmp [rdi], byte 0
	je done
	inc rdi
	add rax, 1
	jmp loop
done:
	ret