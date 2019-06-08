global _ft_isdigit
 
section .text
_ft_isdigit:
	cmp		rdi, 48
	jl		.not_digit
	cmp		rdi, 57
	jg		.not_digit

	mov 	eax, 1
	ret

.not_digit:
	mov 	eax, 0
	ret