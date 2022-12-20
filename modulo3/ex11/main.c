#include <stdio.h>
#include "asm.h"

int vec[] = {1, 5, 10, 15, 20};
int num = 5;
int* ptrvec = vec;

int main() {
	printf("Array: ");
	for (int i = 0; i < num; i++) {
		printf("%d ", vec[i]);
	}
	printf("\nN greater than 10: %d\n", vec_greater10());
}
