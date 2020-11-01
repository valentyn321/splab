.386
.model flat, c
option casemap: none
.data
K dd 4019h
.code
; X = A2*B2+A2*C2-D2/E1+k ;K = 4019h
calc proc
	push ebp
	mov ebp, esp
	finit

	fld qword ptr [ebp+32]
	fdiv dword ptr [ebp+40]

	fld qword ptr [ebp+8]
	fmul qword ptr [ebp+24]
	
	fld qword ptr [ebp+8]
	fmul qword ptr [ebp+16]
	fild K
	fadd st, st(1)
	fadd st, st(2)
	fsub st, st(3)

	pop ebp
	ret
calc endp
End
