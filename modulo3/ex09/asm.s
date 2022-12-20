.section .data
	.global ptrvec, num, x
	
.section .text
	.global vec_search
vec_search:
	movq ptrvec(%rip), %rax
	movl num(%rip), %edx
	movw x(%rip), %si
	movl $0, %ecx				#starts the counter
	jmp loop					#starts the loop
	
loop:
	cmpl %ecx, %edx				#checks if the array has ended
		je end0
	cmpw (%rax), %si			#checks if the short is equal to x
		je end
	incl %ecx					#increments the counter
	addq $2, %rax				#goes to the next short of the array
	jmp loop
		
end:
	ret
		
end0:
	movl $0, %eax				#returns 0
	ret
