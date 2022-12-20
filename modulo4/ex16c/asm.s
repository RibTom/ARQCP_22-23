.section .data
.section .text
.global mixed_sum #int mixed_sum(int a, int b, int pos)
mixed_sum:
	pushq %rbp
	movq %rsp, %rbp
	subq $12, %rsp
	
	movl %edi,-4(%rbp)		#saves a,b and pos values
	movl %esi,-8(%rbp)		#...
	movl %edx,-12(%rbp)		#...
	
	call join_bits
	
	movl -4(%rbp),%esi		#switches esi with edi, b with a
	movl -8(%rbp),%edi
	movl -12(%rbp),%edx

	movl $0,%r9d
	movl %eax,%r9d		#places join_bits(a,b,pos) result in r9d
	
	pushq %r9	
	call join_bits		#calls join_bits(b,a,pos)
	popq %r9
		
	addl %r9d,%eax		#adds join_bits(a,b,pos) and join_bits(b,a,pos)
	
	movq %rbp, %rsp				#deallocates 12 bytes
	popq %rbp
	jmp end


join_bits:
	movl $4294967295,%ecx	#number that is only 1's in bits
	movl $0,%r8d			#number that is only 0's in bits
	addl $1,%edx			#pos+1
	jmp loop
	
loop:

	cmp $0,%edx			#when edx=0, 1's and 0's filled until position +1 
	je finish
	
	decl %edx
	
	shll $1,%ecx		#places 0's in first half of ecx
	
	shll $1,%r8d		#places 1's in first half of y
	or $1,%r8d
	

	jmp loop
	
finish:		
	and %ecx,%esi		#applies mask to latter half of b
	
	and %r8d,%edi		#applies mask to first half of a
	
	or %edi,%esi		#joins a and b
	movl %esi,%eax
	jmp end

end:
ret
