.section .text
	.global locate_greater
locate_greater:
	movq $0, %rax
	movq $1, %rcx					#initializes %rcx as 1 byte so that the loop goes through the 5 Student grades
	jmp loop

loop:
	cmpq $6, %rcx
		je end
	movl (%rdi, %rcx, 4), %r8d		#%r8d = *(%rdi + (%rcx * 4))
	cmpl %esi, %r8d					#compares the grade with minimum
		jg greater
	incq %rcx
	jmp loop

greater:							#if the grade is greater moves the grade to the greater_grades array
	movl %r8d, (%rdx, %rax, 4)		#*(%rdx + (%rax * 4)) = %r8d
	incq %rax
	incq %rcx
	jmp loop
	
end:
	ret
