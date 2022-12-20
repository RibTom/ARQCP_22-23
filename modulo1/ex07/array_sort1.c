#include <stdio.h>

void array_sort1(int *vec, int n) {
	for (int i = 0; i < n-1; i++) {			//basic selection sort
		for (int j = i+1; j < n; j++) {
			if (*(vec+i) > *(vec+j)) {
				int aux = *(vec+i);
				*(vec+i) = *(vec+j);
				*(vec+j) = aux;
			}
		}	
	}
	for (int i = 0; i < n; i++) {		//printing the resulting sorted array
		printf("%d ", *(vec+i));
	}
}
