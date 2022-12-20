#include <stdio.h>
#include "asm.h"

long vec[] = {1, 2, 3};
short num = 3;
long* ptrvec = vec;

int main() {
	printf("Array: ");
	for (int i = 0; i < num; i++) {
		printf("%ld ", vec[i]);
	}
	printf("\nSum: %ld\n", vec_sum());
	printf("Average: %ld\n", vec_avg());
}
