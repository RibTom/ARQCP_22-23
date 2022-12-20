#include <stdio.h>
#include "asm.h"

short vec[] = {1,2,3,4,5};
int num = 5;
short* ptrvec = vec;

int main() {
	printf("Original array: ");
	for (int i = 0; i < num; i++) {
		printf("%hd ", vec[i]);
	}
	array_sort();
	printf("\nSorted array:   ");
	for (int i = 0; i < num; i++) {
		printf("%hd ", vec[i]);
	}
	printf("\n");
}
