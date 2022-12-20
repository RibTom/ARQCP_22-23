#include <stdio.h>
#include "asm.h"

long vec[] = {1, 2, 3, 4, 5};
int num = 5;
long* ptrvec = vec;

int main() {
	printf("Array: ");
	for (int i = 0; i < num; i++) {
		printf("%ld ", vec[i]);
	}
	printf("\nSum: %d\n", sum_first_byte());
}
