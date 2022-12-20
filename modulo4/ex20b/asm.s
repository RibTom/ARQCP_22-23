.section .data
.section .text
.global sum_multiples_x #int sum_multiples_x(char *vec, int x) 
sum_multiples_x:

	sarl $8,%esi		#moves x bits 8 times to the right, placing the second byte first
	movl $0,%r8d 		#counter
	
	movsbw (%rdi),%ax	#places in ax in order to be able to access remainder for divison
	jmp loop
	
loop:
	cmpw $0,%ax	
		je end
	idivb %sil			#divides vec element by x,  remainder will be stored in %ah
	cmpb $0,%ah			#if remainder is 0, then add to sum
		je add
	incq %rdi
	movsbw (%rdi),%ax	#next element of vec
	jmp loop
	
add:
	movsbl (%rdi),%edx
	addl %edx,%r8d		#adds to sum
	incq %rdi
	movsbw (%rdi),%ax
	jmp loop
	
end: 
	movl %r8d,%eax
ret
