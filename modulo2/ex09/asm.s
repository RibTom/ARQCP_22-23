.section .data

.section .text
.global sum_and_subtract

sum_and_subtract:
movslq A(%rip),%rax #place A in rax
movsbq C(%rip),%rdx #place B in rdx
addq %rdx,%rax	#adds rdx to rax

movsbq D(%rip),%rsi #place D in rsi
subq %rsi,%rax #subtracts rsi from rax

movswq B(%rip),%rcx #place B in rcx
addq %rcx,%rax #adds rcx to rax

ret
