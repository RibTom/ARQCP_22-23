.section .data
	.global ptrvec, num
	
.section .text
	.global vec_greater10
vec_greater10:
	movq ptrvec(%rip), %rdx
	movl num(%rip), %esi
	movl $0, %ecx				#starts the counter
	movl $0, %eax				#clears %eax
	jmp loop					#starts loop
	
loop:
	cmpl %esi, %ecx				#checks if the array has ended
		je end
	cmpl $10, (%rdx)			#checks if the element is greater than 10
		jg greater10
	incl %ecx					#increments %ecx
	addq $4, %rdx				#increments %rdi to go to the next char
	jmp loop
	
greater10:
	incl %eax					#increments %eax
	incl %ecx					#increments %ecx
	addq $4, %rdx				#goes to the next int of the array
	jmp loop

end:
	ret
