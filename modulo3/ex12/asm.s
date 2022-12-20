.section .data
.global ptrvec
.global num
.section .text
.global vec_zero #char vec_zero(void)

vec_zero:
movq ptrvec(%rip),%rdx		#places ptrvec in rdx
movl num(%rip),%esi		#places num in esi
movb $0,%al	#places 0 in al
jmp loop

loop:
cmpl $0,%esi	#compares esi to 0, if 0 then end of array
je end

movl (%rdx),%r8d  	#places rdx contents in r8d
cmpl $100,%r8d		#compares r8d to 100, jumps if r8d is greater or equal
jge toZero

addq $4,%rdx 		#goes to next array element
subl $1,%esi		#subtracts 1 from esi
jmp loop

toZero:
movl $0,%r8d  		#places 0 in r8d
movl %r8d,(%rdx)  	#places r8d in rdx contents

addq $4,%rdx 	#goes to next array element
addb $1,%al		#adds 1 to al
subl $1,%esi		#subtracts 1 from esi
jmp loop 

end:

ret
