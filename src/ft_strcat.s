extern _ft_strlen
extern _ft_memcpy
global _ft_strcat

section .text
_ft_strcat:
	push	rdi ;output
	push	rdi ;dest
	push	rsi ;src
	call	_ft_strlen
	pop		rdi ;prepare argument
	push	rax ;desclen
	push	rdi ;src
	call	_ft_strlen
	pop		rsi ;src
	pop		rdi ;desclen
	pop		rcx ;dec
	add		rdi, rcx ;dest for memcpy
	mov		rdx, rax
	inc		rdx ;null term.
	call	_ft_memcpy
	pop		rax
	ret