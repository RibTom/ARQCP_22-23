.section .text
	.global fun2	#short fun2(structB *s)
fun2:
	movw 20(%rdi),%ax
ret
