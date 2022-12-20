#include <stdio.h>
#include "asm.h"

int main() {
	char vec[] = {1,2,3,4,5};
	int n = 5;
	printf("Vector: ");
	for (int i = 0; i < n; i++) {
		printf("%d ", vec[i]);
	}
	printf("\nNumber of odd numbers: %d\n", count_odd(vec, n));
}
