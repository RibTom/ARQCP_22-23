.section .text
	.global update_address
update_address:
	addq $84, %rdi		#s->address
	jmp loop

loop:
	cmpb $0, (%rsi)		#copies the new address to the old char by char
		je end
	movb (%rsi), %al
	movb %al, (%rdi)
	incq %rsi
	incq %rdi
	jmp loop
	
clear:
	movb $0, (%rdi)		#clears old address char
	incq %rdi
	jmp end
	
end:
	cmpb $0, (%rdi)		#checks if there are still chars from the old address
		jne clear
	ret
