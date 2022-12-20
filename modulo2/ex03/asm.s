.section .data
.global op1
.global op2
.equ CONST,20
.global res
.section .text
.global sum # int sum(void)
.global sum_v2 #int sum_v2(void)
sum:
movl op1(%rip), %ecx #place op1 in ecx
movl op2(%rip), %eax #place op2 in eax
addl %ecx, %eax #add ecx to eax. Result is in eax
ret
sum_v2:
movl op1(%rip), %eax #place op1 in ecx
movl op2(%rip), %esi #place op2 in esi
movl $CONST, %r8d #place CONST(20) in r8d
subl %eax, %r8d #subtracts eax from r8d, stores in r8d
subl %eax, %r8d #subtracts eax from r8d, stores in r8d
addl %esi,%r8d #adds esi to r8d
movl %r8d,%eax #places r8d in eax
ret