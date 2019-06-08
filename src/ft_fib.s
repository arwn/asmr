;;Author: Aren Windham
;;The ft_fib function calculates the nth number in a fibonacci series
;;where n is a positive integer.

;;int ft_fib(int n)
global _ft_fib

section .text
_ft_fib:
	mov		r8, 0		;prev number
	mov		r9, 1		;current number
fib:
	cmp		rdi, 1		;if n <= 1
	jle		done		;then done
	push	r9			;tmp = r9
	add		r9, r8		;r9 = r8 + r9
	pop		r8			;r8 = tmp
	dec		rdi			;n--
	jmp		fib
done:
	mov		rax, r9		;return r9
	ret
