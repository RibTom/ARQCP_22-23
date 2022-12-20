.section .data
length1:
	.int 2

length2:
	.int 5

height:
	.int 3
	
	.global length1, length2, height

.section .text
	.global getArea
getArea:
	movl length1(%rip),%eax		#stores length1 in %eax
	movl length2(%rip),%edx		#stores length2 in %edx
	addl %edx,%eax				#%eax += %edx
	movl height(%rip),%ecx		#stores height in %ecx
	mull %ecx					#%eax *= %ecx
	movl $2,%esi				#stores 2 in %esi
	divl %esi					#%eax /= 2
	ret
