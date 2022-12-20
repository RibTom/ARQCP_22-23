.section .data
.global ptrvec
.global num
.section .text
.global vec_add_two # void vec_add_two(void)
vec_add_two:
movq ptrvec(%rip), %rax #places ptrvec in rax
movl num(%rip), %edx #places num in edx

cmpl $0,%edx #if edx=0 end of array
je end

loop:
movl (%rax),%ecx #places rax in ecx
addl $2,%ecx
movl %ecx,(%rax) #place ecx in (rdx)

subl $1,%edx  #subtract 1 from edx

addq $4,%rax #passes to next element in array

cmpl $0,%edx #if edx=0 end of array
je end

jmp loop

end:
ret
