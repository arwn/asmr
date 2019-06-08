;;Author: Aren Windham
;;The ft_strjoin function returns a new string containing s1
;;concatenated with s2.

;;char *ft_strjoin(char *s1, char *s2)
global _ft_strjoin

extern _malloc
extern _ft_strlen
extern _ft_strcat
extern _ft_bzero

section .text
_ft_strjoin:
    push    rdi             ;s1
    push    rsi             ;s2
lengths:
    call    _ft_strlen
    push    rax             ;save s1 len
    mov     rdi, [rsp+8]    ;s2
    call    _ft_strlen
    pop     r8              ;pop len1 into r8
    mov     r9, rax         ;len s2 into r9
    add     r8, r9          ;len +=1
    add     r8, 1
    mov     rdi, r8
copy:
    call    _malloc         ;malloc new space
    mov     rsi, rdi
    mov     rdi, rax
    call    _ft_bzero       ;bzero maloced space
    mov     rsi, [rsp + 8]
    call    _ft_strcat
    mov     rdi, rax
    mov     rsi, [rsp]
    call    _ft_strcat
	leave
    ret

;;bugs
;malloc not called correctly
