#include <stdio.h>
#include "asm.h"

extern int length1, length2, height;

int main() {
	printf("length1: %d\n", length1);
	printf("length2: %d\n", length2);
	printf("height: %d\n", height);
	printf("Area of the trapeze: %d\n", getArea());
}
