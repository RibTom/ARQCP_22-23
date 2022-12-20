#include <stdlib.h>
#include "stack.h"
#include <stdio.h>

long pop(stack *st) {
	if((st->size)==0){		//se size for 0, nao existem elementos na stack
		printf("Number of elements in stack: ");
		return (long)NULL;
	}

	long y=*((st->l)+(st->size));		//guardar em y o numero que está no topo
	//st->l=(long *) realloc(st->l,((st->size)-1)*sizeof(long));		//novo realloc com size-1
	free(*((st->l)+((st->size)-1)*8));		//livrar espaço do membro que foi criado
	st->size--;		//size diminui ao tirar-se o topo
	return y;
}
	
