#include <stdio.h>

void swap(int* vec1, int* vec2, int size) {
	for (int i = 0; i < size; i++) {		//cycles through the arrays and swaps the elements using an auxiliary variable
		int aux = *(vec1+i);
		*(vec1+i) = *(vec2+i);
		*(vec2+i) = aux;
	}
	printf("vec1: ");
	for (int i = 0; i < size; i++) {		//printing vec1
		printf("%d ", *vec1);
		vec1++;
	}
	printf("\nvec2: ");
	for (int i = 0; i < size; i++) {		//printing vec2
		printf("%d ", *vec2);
		vec2++;
	}
	printf("\n");
}
