.section .text
	.global inc_and_square
inc_and_square:
	incl (%rdi)			#increases by 1 the value pointed to by v1
	movl %esi, %eax		#moves v2 to %eax
	imull %esi, %eax	#%eax = v2²
	ret
