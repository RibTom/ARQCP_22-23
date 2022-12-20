#include <stdio.h>
#include "asm.h"

short vec[] = {1, 2, 3, 4, 5};
int num = 5;
short* ptrvec = vec;
short x = 3;

int main() {
	printf("Array: ");
	for (int i = 0; i < num; i++) {
		printf("%hd ", vec[i]);
	}
	printf("\nx: %hd\n", x);
	printf("Address: %p\n", vec_search());
}
