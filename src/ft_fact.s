;;Author: Aren Windham
;;The ft_fact program calculates the factorial of n where n is a
;;positive integer.

;;int ft_fact(int n)
global _ft_fact

section .text
_ft_fact:
	mov	rax, 1	;fact(1) is 1 so start with that
fact:
	cmp	rdi, 1	;if n <= 1
	jle	done	;then done
	mul	rdi		;rax *= n
	dec	rdi		;n--
	jmp	fact
done:
	ret
