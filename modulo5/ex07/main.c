#include <stdio.h>
#include "asm.h"

int main(){
	s1 s;

	fill_s1(&s,4,4,4,4);
	
	printf("%d %d %d %d\n",s.c,s.i,s.d,s.j);
}
