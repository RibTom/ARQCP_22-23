.section .data
.global ptr1
.global ptr2
.global ptr3
.section .text
.global str_cat #void str_cat(void)

str_cat:
movq ptr3(%rip),%rax	#places ptr3 in rax
movq ptr1(%rip),%r8	#places ptr1 in r8
movl $0,%edx		#places 0 edx
jmp loop


loop:
movb (%r8),%cl	 #places r8 contents in cl
movb %cl,(%rax)	   #places cl rax contents
cmpb $0,(%r8)	#compares r8 contents to 0
je switch

incq %r8	#moves to next char in string
incq %rax	#moves to next char in string
jmp loop

switch:
cmpl $1,%edx	#compares edx to 1
je end

addl $1,%edx	#adds 1 to edx
movq ptr2(%rip),%r8	#places r8 contents in r9
jmp loop

end:

ret

