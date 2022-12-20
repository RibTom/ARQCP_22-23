.section .data
	.global ptr1
	
.section .text
	.global decrypt
decrypt:
	movq ptr1(%rip), %rdx		#stores the ptr1 in %rax
	movl $0, %eax				#starts the counter
	jmp loop					#starts loop
	
loop:
	cmpb $0, (%rdx)				#checks if the string has ended
		je end
	cmpb $97, (%rdx)			#checks if the char is 'a'
		je next
	cmpb $32, (%rdx)			#checks if the char is '(space)'
		je next
	
	subb $3, (%rdx)				#decreases 3 to the char (ASCII)
	incl %eax					#increments the counter %eax
	jmp next

next:
	incq %rdx					#increments %rdx to go to the next char
	jmp loop

end:
	ret
