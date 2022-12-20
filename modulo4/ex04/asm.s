.section .data
.section .text
.global sum_smaller #int sum_smaller(int num1, int num2, int *smaller)

sum_smaller:
	cmpl %edi,%esi  #if esi smaller then edi, place esi in *smaller
		jl placeptr

	movl %edi,(%rdx) #places edi in *smaller
	addl %edi,%esi
	movl %esi,%eax
jmp end

placeptr:
	movl %esi,(%rdx) #places edi in *smaller
	addl %edi,%esi
	movl %esi,%eax
jmp end

end:

ret

