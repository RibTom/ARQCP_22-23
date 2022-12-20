.section .text
	.global distance
distance:
	movl $0, %eax
	jmp loop
	
loop:					#cycles through the string a
	cmpb $0, (%rdi)
		je end
	cmpb $0, (%rsi)		#checks if the length of b is less than a
		je negative
	movb (%rdi), %dl
	cmpb %dl, (%rsi)	#compares the char from a with the one from b
		jne increment
	incq %rdi
	incq %rsi
	jmp loop	

increment:
	incl %eax
	incq %rdi
	incq %rsi
	jmp loop
		
negative:
	movl $-1, %eax
	ret
		
end:
	cmpb $0, (%rsi)		#checks if the length of b is greater than a
		jne increment
	ret
