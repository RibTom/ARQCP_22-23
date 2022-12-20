#include <stdio.h>
#include "asm.h"
#include <stdlib.h>

structA **new_matrix(int lines, int columns) {
	structA **ptr;
	ptr=(structA**) calloc(lines,sizeof(structA*));		//Pointer points to beginning of column elements
	
	for(int i=0; i<lines ;i++){
		*(ptr+i)=(structA*) calloc(columns,sizeof(structA));	//columns beginnings stored in ptr
	}
	return ptr;
}

int main(){
	structA **ptr=new_matrix(4,3);
	unionB u;
	u.b=2;
	structA a;
	a.ub=u;
	ptr[1][1].ub=u;	
	printf("%d\n",return_unionB_b(ptr,1,1));
}
