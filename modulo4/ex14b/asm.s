.section .data
.section .text
.global reset_bit #int reset_bit(int *ptr, int pos)
reset_bit:
	movl (%rdi),%edx
	movl $1,%r8d
	movb %sil,%cl   #places pos in cl
	shll %cl,%r8d	#shifts r8d bits to the left pos times
	shrl %cl,%edx	#shifts edx bits to the rifht pos times
	AND $1,%edx		#changes all bits in edx to 0 except except the first one if its 1
	cmpl $1,%edx	#if edx is now equals 1 then change to 0 and return 1
	je mask
	movl $0,%eax
	jmp end
	
mask:
	XOR %r8d,(%rdi)		#applies xor mask in the bit in (%rdi) in the position pos
	movl $1,%eax
	jmp end
	
end:		
ret
