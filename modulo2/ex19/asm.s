.section .data
.global current
.global desired

.section .text
.global needed_time

needed_time:
movb current(%rip),%ah	#places current in ah
movb desired(%rip),%ch	#places desired in ch
subb %ch,%ah		#subtracts ch from ah
cmpb $0,%ah		#compares 0 to ah	
jl lower		#if ah is lower than 0 jump to lower
jg over			#if ah is over 0 jump to over
movb $0,%ah		#places 0 in ah
movsbl %ah,%eax		#places ah in eax
ret

lower:
movsbl %ah,%eax		#places ah in eax
imull $180,%eax		#multiplies eax by 180
imull $-1,%eax		#multiplies eax by -1, because it was negative
ret

over:
movsbl %ah,%eax		#places ah in eax
imull $240,%eax		#multiplies eax by 240
ret
