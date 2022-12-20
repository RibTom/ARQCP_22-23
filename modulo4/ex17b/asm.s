.section .text
	.global greater_date
greater_date:
	movl $0, %r9d
	movl $16776960, %edx		#mask that "deactivates" all the bits except the year part
	jmp compare
	
compare:
	incl %r9d
	movl %edi, %ecx
	movl %esi, %r8d
	andl %edx, %ecx
	andl %edx, %r8d
	cmpl %ecx, %r8d				#compares the dates using the mask
		ja date2greater
		jb date1greater
	cmpl $2, %r9d				#checks the number of times the dates have been compared
		je mask3
		jb mask2
		ja date2greater
		
mask2:
	movl $255, %edx				#mask that "deactivates" all the bits except the month part
	jmp compare

mask3:
	movl $4278190080, %edx		#mask that "deactivates" all the bits except the day part
	jmp compare
		
date2greater:
	movl %esi, %eax
	ret
	
date1greater:
	movl %edi, %eax
	ret
