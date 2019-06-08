;;Author: Aren Windham
;;The ft_memset function sets len bytes in b to c.

;;void *ft_memset(void *b, int c, int len)
global _ft_memset

section .text
_ft_memset:
    cmp     rdx, 0                  ;if len <= 0 then done
    jle     done
memset:                             ;while len > 0
    dec     rdx                     ;len--
    mov     byte [rdi + rdx], sil   ;b+len = c
    cmp     rdx, 0                  ;if c <= 1
    jg      memset                  ;then done
done:
    mov     rax, rdi
    ret
