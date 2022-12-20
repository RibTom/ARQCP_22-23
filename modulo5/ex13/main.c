#include <stdio.h>
#include "matrix.h"

int main(){
	int **ptr=new_matrix(2,2);
	
	*(*(ptr))=2;
	*(*(ptr)+1)=5;
	*(*(ptr+1)+0)=2;
	*(*(ptr+1)+1)=5;
	
	printf("%d\n",count_odd_matrix(ptr,2,2));
	
}
	
