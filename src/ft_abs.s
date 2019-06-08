global _ft_abs

section .text
_ft_abs:
	cmp edi, 0
	mov eax, edi
	jg done
	imul eax, -1
done:
	ret