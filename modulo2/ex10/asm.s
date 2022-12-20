.section .data
	.global op1
	.global op2
	.global op3

.section .text
	.global sum3ints
sum3ints:
	movslq op1(%rip), %rax		#stores op1 in the address %rax
	movslq op2(%rip), %rcx		#stores op2 in the address %rcx
	movslq op3(%rip), %rdx		#stores op3 in the address %rdx
	addq %rcx, %rax			#sums op2 to op1 (op1 = op1 + op2)
	addq %rdx, %rax			#sums op3 to op1 (op1 = op1 + op3)
	ret
