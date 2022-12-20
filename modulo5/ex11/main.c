#include <stdio.h>
#include "new_matrix.h"


int main(){
	int **ptr=new_matrix(2,2);
	for(int i=0;i<2;i++){
		for(int j=0;j<2;j++){
				*(*(ptr+i)+j)=1;
		}
	}
	
	for(int i=0;i<2;i++){
		for(int j=0;j<2;j++){
				printf("%d\n",*(*(ptr+i)+j));
		}
	}
}
