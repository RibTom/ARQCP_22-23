#include <stdio.h>
#include "stack.h"
#include <stdlib.h>

int main(){
	stack s;
	s.size=0;
	s.l=(long *)calloc(s.size,sizeof(long));		
	
	
	push(&s,1);
	
	printf("%ld\n",pop(&s));
	
	push(&s,2);

	printf("%ld\n",pop(&s));
	printf("%ld\n",pop(&s));

	push(&s,1);
	push(&s,2);
	push(&s,3);
	printf("%ld\n",pop(&s));
	printf("%ld\n",pop(&s));
	printf("%ld\n",pop(&s));

	
}

