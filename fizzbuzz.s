.intel_syntax noprefix
.global main

main:
	mov rcx,0x1

loop:
	mov rdx,0x0
	mov rax,rcx
	mov r10,0x3
	div r10
	cmp rdx,0x0
	jne skipfizz

	push rcx
	mov rdx,0x4
	lea rsi,[fizz]
	mov rdi,0x1
	mov rax,0x1
	syscall
	pop rcx

skipfizz:
	mov rdx,0x0
	mov rax,rcx
	mov r10,0x5
	div r10
	cmp rdx,0x0
	jne skipbuzz

	push rcx
	mov rdx,0x4
	lea rsi,[buzz]
	mov rdi,0x1
	mov rax,0x1
	syscall
	pop rcx

skipbuzz:
	push rcx
	mov rdx,0x1
	lea rsi,[newline]
	mov rdi,0x1
	mov rax,0x1
	syscall
	pop rcx
	
	inc rcx
	cmp rcx,0x20
	jne loop
	
exit:
	mov rdi,0x0
	mov rax,0x3c
	syscall


fizz:
	.ascii "fizz"

buzz:
	.ascii "buzz"

newline:
	.ascii "\n"
