.section .data
.section .text
.global vec_count_bits_one  #int vec_count_bits_one(short *ptr, int num)

vec_count_bits_one:
	movl $0,%r8d
	jmp loop2

loop2:
	cmpl $0,%esi	#no more nums
	je finish
	pushq %rdi		#saves short array pointer
	movzwl (%rdi),%edi
	
	pushq %rsi
	pushq %r8
	
	call count_bits_one
	
	popq %r8
	popq %rsi
	popq %rdi
	
	subl $1, %esi 	#counter
	addl %eax,%r8d		#active bit counter
	addq $2,%rdi
	jmp loop2
	
finish:	
	movl %r8d,%eax
	jmp end
	
count_bits_one:
	movl $0,%ecx
	movl $0,%eax
	movl %edi,%esi
	jmp loop

loop:
	cmpl $32,%ecx		#counts til it cycles through all bits
		je end
	AND $1,%esi			#applies mask 1 with and to x
	cmpl $1,%esi		#checks if x is now 1, first bit 1, rest 0
		je add
	shrl %edi			#shifts x 1 bit to the right
	movl %edi,%esi		#resets esi
	addl $1, %ecx
	jmp loop

add:
	incl %eax		
	incl %ecx
	shrl %edi
	movl %edi,%esi
	jmp loop
end:		
ret
