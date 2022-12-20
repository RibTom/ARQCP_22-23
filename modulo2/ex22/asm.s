.section .data
	.global i, j

.section .text
	.global func, func2, func3, func4
func:
	movl i(%rip), %eax
	cmpl %eax, j(%rip)		#compares i with j
		je a
		jne b
		
a:
	subl j(%rip), %eax		#1st condition
	incl %eax
	ret
	
b:
	addl j(%rip), %eax		#2nd condition
	decl %eax
	ret

func2:
	movl i(%rip), %eax
	movl j(%rip), %ecx
	cmpl %eax, %ecx			#compares i with j
		jl c
		jnl d

c:
	decl %eax				#1st condition
	mull %ecx
	ret
	
d:
	incl %ecx				#2nd condition
	mull %ecx
	ret

func3:
	movl i(%rip), %eax
	cmpl %eax, j(%rip)		#compares i with j
		jle e
		jg g
		
e:
	movl %eax, %ecx			#1st condition
	imull j(%rip), %ecx
	incl %eax
	cdq
	idivl %ecx
	ret
	
g:
	movl %eax, %ecx			#2nd condition
	addl j(%rip), %ecx
	addl j(%rip), %eax
	addl $2, %eax
	cdq
	idivl %ecx
	ret

func4:
	movl i(%rip), %eax
	addl j(%rip), %eax
	cmpl $10, %eax			#compares i with j
		jl h
		jge k
		
h:
	movl $4, %eax			#1st condition
	mull i(%rip)
	mull i(%rip)
	ret
	
k:
	movl j(%rip), %eax		#2nd condition
	mull j(%rip)
	movl $3, %ecx
	cdq
	idivl %ecx
	ret
		
