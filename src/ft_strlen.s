;;Author: Aren Windham
;The strlen function computes the length of the string s.

;;int ft_strlen(char *s)
global _ft_strlen

section .text
_ft_strlen:
	mov		rax, -1				;init to -1 so we start at 0
.cstr_iter:
	inc		rax					;size++
	cmp		byte [rdi + rax], 0	;if *s == '\0' then return size
	jne		.cstr_iter
	ret