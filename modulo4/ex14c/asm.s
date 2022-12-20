.section .data
.section .text
.global reset_2bits #void reset_2bits(int *ptr, int pos)
reset_2bits:
	movl (%rdi),%edx
	movl $1,%r8d
	movb %sil,%cl   #places pos in cl
		
	shll %cl,%r8d	#shifts r8d bits to the left pos times
	shrl %cl,%edx	#shifts edx bits to the rifht pos times
	AND $1,%edx		#changes all bits in edx to 0 except except the first one if its 1
	cmpl $1,%edx	#if edx is now equals 1 then change to 0 and return 1
	je mask
	
	jmp mask2
	
mask:
	XOR %r8d,(%rdi)		#applies xor mask in the bit in (%rdi) in the position pos
	jmp mask2
	
mask2:
	movl $31,%eax
	movsbl %cl,%ecx
	subl %ecx,%eax
	movb %al,%cl
	
	movl (%rdi),%edx
	movl $1,%r8d
	shll %cl,%r8d	#shifts r8d bits to the left pos times
	shrl %cl,%edx	#shifts edx bits to the rifht pos times
	AND $1,%edx		#changes all bits in edx to 0 except except the first one if its 1
	cmpl $1,%edx	#if edx is now equals 1 then change to 0 and return 1
	je mask3
	jmp end

mask3:
	XOR %r8d,(%rdi)		#applies xor mask in the bit in (%rdi) in the position pos
	jmp end
	
end:		
ret
