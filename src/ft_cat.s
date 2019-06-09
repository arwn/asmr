;;Author: Aren Windham
;;The ft_cat program reads all data from a file descriptor and prints it

;;void ft_cat(int fd)
global _ft_cat
section .data
	buf		times 64 db 0 		;buffer to read into
	bufsz	equ $ - buf
    badbuf  db 'invalid fd' ,10
    bbufsz	equ $ - badbuf

section .text
_ft_cat:
    cmp     edi, 0
    jle     invalid_fd
read_write:
    push    rdi
	mov     rsi, buf
	mov     rdx, bufsz
	mov     rax, 0x2000003		;read syscall
    pop     rdi
	syscall
    cmp     eax, 0
    jle     done
    push rdi
	mov     rdi, 1				;stdout
	mov     rdx, rax			;length
	mov     rax, 0x2000004		;write syscall
	syscall
    pop     rdi
	jmp	    read_write
done:
	ret

invalid_fd:
    mov     rdi, 1              ;stdout
    mov     rsi, badbuf
    mov     rdx, bbufsz
    mov     rax, 0x2000004      ;write syscall
    syscall
    ret
