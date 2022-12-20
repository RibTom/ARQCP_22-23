.section .data
	.global byte1
	.global byte2
	
.section .text
	.global concatBytes
concatBytes:
	movb byte2(%rip), %ah		#moves byte2 to the first byte of the short
	movb byte1(%rip), %al		#moves byte1 to the last byte of the short
	ret
