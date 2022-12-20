.section .data
.section .text
.global join_bits #int join_bits(int a, int b, int pos)
join_bits:

	movl $4294967295,%ecx	#number that is only 1's in bits
	movl $0,%r8d			#number that is only 0's in bits
	addl $1,%edx			#pos+1
	jmp loop
	
loop:

	cmp $0,%edx			#when edx=0, 1's and 0's filled until position +1 
	je end
	
	decl %edx
	
	shll $1,%ecx		#places 0's in first half of ecx
	
	shll $1,%r8d		#places 1's in first half of y
	or $1,%r8d
	

	jmp loop
	
end:		
	and %ecx,%esi		#applies mask to latter half of b
	
	and %r8d,%edi		#applies mask to first half of a
	
	or %edi,%esi		#joins a and b
	movl %esi,%eax
ret
