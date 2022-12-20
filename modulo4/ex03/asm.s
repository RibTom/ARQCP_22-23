.section .text
	.global greatest
greatest:
	cmpl %esi, %edi		#compares a with b
		jg a			#if a > b jumps to a
	jmp b				#else jumps to b
		
a:
	movl %edi, %eax		#moves a to %eax
	jmp part2
	
b:
	movl %esi, %eax		#moves b to %eax
	jmp part2
	
part2:
	cmpl %edx, %eax		#compares c with %eax
		jl c			#if c > %eax jumps to c
	jmp part3
	
c:
	movl %edx, %eax		#moves c to %eax
	jmp part3
	
part3:
	cmpl %ecx, %eax		#compares d with %eax
		jl d			#if d > %eax jumps to d
	ret
	
d:
	movl %ecx, %eax		#moves d to %eax
	ret
