;;Author: Aren Windham
;;The ft_isdigit function returns 1 if c is a digit between '0' and '9'.

;;int ft_isdigit(int c)
global _ft_isdigit

section .text
_ft_isdigit:
	cmp		rdi, '0'		;if c < '0'
	jl		not_digit		;then false
	cmp		rdi, '9'		;else if c > '9'
	jg		not_digit		;then false
	mov 	eax, 1			;else true
	ret
not_digit:
	mov 	eax, 0
	ret
