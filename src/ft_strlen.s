;;Author: Aren Windham
;The strlen function computes the length of the string s.

;;int ft_strlen(char *s)
global _ft_strlen

section .text
_ft_strlen:
    mov rax, 0      ;compare byte for rep
    mov rcx, -1     ;counter

    cld             ;for safety
    repnz scasb     ;go to end of string

    mov rax, rcx
    inc rax
    not rax
    ret
