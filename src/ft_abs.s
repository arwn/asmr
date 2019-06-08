;;Author: A.R.W
;;This program calculates the absolute value of a signed integer

;;int ft_abs(int number);
global _ft_abs

section .text
_ft_abs:
	mov		eax, edi
	cmp		eax, 0 		;is number < 0
	jge		done
	imul	eax, -1		;multiply by -1
done:
	ret