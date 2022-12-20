.section .text
	.global call_proc
proc:
	movl %edi, (%rsi)
	addl %edx, (%rsi)			#*p1 = x1 + x2
	
	movl %edx, (%rcx)
	subl %edi, (%rcx)			#*p2 = x2 - x1
	
	movw %r8w, (%r9)
	addw %dx, (%r9)				#*p3 = x3 + x2
	
	movb 16(%rbp), %al
	movb $3, %r10b
	imulb %r10b
	movb %al, 24(%rbp)			#*p4 = x4 * 3
	ret
	
call_proc:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp 				#allocates 32 bytes for local variables
	
	movl %edi, -8(%rbp)			#stores the parameters in the stack
	movl %esi, -16(%rbp)
	movw %dx, -24(%rbp)
	movb %cl, -32(%rbp)
	leaq -8(%rbp), %rsi			#&x1
	movl -16(%rbp), %edx		#x2
	leaq -16(%rbp), %rcx		#&x2
	movw -24(%rbp), %r8w		#x3
	leaq -24(%rbp), %r9			#&x3
	movb -32(%rbp), %al		
	movb %al, 16(%rbp)			#x4
	leaq -32(%rbp), %rax	
	movq %rax, 24(%rbp)			#&x4
	call proc
	movl -8(%rbp), %eax
	addl -16(%rbp), %eax		#%eax = x1 + x2
	movswl -24(%rbp), %ecx
	movsbl 24(%rbp), %r10d
	subl %r10d, %ecx			#%ecx = x3 - x4
	imull %ecx, %eax			#%eax = (x1 + x2) * (x3 - x4)
	
	movq %rbp, %rsp				#deallocates 32 bytes
	popq %rbp
	ret
