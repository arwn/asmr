global _ft_isprint

section .text
_ft_isprint:
	cmp rdi, 0x20
	jl false
	cmp rdi, 0x7e
	jg false
	mov rax, 1
	ret

false:
	mov rax, 0
	ret