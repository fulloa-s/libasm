		section	.text
		global	_ft_strlen

_ft_strlen:
			xor		rcx, rcx			; i = 0, utilizzo questo registro perche utilizzato spesso come contatore e lo inizializzo con xor
			jmp		compare				; vai a comparare

increment:
			inc		rcx					; i++ incrementa rcx
compare:
			cmp		BYTE[rdi + rcx], 0	; cerco il termine nullo con comparazione del byte in rdi (usato come primo registro degli args) ed rcx come contatore
			jne		increment			; se la condizione non é vera vai ad incremento
done:
			mov		rax, rcx
			ret	