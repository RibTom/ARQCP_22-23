#include <stdio.h>
#include "matrix.h"

int main(){
	int **ptr=new_matrix(4,2);
	int k = 1;
	for(int i=0;i<4;i++){
		for(int j=0;j<2;j++){
				*(*(ptr+i)+j)=k;
				k++;
		}
	}
	for(int i=0;i<4;i++){
		for(int j=0;j<2;j++){
				printf("%d ",*(*(ptr+i)+j));
		}
		printf("\n");
	}
	int num = 5;
	printf("Matrix contains %d? ", num);
	int res = find_matrix(ptr, 4, 2, num);
	if (res == 1) printf("yes\n");
	else printf("no\n");
}
