.section .data
	.global ptrvec, num
	
.section .text
	.global vec_sum, vec_avg
vec_sum:
	movq ptrvec(%rip), %rdx		#stores the start of the string in %rdx
	movswq num(%rip), %rsi		#stores num in %rsi
	movq $0, %rcx				#starts the counter
	movq $0, %rax				#clears %eax
	jmp loop					#starts loop

loop:
	cmpq %rcx, %rsi				#checks if the array has ended
		je end
	addq (%rdx), %rax			#adds the element to the sum
	addq $8, %rdx				#increments %rdx to go to the next element
	incq %rcx					#increments the counter %rcx
	jmp loop
	
end:
	ret

vec_avg:
	call vec_sum				#calls vec_sum to get the sum
	cmp $0, %rsi				#checks if num is 0
		je zero
	cqo							#converts quad to oct word for the division
	idivq %rsi					#average = sum / num
	ret
	
zero:
	movq $0, %rax				#returns 0
	ret
