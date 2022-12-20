#include <stdio.h>
#include "asm.h"

long num = 10;

int main() {
	printf("num: %ld\n", num);
	printf("Result: %d\n", steps());
}
