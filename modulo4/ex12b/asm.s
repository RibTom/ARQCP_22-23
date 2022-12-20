.section .data
.section .text
.global count_bits_one #int count_bits_one(int x)

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
