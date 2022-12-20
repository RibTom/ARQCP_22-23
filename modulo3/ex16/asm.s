.section .data
.global ptr1
.global ptr2
.global num
.section .text
.global swap #void swap()

swap:
movq ptr1(%rip),%rdx  #places ptr1 in rdx
movq ptr2(%rip),%rsi  #places ptr2 in rsi
movl num(%rip),%r8d  #places num in r8d
jmp loop    

loop:
cmpl $0,%r8d  #if r8d=0 then no more array elements
je end

movb (%rdx),%cl   #places rdx contents in cl
movb (%rsi),%dil  #places rsi contents in dil
movb %dil,(%rdx)  #places dil in rdx
movb %cl,(%rsi)  #places cl in rsi

incq %rdx   #moves to next array element
incq %rsi   #moves to next array element
decl %r8d   #subtracts 1 from r8d until it reaches 0

jmp loop

end:

ret

