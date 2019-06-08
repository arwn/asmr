global _ft_toupper

section .text
_ft_toupper:
	cmp rdi, 'a'
	jl done
	cmp rdi, 'z'
	jg done
	sub rdi, 32
done:
	mov rax, rdi
	ret