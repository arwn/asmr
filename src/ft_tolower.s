;;Author: Aren Windham
;;the tolower funcion converts an upper-case letter to the coresponding
;;lower-case letter.

;;int ft_tolower(int c)
global _ft_tolower

section .text
_ft_tolower:
	cmp rdi, 'A'	;if c <= 'A' then done
	jl done
	cmp rdi, 'Z'	;if c <= 'Z' then done
	jg done
	add rdi, 32		;else c += 32
done:
	mov rax, rdi
	ret