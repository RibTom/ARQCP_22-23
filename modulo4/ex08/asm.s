.section .data
.section .text
.global calc #int calc(int a, int * b, int c)

calc:
	imull $2,%edi		#a*2
	subl (%rsi),%edi	#a*2-(*b)   edi=z
	subl $4,%edx		#c-4
	imull %edx,%edi		#(c-4)*z
	movl %edi,%eax

ret

