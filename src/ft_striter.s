global _ft_striter

section .text
_ft_striter:
	mov r8, rdi ;string
	mov r9, rsi ;function
mainloop:
	cmp [r8], byte 0
	je done
	mov rdi, r8
	call r9
	inc r8
	jmp mainloop
done:
	ret
