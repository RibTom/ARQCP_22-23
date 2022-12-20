.section .data
A:
	.int 10

B:
	.int 2

	.global A, B, n

.section .text
	.global sum
sum:
	movl n(%rip), %esi		#stores n in %esi
	movl $1, %edi			#stores 1 in %edi
	movl A(%rip), %r8d		#stores A in %r8d
	imul %r8d, %r8d			#%r8d = (%r8d)^2
	movl B(%rip), %r9d		#stores B in %r9d
	movl $0, %ecx			#clears %ecx
	jmp loop				#starts the loop
	
loop:
	cmpl %edi, %esi			#if i (%edi) is greater than n jumps to end
		jl end
	movl $0, %eax			#clears %eax
	addl %edi, %eax			#%eax = i (%edx)
	imul %edi, %eax			#%eax = i^2 (%edx * %edx)
	imul %r8d, %eax			#%eax = i^2 * A^2 (%r8d)
	cdq						#converts double to quad word for the division
	idivl %r9d				#%eax = i^2 * A^2 / B (%r9d)
	addl %eax, %ecx			#adds %eax to the current total (%ecx)
	incl %edi				#increments i (%edi)
	jmp loop				#enters the loop again

end:
	movl %ecx, %eax			#moves the total (%ecx) to %eax
	ret
