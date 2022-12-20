.section .data
.section .text
.global changes #void changes(int *ptr)
changes:
	movl (%rdi),%esi
	
	movl $255,%r8d	#00000000000000000000000011111111
	movl $16711680,%edx	#00000000111111110000000000000000
	
	sarl $8,%esi
	
	andl %r8d,%esi
	
	cmpl $15,%esi
	jg change
	
	jmp end

change:
	xorl %edx,(%rdi)
	jmp end

end:
ret
