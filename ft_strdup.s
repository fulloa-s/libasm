		section .text
		global _ft_strdup
		extern ___error
		extern _malloc
		extern _ft_strlen
		extern _ft_strcpy

_ft_strdup:
			call _ft_strlen ; chiamo strlen per conoscere la lunghezza della stringa
			inc  rax		; aumento rax per il termine nullo
			push rdi		; salvo la stringa passata come argomento
			mov  rdi, rax	; passo a malloc (prende arg rdi) il n da allocare
			call _malloc	; chiamo malloc
			jc	 err
			pop  rsi		; pop in r8 della stringa passata come argomento
			mov  rdi, rax   ; punto il registro rdi (che utilizzo per strcpy) alla memoria allocata
			call _ft_strcpy ; chiamo strcpy		
			ret

err:
			push        rax
            call        ___error
            pop         r9
            mov         [rax],  r9
			mov 		rax, -1
            ret
