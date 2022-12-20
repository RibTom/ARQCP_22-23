.section .text
	.global add_byte
add_byte:
	movl (%rsi), %ecx	#gets the size of vec1
	movl %ecx, (%rdx)
	addq $4, %rsi
	addq $4, %rdx
	jmp loop
	
loop:					#for each element of vec1 adds x to the 1st byte and copys to vec2
	cmpl $0, %ecx
		je end
	movl (%rsi), %r8d
	addb %dil, %r8b
	movl %r8d, (%rdx)
	addq $4, %rsi
	addq $4, %rdx
	decl %ecx
	jmp loop
	
end:
	ret
