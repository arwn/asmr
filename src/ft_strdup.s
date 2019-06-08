;;Author: Aren Windham
;;The ft_strdup function allocates space for a new string with the
;;length of strlen(s)+1 and copies the data into the return value.

;;char *ft_strdup(char *s)
global _ft_strdup
extern _malloc
extern _ft_memcpy
extern _ft_strlen

section .text
_ft_strdup:
	;align stack since we use _malloc
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16

	push	rdi         ;save *s from clobbering
	call	_ft_strlen
	inc		rax         ;strlen+1 for null terminator

	mov		rdi, rax    ;malloc strlen+1
	push	rdi         ;save size from clobbering
	call	_malloc
	cmp		rax, 0      ;if malloc failed then
	je		done        ;done

	mov		rdi, rax    ;memcpy into malloc return
	pop		rdx         ;memcpy from *s
	pop		rsi         ;memcpy size of strlen+1
	call	_ft_memcpy

done:
	leave
	ret
