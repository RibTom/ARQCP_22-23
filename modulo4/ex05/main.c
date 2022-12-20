#include <stdio.h>
#include "asm.h"

int main() {
	int v = 1;
	int* v1 = &v;
	int v2 = 4;
	printf("*v1: %d\n", *v1);
	printf("v2: %d\n", v2);
	printf("Square of v2 = %d\n", inc_and_square(v1, v2));
	printf("Resulting *v1: %d\n", *v1);
}
