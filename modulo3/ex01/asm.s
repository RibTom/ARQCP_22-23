.section .data
	.global ptr1
	
.section .text
	.global seven_count

seven_count:
	movq ptr1(%rip), %rdi		#stores the start of the string in %rdi
	movl $0, %eax				#clears %eax
	jmp loop					#starts loop
	
loop:
	movb (%rdi), %cl			#stores the next char of the string in %cl
	cmpb $0, %cl				#checks if the string has ended
		je end
	cmpb $55, %cl				#checks if the char is '7'
		je increment
	incq %rdi					#increments %rdi to go to the next char
	jmp loop
	
increment:
	incl %eax					#increments the counter %eax
	incq %rdi					#increments %rdi to go to the next char
	jmp loop

end:
	ret
