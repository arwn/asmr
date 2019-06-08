global _ft_tolower

section .text
_ft_tolower:
	cmp rdi, 'A'
	jl done
	cmp rdi, 'Z'
	jg done
	add rdi, 32
done:
	mov rax, rdi
	ret