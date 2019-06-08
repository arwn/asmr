;;Author: Aren Windham
;;The ft_cat program reads all data from a file descriptor and then

;;void ft_cat(int fd)
global _ft_cat
section .data
	buf		times 64 db 0 		;buffer to read into
	bufsz	equ $ - buf

section .text
_ft_cat:
	mov		rsi, buf
	mov		rdx, bufsz
	mov		rax, 0x2000003		;read syscall
	syscall
	mov		rdi, 1				;fd
	mov		rdx, rax			;length
	mov		rax, 0x2000004		;write syscall
	syscall
	cmp		rax, 0				;if write() == 0
	jne		_ft_cat
	ret
