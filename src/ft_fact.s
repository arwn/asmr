global _ft_fact

section .text
_ft_fact:
	mov rax, 1
fact:
	cmp rdi, 1
	jle done
	mul rdi
	dec rdi
	jmp fact
done:
	ret