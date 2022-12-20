#include <stdio.h>
#include "asm.h"

short vec[] = {0, -1, 2, -3, 4, -5};
unsigned short num = 6;
short* ptrvec = vec;

int main() {
	printf("Original array: ");
	for (int i = 0; i < num; i++) {
		printf("%hd ", vec[i]);
	}
	keep_positives();
	printf("\nModified array: ");
	for (int i = 0; i < num; i++) {
		printf("%hd ", vec[i]);
	}
	printf("\n");
}
