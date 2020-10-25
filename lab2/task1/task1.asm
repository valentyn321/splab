.386

.model flat, c
PUBLIC _calc

.data
	K EQU 4019h
	Temp1	dd	00h
	Temp2	dd	00h
	
.code
	_calc PROC  
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
ret
		
	_calc endp
end