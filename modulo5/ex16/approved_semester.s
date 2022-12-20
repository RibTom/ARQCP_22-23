.section .text
	.global approved_semester
approved_semester:
	movl $0, %eax				#starts the counter of approved semesters
	movswq (%rdi), %rsi
	decq %rsi
	movq 8(%rdi), %rdx			#stores the pointer to the shorts with the student's grades on %rdx
	jmp loop

loop:
	cmpq $0, %rsi				#checks if there are students left
		jl end
	movw (%rdx, %rsi, 2), %cx	#moves the first short to %cx
	movl $0, %r8d				#starts the counter of approved modules for a student
	jmp loop2
	
loop2:
	cmpw $0, %cx				#checks if there are approved modules left
		je next
	movw %cx, %r9w
	andw $1, %r9w				#gets the first bit of the short
	cmpw $1, %r9w				#checks if the module was approved (bit=1)
		je increase
	shrw %cx					#shifts right to go to the next module
	jmp loop2
	
next:
	decq %rsi					#goes to the next student grades
	jmp loop
	
next2:
	incl %eax					#increases the counter of approved semesters
	jmp next
	
increase:
	cmpl $9, %r8d				#checks if the student has 10 approved semesters
		je next2
	incl %r8d					#increases the counter of approved modules
	shrw %cx					#shifts right to go to the next module
	jmp loop2
	
end:
	ret
