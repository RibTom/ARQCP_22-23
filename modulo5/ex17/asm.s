.section .text
	.global return_unionB_b	#char return_unionB_b(structA **matrix, int i, int j)
return_unionB_b:
	
	imulq $32,%rdx		#num colunas * 32 bytes -- tamanho de struct
	movq (%rdi,%rsi,8),%rcx		#offset para aceder ao pointer de structA correto
	addq %rdx,%rcx		#add para chegar ao struct certo
	movb 24(%rcx),%al	#24 bytes marca o inicio do unionB no structA
	
ret
