.section .text
	.global activate_bits
activate_bits:
	movl %edi, %eax
	incl %esi
	movl $0, %ecx
	movl $0, %edi
	jmp loop
	
loop:					#creates a mask fully "activated" but the bits to the left of left
	cmpl %esi, %ecx
		je a
	shll %edi
	incl %edi
	incl %ecx
	jmp loop
	
a:
	notl %edi			#inverts the maskL so that only the bits to the left of left are "activated"
	orl %edi, %eax		#applys the mask to a
	movl $0, %edi
	movl $0, %ecx
	jmp loop2
	
loop2:					#creates a mask with only the bits to the right of right "activated"
	cmpl %edx, %ecx
		je end
	shll %edi
	incl %edi
	incl %ecx
	jmp loop2

end:
	orl %edi, %eax		#applys the mask to a
	ret
