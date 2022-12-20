#include <stdio.h>
#include "add_byte.h"

int main() {
	char x = 20;
	int size = 5;
	int vec1[] = {size,1,2,3,4,5};
	int vec2[size];
	printf("vec1: ");
	for (int i = 0; i < size; i++) {
		printf("%d ", vec1[i]);
	}
	printf("\nx: %d\n", x);
	add_byte(x, vec1, vec2);
	printf("vec2: ");
	for (int i = 0; i < size; i++) {
		printf("%d ", vec2[i]);
	}
	printf("\n");
}
