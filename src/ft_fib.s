global _ft_fib

section .text
_ft_fib:
	mov r8, 0 ;prev number
	mov r9, 1 ;current number
fib:
	cmp rdi, 1
	jle done
	push r9
	add r9, r8
	pop r8
	dec rdi
	jmp fib
done:
	mov rax, r9
	ret