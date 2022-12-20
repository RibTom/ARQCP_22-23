.section .data
.global length1
.global length2
.global height

.section .text
.global getArea

getArea:
movl length1(%rip),%eax #place length1 in eax
movl length2(%rip),%edx #place length2 in edx
addl %edx,%eax #add edx to eax

movl height(%rip),%ecx #place op1 in eax
mull %ecx #multiply eax by ecx

movl $2,%esi #place 2 in esi
divl %esi #divide eax by esi

ret
