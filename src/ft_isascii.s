;;Author: Aren Windham
;;The ft_isasscii function returns 1 if c is >= 0 and c is <= 127.

;;int ft_isascii(int c)
global _ft_isascii

section .text
_ft_isascii:
    cmp     rdi, 0      ;if c < 0 then false
    jl      false
    cmp     rdi, 127    ;if c > 127 then false
    jg      false
    mov     rax, 1      ;else true
    ret
false:
    mov rax, 0
    ret
