addtwo:
	push ebp
	mov ebp,esp
	mov eax,[ebp+8]
	mov ebx,[ebp+12]
	add eax,ebx
	pop ebp
	ret
section .text

global main

main:
	push 4 
	push 1
	call  addtwo
	mov ebx,eax
	mov eax,1
	int 80h



