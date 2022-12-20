#include <stdio.h>
#include "asm.h"

extern short s1, s2;

int main() {
	printf("s1: %hd\n", s1);
	printf("s2: %hd\n", s2);
	printf("Resulting short: %hd\n", crossSumBytes());
}
