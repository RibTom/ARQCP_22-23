.section .data
.global ptr1
.section .text
.global encrypt # int encrypt(void)
encrypt:
movq ptr1(%rip), %rdx #places ptr1 in rdx
movl $0,%eax #places 0 in eax

loop:
movb (%rdx),%ch #places (%rdx) in ch
 
cmpb $0,%ch #if ch=0 then end of string
je end

cmpb $97,%ch #if ch=97 (a) then dont switch and loop again
je next

cmpb $32,%ch #if ch=32 then dont switch and loop again
je next

addb $3,%ch #adds 3 to ch
movb %ch,(%rdx) #places ch in (%rdx)

incq %rdx #goes to next char
addl $1,%eax #adds 1 to counter eax
jmp loop

next:
incq %rdx #goes to next char	
jmp loop

end:

ret
