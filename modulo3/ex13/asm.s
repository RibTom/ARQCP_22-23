.section .data
	.global ptrvec, num
	
.section .text
	.global keep_positives
keep_positives:
	movq ptrvec(%rip), %rax
	movw num(%rip), %dx
	movw $0, %cx				#starts the counter
	jmp loop					#starts loop
	
loop:
	cmpw %cx, %dx				#checks if the array has ended
		je end
	cmpw $0, (%rax)				#checks if the element is negative
		jl negative
	addq $2, %rax				#goes to the next short of the array
	incw %cx					#increments the counter
	jmp loop
	
negative:
	movw %cx, (%rax)			#replaces the short with the index
	addq $2, %rax				#goes to the next short of the array
	incw %cx					#increments the counter
	jmp loop
		
end:
	ret
	
