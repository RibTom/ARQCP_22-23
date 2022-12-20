.section .data
.global op1
.global op2

.section .text
.global test_flags

test_flags:
movl op1(%rip),%eax #place op1 in eax
movl op2(%rip),%edx #place op2 in edx
addl %edx,%eax #adds edx to eax

jc flag_carry  #if carry
jo flag_overflow #if overflow
movq $0,%rax #place 0 in rax

jmp end

flag_carry:
	movq $1,%rax #place 1 in rax

flag_overflow:
	movq $1,%rax #place 1 in rax

end:
ret
