.section .data
	.global num

.section .text
	.global check_num
check_num:
	movl num(%rip), %eax		#stores num in %eax
	movb $4, %cl				#stores 4 in %cl
	cmpl $0, %eax				#compares num with 0
		jge increment2			#if num is positive or 0 jumps to increment2
		jl odd_even				#if num is negative jumps to odd_even

increment2:
	addb $2, %cl				#adds 2 to %cl (4+2=6)

odd_even:
	cdq							#converts double to quad word for the division
	movl $2, %edi				#stores 2 in %edi
	idivl %edi					#divides num by 2
	cmpl $0, %edx				#compares the rest of the division
		jne increment			#if the rest is different from 0 jumps to increment
		jmp end					#if the rest is 0 jumps to end
	
increment:
	incb %cl					#%cl += 1
		
end:
	movb %cl, %al				#moves %cl to %al
	ret
