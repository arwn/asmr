;;Author: Aren Windham
;;The ft_isalnum function returns 1 if isdigit(c) or isalpha(c)

;;int ft_isalnum(char c)
global _ft_isalnum
extern _ft_isalpha
extern _ft_isdigit

section .text
_ft_isalnum:
    call    _ft_isdigit     ;if isdigit(c) then 1
    cmp	    rax, 0
    jnz     done
    call    _ft_isalpha     ;if isalpha(c) then 1
    cmp     rax, 0
    jnz     done
done:
    ret
