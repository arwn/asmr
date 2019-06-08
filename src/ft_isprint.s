;;Author: Aren Windham
;;The ft_isprint function returns 1 if c is printable to a terminal.

;;int ft_isprint(int c)
global _ft_isprint

section .text
_ft_isprint:
    cmp     rdi, 0x20   ;if c < 'sp'
    jl      false       ;then false
    cmp     rdi, 0x7e   ;if c > '~'
    jg      false       ;then false
    mov     rax, 1      ;else true
    ret
false:
    mov     rax, 0
    ret
