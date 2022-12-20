.section .data
	.global ptrvec, num
	
.section .text
	.global sum_first_byte
sum_first_byte:
	movq ptrvec(%rip), %rdx
	movl num(%rip), %esi
	movl $0, %ecx				#starts the counter
	movl $0, %eax				#clears %eax
	jmp loop					#starts loop

loop:
	cmpl %ecx, %esi				#checks if the array has ended
		je end
	movsbl (%rdx), %edi			#moves the first byte to %edi
	addl %edi, %eax				#adds the first byte to the sum
	addq $8, %rdx				#goes to the next long of the array
	incl %ecx					#increments the counter
	jmp loop
	
end:
	ret
