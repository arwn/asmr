;;Author: Aren Windham
;;The ft_memset function sets len bytes in b to c.

;;void *ft_memset(void *b, int c, int len)
global _ft_memset

section .text
_ft_memset:
    push    rdi         ;return value
    mov     rax, rsi    ;char to set
    mov     rcx, rdx    ;len
    cld
    rep     stosb
    pop     rax         ;return value
    ret
