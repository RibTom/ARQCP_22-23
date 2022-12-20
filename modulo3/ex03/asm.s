.section .data
	.global ptr1, ptr2
	
.section .text
	.global str_copy_porto2
str_copy_porto2:
	movq ptr1(%rip), %rax		#stores the ptr1 in %rax
	movq ptr2(%rip), %rdx		#stores the ptr2 in %rdx
	jmp loop					#starts loop
	
loop:
	movb (%rax), %cl			#stores the next char of the string1 in %cl
	movb %cl, (%rdx)			#copies the char in string1 to string2
	cmpb $0, %cl				#checks if the string has ended
		je end
	cmpb $79, %cl				#checks if the char is 'O'
		je swapc
	cmpb $111, %cl				#checks if the char is 'o'
		je swapc
	jmp increment
	
swapc:
	addb $6, (%rdx)				#adds 6 to the char ASCII
	jmp increment

increment:
	incq %rax					#increments %rax to go to the next char
	incq %rdx					#increments %rdx to go to the next char
	jmp loop

end:
	ret
