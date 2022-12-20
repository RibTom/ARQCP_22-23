.section .data
.global A
.global B
.global C
.global D

.section .text
.global compute

compute:
movl A(%rip),%eax #place A in eax
movl B(%rip),%edx #place B in edx
mull %edx #multiply eax by edx

movl C(%rip),%ecx #place C in ecx
subl %ecx,%eax #subtract ecx from eax
cdq

movl D(%rip),%esi #place D in esi

cmpl $0,%esi #compare 0 to esi
je zero #if zero
idivl %esi #divides eax by esi
jmp end

zero: #if D=0 return 0
movl $0,%eax #place 0 in eax
jmp end

end:
ret
