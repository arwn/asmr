;;Author: Aren Windham
;;The toupper function converts a lower-case letter to the coresponding
;;upper-case letter.

;;int toupper(int c)
global _ft_toupper

section .text
_ft_toupper:
	cmp	rdi, 'a'	;if c < 'a' then done
	jl	done
	cmp	rdi, 'z'	;else if c > 'z' then done
	jg	done
	sub	rdi, 32		;else c -= 32
done:
	mov	rax, rdi
	ret