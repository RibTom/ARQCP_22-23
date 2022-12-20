.section .data
s1:
	.short 5
	
s2:
	.short 10
	
	.global s1
	.global s2

.section .text
	.global crossSumBytes
crossSumBytes:
	movw s1(%rip), %ax		#stores s1 in the address %ax
	movw s2(%rip), %dx		#stores s2 in the address %dx
	addb %dl, %ah		#adds the last byte of s2 to the first byte of s1
	addb %dh, %al		#adds the first byte of s2 to the last byte of s1
	ret
