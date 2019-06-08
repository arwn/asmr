global _ft_puts
extern _ft_strlen

section .data
	nl db 10
	nulltext db "(null)", 0

section .text
_ft_puts:
	cmp rdi, 0 ;print (null) if passed a null pointer
	jnz notnull
	mov rdi, nulltext
notnull:
	push rdi ;prevent clobbering from strlen
	call _ft_strlen
	pop rdi
	push rax ;save for return value of puts
print:
	mov rsi, rdi ;string
	mov rdi, 1 ;fd
	mov rdx, rax ;len
	mov rax, 0x2000004 ;write
	syscall
	jmp newline
newline:
	mov rsi, nl
	mov rdi, 1
	mov rdx, 1
	mov rax, 0x2000004
	syscall
	pop rax
	inc rax
	ret