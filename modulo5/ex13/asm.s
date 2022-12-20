.section .text
	.global count_odd_matrix	#int count_odd_matrix(int **m, int y, int k)
count_odd_matrix:
	movslq %esi,%rsi	#number of lines
	movslq %edx,%rdx	#number of columns
	movq $0,%rcx		#lines counter
	movq $0,%r8			#columns counter
	movl $0,%eax		#odd number counter
	jmp loop

loop:
	cmpq %rsi,%rcx		#passes through all lines
		je end
	movq (%rdi,%rcx,8),%r9 	#address of line y
	incq %rcx
	jmp loop2

loop2:
	cmpq %rdx,%r8
		je intermediate
	movl (%r9,%r8,4),%r10d
	andl $1,%r10d		#every odd numbers least significant bit is 1, applies 1 and mask
	cmpl $1,%r10d		#if least significant bit turns to 0 then r10d is even, if it turns to 1 its odd
		je add
	incq %r8
	jmp loop2

add:
	addl $1,%eax
	incq %r8
	jmp loop2
	
intermediate:
	movq $0,%r8		#reset columns counter before entering loop, and then loop2
	jmp loop
	
end:
ret
