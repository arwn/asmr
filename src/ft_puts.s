;;Author: Aren Windham
;;The ft_puts function writes string s to the standard output and
;;appends a newline charater.

;;void ft_puts(char *s)
global _ft_puts
extern _ft_strlen

section .data
    nl       db 10          ;newline character
    nulltext db "(null)", 0

section .text
_ft_puts:
    cmp     rdi, 0          ;if *s != nil then
    jnz     notnull         ;notnull
    mov     rdi, nulltext   ;move nulltext into *s
notnull:
    push    rdi             ;prevent clobbering from strlen
    call    _ft_strlen
    pop     rdi
    push    rax             ;save for return value of puts
print_string:
    mov     rsi, rdi        ;string
    mov     rdi, 1          ;fd
    mov     rdx, rax        ;len
    mov     rax, 0x2000004  ;write syscall
    syscall
print_newline:
    mov     rsi, nl         ;string
    mov     rdi, 1          ;stdout
    mov     rdx, 1          ;one byte
    mov     rax, 0x2000004  ;write syscall
    syscall
    pop     rax
    inc     rax             ;inc because newline
    ret
