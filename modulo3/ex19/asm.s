.section .data
	.global ptrgrades, num, ptrfreq
	
.section .text
	.global frequencies
frequencies:
	movq ptrgrades(%rip), %rsi		#stores ptrgrades in %rsi
	movq ptrfreq(%rip), %rdi		#stores ptfreq in %rdi
	movl $0, %ecx
	movl $0, %r8d
	jmp clear
	
clear:								#loop to fill freq array with 0
	cmpl $21, %r8d
		je loop
	movl $0, (%rdi)
	addq $4, %rdi
	incl %r8d
	jmp clear
	
loop:
	cmpl %ecx, num(%rip)			#checks if the array ended
		je end
	movq ptrfreq(%rip), %rdx		#moves ptrfreq to %rdx
	movb (%rsi), %al				#moves the grade to %al
	movb $4, %r8b					#stores 4 in %r8b
	mulb %r8b						#multiplies the grade by 4
	movswq %ax, %r8					#moves the result to %r8
	addq %r8, %rdx					#goes to the grade position in the freq array
	incl (%rdx)						#increments that position in the freq array
	incq %rsi						#goes to the next grade
	incl %ecx						#increments counter
	jmp loop
		
end:
	ret
