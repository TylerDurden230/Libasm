
section .text
	global _ft_strcpy

_ft_strcpy:
		mov RAX, -1

loop:
		inc RAX
		mov cl, [RSI + RAX]
		mov [RDI + RAX], cl
		cmp cl, 0
		jne loop
		mov RAX, RDI
		ret
