global _ft_memcpy

section .text
_ft_memcpy:
	cmp rdx, 1
	jb done
	mov cl, byte [rsi + rdx - 1]
	mov byte [rdi + rdx - 1], cl
	dec rdx
	jmp _ft_memcpy
done:
	mov rax, rdi
	ret
