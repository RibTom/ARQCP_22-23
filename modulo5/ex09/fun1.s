.section .text
	.global fun1	#short fun1(structB *s)
fun1:
	movw 4(%rdi),%ax
ret
