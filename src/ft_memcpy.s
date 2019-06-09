;;Author: Aren Windham
;;The ft_memcpy function copies n bytes from src to dst.

;;void *ft_memcpy(void *dst, const void *src, int n)
global _ft_memcpy

section .text
_ft_memcpy:
    push rdi        ;save string pointer
    mov rcx, rdx    ;repeat n times

    cld
    rep movsb       ;move src into dst
    pop rax         ;return src pointer
    ret
