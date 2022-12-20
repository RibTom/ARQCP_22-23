.section .data
.global even
.global num
.global ptrvec
.section .text
.global test_even #long test_even(void)
.global vec_sum_even #long vec_sum_even(void)

test_even:
movq even(%rip), %rax #places even in rax
cqo	#converts quad rax to octo
movq $2,%rcx #places 2 in rcx
idivq %rcx	#divides rcx by rax

cmpq $0,%rdx	#compares rdx(rest of the division) to 0
je iseven

movq $0,%rdx #places 0 in rdx
jmp end

iseven:
movq $1,%rdx #places ptr1 in rdx
jmp end

vec_sum_even:
movq ptrvec(%rip),%r8  #places ptrvec in r8
movq $0,%rsi   #places 0 in rsi
movl num(%rip),%r10d  #places num in r10d
jmp loop

loop:
cmp $0,%r10d  #compares r10d to 0
je end

movq (%r8),%r9  #places r8 contents in r9
movq %r9,even(%rip)  #places r9 in even to call test_Even
call test_even   #calls function test_even

cmp $1,%rdx  #if rdx=1 then
je add

addq $8,%r8  #moves to next number in array
decl %r10d  #subtracts 1 from r10d
jmp loop

add:
addq (%r8),%rsi  #places r8 contents in rsi
addq $8,%r8  #moves to next number in array
decl %r10d	#subtracts 1 from r10d
jmp loop

end:
movq %rsi,%rax	#places rsi in rax

ret
