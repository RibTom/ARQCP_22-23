.section .data
	.global num

.section .text
	.global steps
steps:
	movq num(%rip), %rax		#stores num in %rax
	movq num(%rip), %rsi		#stores num in %rsi for the subtraction later
	movq $3, %rcx				#stores 3 in %rcx for the multiplication and division
	imulq %rcx, %rax			#%rax * 3
	addq $6, %rax				#%rax + 6
	cqo							#convert quad to oct word for the division
	idivq %rcx					#%rax / 3
	addq $12, %rax				#%rax + 12
	subq %rsi, %rax				#%rax - %rsi (original num)
	subq $1, %rax				#%rax - 1
	ret
