;;Author: Aren Windham
;;The atoi function converts the string pointed to by str to it's int
;;representation

;;int ft_atoi(char *str)
global _ft_atoi

section .text
_ft_atoi:
    mov     eax, 0              ;start with 0
    mov     r11d, 1
    cmp     byte [rdi], '-'     ;if s[1] != '-' then mainloop
    jne     mainloop
    mov     r11d, -1            ;negative number
    inc     rdi
mainloop:
    movzx   ecx, byte [rdi]
    cmp     ecx, '0'            ;if *str <= '0' then done
    jl      done
    cmp     ecx, '9'            ;if *str >= '9' then done
    jg      done
    sub     ecx, '0'
    imul    eax, 10             ;multiply eax by 10
    add     eax, ecx            ;eax += ecx
    inc     rdi                 ;str++
    jmp     mainloop
done:
    imul    eax, r11d
    ret

