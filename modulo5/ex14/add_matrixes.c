#include <stdlib.h>
#include "matrix.h"

int **add_matrixes(int **a, int **b, int y, int k) {
	int** m = new_matrix(y, k);				//creates a new matrix
	for (int i = 0; i < y; i++) {			//goes through the matrix lines
		for (int j = 0; j < k; j++) {		//goes through the matrix columns for that line
			m[i][j] = a[i][j] + b[i][j];	//puts the sum of the 2 elements, 1 from a and 1 from b, in the new matrix
		}
	}
	return m;
}
	
