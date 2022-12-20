.section .data
.section .text
.global call_incr #int call_incr(short w)

incr:
	movswl (%rdi),%eax
	movsbl %sil,%esi
	addl %eax,%esi
	movw %si,(%rdi)
ret

call_incr:
	pushq %rbp
	movq %rsp,%rbp
	subq $2,%rsp

	addw $3,%di
	movw %di,-2(%rbp)  #saves w in stack in order to call incr with right arguments
	leaq -2(%rbp),%rdi	
	movb $0xC3,%sil		#places  $0xC3 in sil

	call incr		
	movswl -2(%rbp),%edi   	
	addl %edi,%eax
	movq %rbp,%rsp
	popq %rbp
ret
