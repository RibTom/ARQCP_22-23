.section .data
.global op1
.global op2
op3:
	.quad 15

op4:
	.quad 7

.global op3
.global op4
.equ CONST,20
.global res

.section .text
.global sum # int sum(void)
.global sum_v2 #int sum_v2(void)
.global sum_v3 #long sum_v3()
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

sum_v3:
movq op3(%rip),%rdi #place op3 in rdi
movq op4(%rip),%rax #place op1 in rax
addq %rdi,%rax #adds rdi to rax
movl op2(%rip), %edx #place op2 in edx
movslq %edx,%rdx #place edx in rdx
subq %rdx,%rax #subtracts rdx from rax
subq %rdx,%rax #subtracts rdx from rax
movl op1(%rip), %ecx #place op1 in ecx
movslq %ecx,%rcx #place ecx in rcx
addq %rcx,%rax #adds rcs to rax
addq %rcx,%rax #adds rcs to rax, result stored in rax
ret
