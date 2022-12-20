#include <stdio.h>
#include "asm.h"

short s = 10;

int main() {
	printf("Original short: %hd\n", s);
	printf("Resulting short: %hd\n", swapBytes());
}
