.section .data
.section .text
.global test_equal #int test_equal(char *a, char *b)

test_equal:
	movl $1,%eax	
jmp loop

loop:
	movb (%rdi),%dl
	cmpb %dl,(%rsi)		#If dl and (rsi) not equal then strings are different
		jne placeZero
	
	incq %rdi
	incq %rsi
	cmpb $0,(%rsi)		#if (rsi) is 0 then end of string, go to check
	je check
	cmpb $0,(%rdi)		#if (rdi) is 0 then end of string, rsi is not 0 due to cmp before so placeZero
	je placeZero

	jmp loop

placeZero:
	movl $0,%eax
	jmp end

check:
	cmpb $0,(%rdi)		#if (rdi) is 0 then both strings have ended, return 1, if not place zero
	je end
	jne placeZero

	
end:

ret

