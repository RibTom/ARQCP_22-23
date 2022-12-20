#include <stdio.h>
#include "asm.h"

extern int A, B;
int n = 3;

int main() {
	printf("A: %d\n", A);
	printf("B: %d\n", B);
	printf("n: %d\n", n);
	printf("Result: %d\n", sum());
}
