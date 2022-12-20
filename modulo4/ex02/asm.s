.section .data
.section .text
.global sum_n2 #long sum_n2(int n)

sum_n2:
	movslq %edi,%rcx
	movslq %edi,%rdx
	movq $0,%rax
	cmpl $0,%edi		#if n is negative then counter will rdx will be negative, and sum will be plus 1
		jl negativecounter
	jmp loop

loop:
	cmpq $0,%rdx		#counts until no more numbers 
	je end
	imulq %rdx,%rcx		
	jmp sum
	
sum:
	decq %rdx
	addq %rcx,%rax
	movq %rdx, %rcx	#resets rcx
	jmp loop

negativecounter:
	imulq $-1,%rdx
	addq $1,%rax
	jmp loop
end:

ret

