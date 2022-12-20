.section .data
	.global ptrdest, num, ptrsrc
	
.section .text
	.global sort_without_reps

sort_without_reps:
	movq ptrsrc(%rip), %r10		#places ptrvec in %r10
	movq ptrdest(%rip), %r11		#places ptrdest in %r11
	movl num(%rip), %edi		#places num in %edi
	movl $0,%esi		#places 0 in %esi
	movl $0,%eax  		#places 0 in eax counter
	jmp loop3

loop3:
	cmpl $0,%edi		#if edi=0 no more reps, go to sort
	je array_sort
	movw (%r10),%cx		#places %r10 contents in %cx
	jmp loop4

loop4:	
	movw (%r11),%dx		#places %r11 contents in %dx
	cmpl %eax,%esi		#compares eax to esi, if equal then add to destarray
	je add
	cmpw %cx,%dx		#compares cx to dx, if equal, dont add to destarray
	je change
	addq $2,%r11		#goes to next short
	incl %esi		#adds 1 to counter esi
	jmp loop4

change:
	movl $0,%esi		#places 0 in %esi
	movq ptrdest(%rip), %r11		#places ptrdest in %r11, reseting it
	addq $2,%r10		#goes to next short
	decl %edi		#subtracts 1 from counter edi
	jmp loop3

add:
	movw %cx,(%r11)		#places cx in %r11 contents
	incl %eax		#adds 1 to counter eax
	jmp change

array_sort:						#selection sort
	movq ptrdest(%rip), %r10		#places ptrvec in %r10
	movl num(%rip), %ecx		#stores num in %ecx
	subl $1, %ecx				#%ecx-1
	movl $0, %edx				#stores 0 in %edx
	jmp loop					#starts loop
	
loop:
	cmpl %ecx, %edx				#checks if the array has ended
		jge end
	movq %r10, %rsi				#moves %r10 to %rsi
	addq $2, %rsi				#increments %rsi to go to the next short
	movl %edx, %edi				#moves %edx to %edi
	incl %edi					#increments the counter %edi
	jmp loop2
	
loop2:
	cmpl %edi, num(%rip)		#checks if the array has ended
		je next
	movw (%r10), %r8w			#moves the short in %raw to %r8w
	cmpw %r8w, (%rsi)			#compares the 2 shorts
		jl swapl
	addq $2, %rsi				#increments %rsi to go to the next short
	incl %edi					#increments the counter %edi
	jmp loop2

swapl:
	movw (%rsi), %r9w			#swaps the 2 shorts
	movw %r9w, (%r10)			#...
	movw %r8w, (%rsi)			#...
	addq $2, %rsi				#increments %rsi to go to the next short
	incl %edi					#increments the counter %edi
	jmp loop2
		
next:
	addq $2, %r10				#increments %rsi to go to the next short
	incl %edx					#increments the counter %edx	
	jmp loop
		
end:
	ret
