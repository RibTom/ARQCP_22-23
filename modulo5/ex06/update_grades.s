.section .text
	.global update_grades
update_grades:
# *s in %rdi , * new_grades in %rsi , size in % edx

addq $4,%rdi   # s- > grades [0]

movq $0,%rcx 			# counter

loop_grades :
	cmpq $5,%rcx 		#5 elements in array grades
		je end
	movl (%rsi,%rcx,4) , %eax 		# place grade to copy on % eax
	movl %eax,(%rdi,%rcx,4) 		# copy grade in %eax to new_grades
	incq %rcx 			
	jmp loop_grades
end:
ret
