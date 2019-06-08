global _ft_memset

section .text
_ft_memset:
	dec rdx
	mov byte [rdi + rdx], sil
	cmp rdx, 0
	jne _ft_memset
	mov rax, rdi
	ret