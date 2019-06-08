global _ft_bzero

section .text
_ft_bzero:
	cmp rsi, 0
	je done
	sub rsi, 1
	mov byte [rdi], 0
	inc rdi
	jmp _ft_bzero

done:
	ret