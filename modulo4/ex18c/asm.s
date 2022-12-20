.section .data
.section .text
.global changes_vec #void changes_vec(int *ptrvec, int num)

changes_vec:
	jmp loop

loop:
	cmpl $0,%esi
	je end
	
	pushq %rsi
	
	call changes

	popq %rsi
	
	addq $4,%rdi
	decl %esi
	jmp loop

changes:
	movl (%rdi),%esi
	
	movl $255,%r8d		#00000000000000000000000011111111
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
