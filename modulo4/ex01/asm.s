.section .text
	.global cube
cube:
	movslq %edi, %rdi
	movq %rdi, %rax			#%rax = x
	imulq %rdi, %rax		#%rax = x²
	imulq %rdi, %rax		#%rax = x³
	ret
	
