.386
.model flat, c

printf proto arg1:ptr byte, printlist: vararg

.data
	K equ 4019h
	Temp1 dd 0
	Temp2 dd 0
	Msg db 'Result is: %d', 0
.code
calc proc
	push ebp
		mov ebp,esp
		xor eax,eax
		xor ebx,ebx
		xor ecx,ecx
		xor edx,edx
		mov eax,[ebp+12]
		mov bx, 2
		idiv bx
		mov Temp1,eax
		mov eax,[ebp+16]
		mov bx, 4
		imul bx
		sub eax, Temp1
		add eax, [ebp+8]
		add eax, K
		pop ebp
	invoke printf, addr Msg, eax
	ret
calc endp
end
