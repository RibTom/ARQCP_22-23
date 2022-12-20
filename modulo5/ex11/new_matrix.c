#include <string.h>
#include <stdlib.h>

int **new_matrix(int lines, int columns) {
	int **ptr;
	ptr=(int**) calloc(lines,sizeof(int*));		//Pointer points to beginning of column elements
	
	for(int i=0; i<lines ;i++){
		*(ptr+i)=(int*) calloc(columns,sizeof(int));	//columns beginnings stored in ptr
	}
	return ptr;
}
	
