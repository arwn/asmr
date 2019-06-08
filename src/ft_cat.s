global _ft_cat
section .data
	buf times 64 db 0
	bufsz equ $ - buf

section .text
_ft_cat:
	mov rsi, buf
	mov rdx, bufsz
	mov rax, 0x2000003
	syscall
	push rdi
	mov rdi, 1 ;fd
	mov rdx, rax ;length
	mov rax, 0x2000004 ;write
	syscall
	pop rdi
	cmp rax, 0
	jne _ft_cat
	ret
	