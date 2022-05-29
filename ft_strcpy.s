		section	.text
		global	_ft_strcpy

_ft_strcpy:
			mov rcx, -1

increment:
			inc rcx
			
switch:		
			mov dl, BYTE[rsi + rcx]
			mov BYTE[rdi + rcx], dl
			cmp BYTE[rsi + rcx], 0
			jne increment

done:
			mov rax, rdi
			ret

