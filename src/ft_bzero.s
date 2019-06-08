;;Author: A.R.W
;;The bzero function writes n zeroed bytes to the string s. if n is
;;zero, bzero does nothing

;;void ft_bzero(void *s, size_t n);
global _ft_bzero

section .text
_ft_bzero:
	push	rbp				;save frame pointer
do:							;while rsi > 0
	cmp 	rsi, 0
	jle 	done			;if s <= 0 then return
	sub 	rsi, 1			;decrement num bytes to be zeroed
	mov 	byte [rdi], 0	;zero the byte
	inc 	rdi				;move pointer to next byte
	jmp 	do
done:
	pop		rbp
	ret