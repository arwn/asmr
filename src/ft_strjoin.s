global _ft_strjoin

extern _malloc
extern _ft_strlen
extern _ft_strcat
extern _ft_bzero

section .text
_ft_strjoin:
    push rdi ; s1
    push rsi ; s2
lengths:
    call _ft_strlen
    mov r8, rax ;len s1
    mov rdi, [rsp]
    call _ft_strlen
    mov r9, rax ;len s2
    add r8, r9
    add r8, 1
    mov rdi, r8
copy:
    call _malloc
    mov rsi, rdi
    mov rdi, rax
    call _ft_bzero
    mov rsi, [rsp + 8]
    call _ft_strcat
    mov rdi, rax
    mov rsi, [rsp]
    call _ft_strcat
	leave
    ret
