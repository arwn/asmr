;;Author: Aren Windham
;;The ft_striter function applies f to each character in s.

;;void ft_striter(char *s, void (*f)(char *))
global _ft_striter

section .text
_ft_striter:
	mov     r8, rdi         ;string
	mov     r9, rsi         ;function
mainloop:
	cmp     [r8], byte 0    ;if *s == 0 then
	je      done            ;then done
	mov     rdi, r8
	call    r9              ;f(*s)
	inc     r8              ;s++
	jmp     mainloop
done:
	ret
