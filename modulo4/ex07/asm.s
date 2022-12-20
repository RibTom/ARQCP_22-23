.section .text
	.global count_odd
count_odd:
	movl $0, %r9d			#clears odd counter
	movl $0, %ecx			#clears loop counter
	jmp loop
	
loop:
	cmpl %ecx, %esi			#checks if the vector ended
		je end
	movsbw (%rdi), %ax
	movb $2, %r8b
	idiv %r8b				#divides the vector number by 2
	cmpb $0, %ah			#checks if the number is odd
		jne odd
	incq %rdi
	incl %ecx
	jmp loop

odd:
	inc %r9d				#increments the odd counter
	incq %rdi
	incl %ecx
	jmp loop

end:
	movl %r9d, %eax			#moves the result to %eax
	ret
