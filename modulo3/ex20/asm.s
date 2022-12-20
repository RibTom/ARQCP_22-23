.section .data
.global ptrvec
.global num
.section .text
.global count_max #int count_max(void)

count_max:
movq ptrvec(%rip),%r8  #places ptr1 in rdx
addq $4,ptrvec(%rip)  #moves to next array element
movq ptrvec(%rip),%r9  #places ptr1 in rdx
addq $4,ptrvec(%rip)  #moves to next array element
movq ptrvec(%rip),%r10  #places ptr1 in rdx
movl num(%rip),%ecx  #places num in ecx
movl $0,%eax
jmp loop

loop:
cmpl $0,%ecx  #if ecx=0 then no more elentes in array
je end

movl (%r8),%edi   #places r8 contents in edi
movl (%r9),%r11d   #places r9 contents in r11d
movl (%r10),%esi   #places r10 contents in esi
cmpl %edi,%r11d  #if edi <r11d 
jl next

addq $4,%r8  #moves to next array element
addq $4,%r9  #moves to next array element
addq $4,%r10  #moves to next array element
decl %ecx  #subtracts 1 from ecx until it reaches 0
jmp loop

next:
cmpl %r11d,%esi	 #if r11d>esi
jg next2

addq $4,%r8  #moves to next array element
addq $4,%r9  #moves to next array element
addq $4,%r10  #moves to next array element
decl %ecx  #subtracts 1 from ecx until it reaches 0
jmp loop

next2:
addl $1,%eax  #adds 1 to counter eax
addq $4,%r8  #moves to next array element
addq $4,%r9  #moves to next array element
addq $4,%r10  #moves to next array element
decl %ecx  #subtracts 1 from ecx until it reaches 0
jmp loop

end:

ret

