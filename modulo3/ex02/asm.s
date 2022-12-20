.section .data
.global ptr1
.global ptr2
.section .text
.global str_copy_porto #void str_copy_porto(void)
str_copy_porto:
movq ptr1(%rip), %rax #places ptr1 in rax
movq ptr2(%rip), %rdx #places ptr2 in rdx

loop:
movb (%rax),%ch #places rax in ch
movb %ch,(%rdx) #places ch in (rdx)

cmpb $0,%ch #if ch=0 end of string
je end

cmpb $111,%ch #if ch 111=ascii for "o" then change to "u"
je to_u

movb %ch,(%rdx) #places ch in (rdx)
incq %rax #moves to next char in string
incq %rdx #moves to next char in string
jmp loop

to_u:
movb $117,%ch #places "u" in ch
jmp advance

advance:
movb %ch,(%rdx) #places ch in (rdx)
incq %rax #moves to next char in string
incq %rdx #moves to next char in string
jmp loop

end:
ret
