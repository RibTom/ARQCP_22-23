#include <stdio.h>
#include "asm.h"

char byte1 = 50;
char byte2 = 25;

int main() {
	printf("byte1: %d\n", byte1);
	printf("byte2: %d\n", byte2);
	printf("Resulting short: %hd\n", concatBytes());
}
