.section .text
	.global fun4	#short fun4(structB *s)
fun4:
	movq 8(%rdi),%rcx
	movw 4(%rcx),%ax
ret
