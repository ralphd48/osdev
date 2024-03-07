extern printf
extern exit

section .data
	msg dd "Hello World!",0
	msg2 dd "This a test",0
	fmt db "outout is %s %s",10,0

section .text

global main

main:
	push msg2
	push msg
	push fmt
	call printf
	push 1
	call exit


