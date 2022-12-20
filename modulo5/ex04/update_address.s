.section .text
	.global update_address
update_address:
	addq $84, %rdi				#s->address
	movq $0, %rdx
	jmp loop

loop:							#copies the new address to the old char by char
	movb (%rsi, %rdx, 1), %al
	cmpb $0, %al
		je end
	movb %al, (%rdi, %rdx, 1)
	incq %rdx
	jmp loop
	
end:
	movb $0, (%rdi, %rdx, 1)	#puts a null value after the string to indicate its end
	ret
