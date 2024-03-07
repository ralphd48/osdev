section .data
	pathname dd "/home/ralph/osdev/c.s"
section .text
global main

main:
	mov eax,5
	mov ebx,pathname
	mov ecx,0
	int 80h



            

