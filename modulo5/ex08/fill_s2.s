.section .text
	.global fill_s2
fill_s2:
	movq $0, %r8
	jmp c

c:								#copies vc to s2.c char by char
	cmpq $3, %r8
		je next
	movb (%rcx, %r8, 1), %al
	movb %al, (%rdi, %r8, 1)
	incq %r8
	jmp c

next:
	addq $4, %rdi				#s->w (offsets the pointer to w)
	movq $0, %r8
	jmp w

w:								#copies vw to s2.w short by short
	cmpq $3, %r8
		je end
	movw (%rsi, %r8, 2), %ax
	movw %ax, (%rdi, %r8, 2)
	incq %r8
	jmp w
	
end:
	addq $8, %rdi				#s->j (offsets the pointer to j)
	movl %edx, (%rdi)			#copies vj to s2.j
	ret
