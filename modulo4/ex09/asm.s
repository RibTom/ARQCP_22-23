.section .text
	.global calculate
calculate:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp			#allocates 16 bytes for local variables
	
	movl %edi, %eax
	subl %esi, %eax			#%eax = a - b
	movl %eax, -8(%rbp)		#stores a - b in the stack
	movl %edi, %eax
	imull %esi, %eax		#%eax = a * b
	movl %eax, -16(%rbp)	#stores a * b in the stack
	movl %esi, %edx			#moves b to the 3rd parameter of print_result
	movl %edi, %esi			#moves a to the 2nd parameter of print_result
	pushq %rsi
	pushq %rdx
	movb $'*', %dil			#moves '*' to the 1st parameter of print_result
	movl -16(%rbp), %ecx	#moves the product to the 4th parameter of print_result
	call print_result
	popq %rdx
	popq %rsi
	movb $'-', %dil			#moves '-' to the 1st parameter of print_result
	movl -8(%rbp), %ecx		#moves the difference to the 4th parameter of print_result
	call print_result
	movl -8(%rbp), %eax
	subl -16(%rbp), %eax	#%eax = (a - b) - (a * b)
	
	movq %rbp, %rsp			#deallocates 16 bytes
	popq %rbp
	ret
