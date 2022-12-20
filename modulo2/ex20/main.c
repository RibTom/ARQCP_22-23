#include <stdio.h>
#include "asm.h"

int num = -10;

int main() {
	printf("num: %d\n", num);
	printf("Result: %d\n", check_num());
	printf("\n");
	num = -5;
	printf("num: %d\n", num);
	printf("Result: %d\n", check_num());
	printf("\n");
	num = 2;
	printf("num: %d\n", num);
	printf("Result: %d\n", check_num());
	printf("\n");
	num = 3;
	printf("num: %d\n", num);
	printf("Result: %d\n", check_num());
	printf("\n");
	num = 0;
	printf("num: %d\n", num);
	printf("Result: %d\n", check_num());
}
