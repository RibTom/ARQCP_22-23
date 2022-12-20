#include <stdio.h>
#include "asm.h"

int A;
int B;

int main() {
	A = 500;
	B = 5;
	printf("A: %d\n", A);
	printf("B: %d\n", B);
	printf("isMultiple: %d\n", isMultiple());
	printf("\n");
	A = 5;
	B = 0;
	printf("A: %d\n", A);
	printf("B: %d\n", B);
	printf("isMultiple: %d\n", isMultiple());
	printf("\n");
	A = -500;
	B = -5;
	printf("A: %d\n", A);
	printf("B: %d\n", B);
	printf("isMultiple: %d\n", isMultiple());
}
