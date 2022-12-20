#include <stdio.h>
#include "matrix.h"

void print_matrix(int** ptr, int x, int y) {
	for(int i=0;i<x;i++){
		for(int j=0;j<y;j++){
				printf("%d ",*(*(ptr+i)+j));
		}
		printf("\n");
	}
}

int main(){
	int **a=new_matrix(4,4);
	int k = 1;
	for(int i=0;i<4;i++){
		for(int j=0;j<4;j++){
				*(*(a+i)+j)=k;
				k++;
		}
	}
	int **b=new_matrix(4,4);
	k = 1;
	for(int i=0;i<4;i++){
		for(int j=0;j<4;j++){
				*(*(b+i)+j)=k;
				k++;
		}
	}
	printf("a:\n");
	print_matrix(a, 4, 4);
	printf("\nb:\n");
	print_matrix(b, 4, 4);
	int** m = add_matrixes(a, b, 4, 4);
	printf("\na + b:\n");
	print_matrix(m, 4, 4);
}
