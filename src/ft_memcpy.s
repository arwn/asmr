;;Author: Aren Windham
;;The ft_memcpy function copies n bytes from src to dst.

;;void *ft_memcpy(void *dst, const void *src, int n)
global _ft_memcpy

section .text
_ft_memcpy:
    cmp     rdx, 1                     ;if n < 1 then done
    jb      done
    mov     cl, byte [rsi + rdx - 1]   ;move one byte from src+n-1 to cl
    mov     byte [rdi + rdx - 1], cl   ;move cl to dst+n-1
    dec     rdx                        ;n--
    jmp     _ft_memcpy
done:
    mov     rax, rdi
    ret
