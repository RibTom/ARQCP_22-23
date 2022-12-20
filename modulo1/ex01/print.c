#include <stdio.h>

void print(int x, int* xPtr, float y, int* vecPtr) {
	printf("Value of x: %d\n", x);
	printf("Value of y: %f\n", y);
	printf("Address (in Hexadecimal) of x: %p\n", (void*) &x);
	printf("Address (in Hexadecimal) of xptr: %p\n", (void*) &xPtr);
	printf("Value pointed by xptr: %d\n", *xPtr);
	printf("Address of vec: %lu\n", vecPtr);
	printf("Value of vec[0]: %d\n", *vecPtr);
	printf("Value of vec[1]: %d\n", *(vecPtr+1));
	printf("Value of vec[2]: %d\n", *(vecPtr+2));
	printf("Value of vec[3]: %d\n", *(vecPtr+3));
	printf("Address of vec[0]: %lu\n", vecPtr);
	printf("Address of vec[1]: %lu\n", vecPtr+1);
	printf("Address of vec[2]: %lu\n", vecPtr+2);
	printf("Address of vec[3]: %lu\n", vecPtr+3);
}
