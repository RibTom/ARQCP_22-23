.section .text
	.global fun3	#short* fun3(structB *s)
fun3:
	leaq 20(%rdi),%rax
ret
