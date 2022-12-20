#include <stdlib.h>
#include "stack.h"
#include <stdio.h>

void push(stack *st,long num){
	long *copy=(long *) realloc(st->l,(st->size+1)*sizeof(long));	 //pointer copy para testar se é possivel dar realloc
    if(copy != NULL){
		st->l=copy;		//realloc foi possivel, igualar ao original
		st->size++;		//aumentar o size, um novo membro foi adicionado
		*((st->l)+(st->size))=num;	//guardar o numero no espaço aberto pelo size
	}else{
		printf("ErRoR");
		return;
	}
}
