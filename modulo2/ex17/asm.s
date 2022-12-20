.section .data
.global A
.global B

.section .text
.global sum
.global subtraction
.global multiplication
.global division
.global modulus
.global power2
.global power3

sum:
movl A(%rip),%eax 	#places A in %eax
movl B(%rip),%ecx	#places B in %ecx
addl %ecx,%eax		#adds ecx to eax
ret

subtraction:
movl A(%rip),%eax 	#places A in %eax
movl B(%rip),%ecx	#places B in %ecx
subl %ecx,%eax		#subtracts ecx from eax
ret

multiplication:
movl A(%rip),%eax 	#places A in %eax
movl B(%rip),%ecx	#places B in %ecx
imul %ecx,%eax		#multiplies eax by ecx
ret

division:
movl A(%rip),%eax	#places A in %eax
movl B(%rip),%ecx	#places B in %ecx
cmpl $0, %ecx		#compares ecx with 0
je zero			#if ecx is 0 jump to zero
divl %ecx,%eax		#divides eax by ecx
ret

zero:
movl $0, %eax			#return 0
ret

modulus:
movl A(%rip), %eax		#places A in %eax
movl B(%rip), %ecx		#places B in %ecx
cltd				#convert long in %eax to double long in %edx:%eax
cmpl $0, %ecx			#compares ecs with 0
je zero				#if B is 0 jump to zero
idivl %ecx				#divide eax by ecs
cmpl $0, %edx	        #compares 0 to edx
movl %edx,%eax		#compares the remaining of the division
ret
				
power2:
movl A(%rip), %eax		#places A in %eax
movl A(%rip), %ecx		#places B in %ecx
mul %ecx			#multiplies eax by ecx
ret

power3:
movl A(%rip), %eax		#places A in %eax
movl A(%rip), %ecx		#places B in %ecx
mul %ecx			#multiplies eax by ecx
mul %ecx			#multiplies eax by ecx
ret
