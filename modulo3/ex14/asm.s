.section .data
.global ptrvec
.global num
.global x
.section .text
.global exists #int exists(void)
.global vec_diff #int vec_diff(void)

exists:
movq ptrvec(%rip),%r8		#places ptrvec in r8
movl num(%rip),%edx		#places num in edx
movl x(%rip),%esi		#places x in esi
movl $0,%r11d		#places 0  in r11d
jmp loop

loop:
cmpl $2,%r11d		#compares r11d to 2
je change

cmpl $0,%edx		#compares edx to 0
je change2

movl (%r8),%ecx		#places r8 contents in ecx
cmpl %esi,%ecx		#compares esi to ecx
je add

addq $4,%r8		#goes to next array element
decl %edx		#subtracts 1 from edx
jmp loop

add:
addl $1,%r11d		#adds 1 to r11d
addq $4,%r8		#moves to next array element
decl %edx		#subtracts 1 from edx
jmp loop

change:
movl $1,%r11d		#places 1 in r11d
jmp end

change2:
movl $0,%r11d		#places 0 in r11d
jmp end

vec_diff:
movq ptrvec(%rip),%r9		#places ptrvec in r9
movl num(%rip),%edi		#places num in edi
movl $0,%eax		#places 0 in eax
jmp loop2

loop2:
cmpl $0,%edi		#compares edi to 0
je end
movl (%r9),%r10d		#places r9 contents in r10d
movl %r10d,x(%rip)		#places r10d in x

call exists		#runs exists function

cmpl $0,%r11d		#compares r11d to 0
je count

addq $4,%r9		#moves to next array element
decl %edi		#subtracts 1 from edx

jmp loop2

count:
addl $1,%eax		#adds 1 to eax
addq $4,%r9		#moves to next array element
decl %edi		#subtracts 1 from edx
jmp loop2

end:

ret

