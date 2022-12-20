.section .data
	.global ptrvec, num
	
.section .text
	.global array_sort
array_sort:						#selection sort
	movq ptrvec(%rip), %rax		#stores ptrvec in %rax
	movl num(%rip), %ecx		#stores num in %ecx
	subl $1, %ecx				#%ecx-1
	movl $0, %edx				#stores 0 in %edx
	jmp loop					#starts loop
	
loop:
	cmpl %ecx, %edx				#checks if the array has ended
		jge end
	movq %rax, %rsi				#moves %rax to %rsi
	addq $2, %rsi				#increments %rsi to go to the next short
	movl %edx, %edi				#moves %edx to %edi
	incl %edi					#increments the counter %edi
	jmp loop2
	
loop2:
	cmpl %edi, num(%rip)		#checks if the array has ended
		je next
	movw (%rax), %r8w			#moves the short in %raw to %r8w
	cmpw %r8w, (%rsi)			#compares the 2 shorts
		jg swapl
	addq $2, %rsi				#increments %rsi to go to the next short
	incl %edi					#increments the counter %edi
	jmp loop2

swapl:
	movw (%rsi), %r9w			#swaps the 2 shorts
	movw %r9w, (%rax)			#...
	movw %r8w, (%rsi)			#...
	addq $2, %rsi				#increments %rsi to go to the next short
	incl %edi					#increments the counter %edi
	jmp loop2
		
next:
	addq $2, %rax				#increments %rsi to go to the next short
	incl %edx					#increments the counter %edx	
	jmp loop
		
end:
	ret
