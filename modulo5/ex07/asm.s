.section .text
	.global fill_s1	#void fill_s1(s1 *s, int vi, char vc, int vj, char vd)
fill_s1:
	movb %dl,0(%rdi)	#s1 -> char c	
	movl %esi,4(%rdi)	#s1 -> int i
	movb %r8b,8(%rdi)	#s1 -> char d
	movl %ecx,12(%rdi)	#s1 -> int j
ret
