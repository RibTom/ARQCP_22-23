.section .data
	.global A
	.global B
	
.section .text
	.global isMultiple
isMultiple:
    movl A(%rip), %eax		#stores A in %eax
    movl B(%rip), %ecx		#stores B in %ecx
    cltd					#convert long in %eax to double long in %edx:%eax
    cmpl $0, %ecx			#compares B with 0
		je zero				#if B is 0 jump to zero
    idivl %ecx				#divide A by B
    cmpl $0, %edx			#compares the remaining of the division
		je one				#if the remaining is 0 jump to one
		jne zero			#if the remaining is different from 0 jump to zero
zero:
	movl $0, %eax			#return 0
	ret
one:
	movl $1, %eax			#return 1
	ret
