global _ft_strdup
extern _malloc
extern _ft_memcpy
extern _ft_strlen

section .text
_ft_strdup:
	push rdi ;save from strlen
	call _ft_strlen
	inc rax
	push rax
	mov rdi, rax
	call _malloc
	mov rdi, rax ;dest
	pop rdx ;length
	pop rsi ;src string
	call _ft_memcpy
	ret
