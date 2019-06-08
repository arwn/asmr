;;Author: Aren Windham

;;Description
;The toupper function converts a lower-case letter to the coresponding
;upper-case letter.

;;Register Usage
;rdi	may have 32 subtracted
;rax	return value

;;pseudocode
;if c < 'a' then return c
;else if c > 'z' then return c
;else return c - 32 end

;;int toupper(int c)
global _ft_toupper

section .text
_ft_toupper:
	cmp	rdi, 'a'	;if c < 'a' then done
	jl	done
	cmp	rdi, 'z'	;if c > 'z' then done
	jg	done
	sub	rdi, 32		;c -= 32
done:
	mov	rax, rdi
	ret