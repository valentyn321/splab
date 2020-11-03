.386
.model flat, c

.data
const_1 dd 1.0
const_4 dd 4.0
const_21 dd 21.0
const_33 dd 33.0
.code
calc proc
	push ebp
	mov ebp, esp
	finit
	fld dword ptr [ebp+16]
	fcomp dword ptr [ebp+20]
	fstsw ax
	sahf
	jbe next

	; знаменник
	fld dword ptr [ebp+16]
	fdiv qword ptr [ebp+8]
	fld const_1
	fadd st, st(1)
	fadd dword ptr [ebp+20]
	
	; чисельник
	fldlg2
	fld const_21
	fsub qword ptr [ebp+8]
	fyl2x
	fmul dword ptr [ebp+16]
	fdiv const_4
	fdiv st, st(1)
	jmp finish
next:
	; знаменник
	fld dword ptr [ebp+16]
	fdiv dword ptr [ebp+20]
	fld qword ptr [ebp+8]
	fsub st, st(1)
	fsub const_1

	; чисельник
	fldln2
	fld const_33
	fadd dword ptr [ebp+20]
	fyl2x
	fdiv const_4
	fld dword ptr [ebp+16]
	fsub st, st(1)
	fdiv st, st(2)
	jmp finish

finish:
	pop ebp
	ret
calc endp
end
