		section .text
		global _ft_strcmp

_ft_strcmp:
			xor rax, rax
			mov rcx, -1

increment:
			inc rcx

split:
			mov r8b, BYTE[rdi + rcx]
			mov dl, BYTE[rsi + rcx]

compare:	
			cmp r8b, 0
			je	done
			cmp dl, 0
			je	done

equal:
			cmp r8b, dl
			je increment

done:
			sub r8b, dl
			movsx rax, r8b
			ret