global _ft_isalnum

extern _ft_isalpha
extern _ft_isdigit

section .text
_ft_isalnum:
	call _ft_isdigit
	cmp rax, 0
	jnz done
	call _ft_isalpha
	cmp rax, 0
	jnz done

done:
	ret
