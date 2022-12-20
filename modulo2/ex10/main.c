#include <stdio.h>
#include "asm.h"

int op1 = 7;
int op2 = 111;
int op3 = 302;

int main() {
	printf("op1: %d\n", op1);
	printf("op2: %d\n", op2);
	printf("op3: %d\n", op3);
	printf("Result: %lld\n", sum3ints());
}
