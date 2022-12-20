.section .data
	.global s
	
.section .text
	.global swapBytes
swapBytes:
	movw s(%rip), %dx		#stores s in the address %dx
	movb %dl, %ah		#moves the last byte of s to the address %ah
	movb %dh, %al		#moves the first byte of s to the address %al
	addb %dh, %al		#doubles the value of the new last byte
	ret
