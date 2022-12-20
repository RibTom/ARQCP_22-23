#include <stdio.h>
#include "asm.h"

int main() {
	int a = 1;
	int b = 2;
	int c = 3;
	int d = 4;
	printf("Numbers: %d, %d, %d, %d\n", a, b, c, d);
	printf("Greatest: %d\n", greatest(a, b, c, d));
}
