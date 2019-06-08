;;Author: Aren Windham
;;The ft_isalpha function returns 1 if c is between 'a' or 'z' including
;;'a' and 'z' or if c is between 'A' or 'Z' including 'A' and 'Z' where
;;c between 0 and 255.

;;ft_isalpha(int c)
global _ft_isalpha

section .text
_ft_isalpha:
    cmp     rdi, 'A'    ;if c < 'A' then false
    jl      false
    cmp     rdi, 'Z'    ;else if c <= 'Z' then true
    jle     true
    cmp     rdi, 'a'    ;else if c < 'a' then false
    jl      false
    cmp     rdi, 'z'    ;else if c > 'z' then false
    jg      false
true:                   ;else true
    mov rax, 1
    ret
false:
    mov rax, 0
    ret
