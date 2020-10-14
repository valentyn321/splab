
.586
.model flat, stdcall
option casemap: none

include masm32\include\windows.inc
include masm32\include\kernel32.inc
include masm32\include\masm32.inc
include masm32\include\debug.inc
include masm32\include\user32.inc

includelib masm32\lib\kernel32.lib
includelib masm32\lib\masm32.lib
includelib masm32\lib\debug.lib
includelib masm32\lib\user32.lib


.data
Arr dd 1,2,3,4,5
c_parametr dd 1
d_parametr dd 6
L dd 3
result dd 0

.code
start:
    
mov ecx,6
mov eax,1

mov ebx, 6
sub ebx, L
mov result, ebx

chck:
dec ecx
mov ebx,[Arr+ecx*4-4]
cmp ebx, c_parametr
jle decrement
cmp ebx, d_parametr
jge decrement
mul ebx
cmp ecx,result
jne chck

decrement:
    cmp ecx,result
    je xt
    dec result
    jmp chck

xt:
PrintDec eax,"Dobutok of last L numbers"
invoke ExitProcess,NULL
end start