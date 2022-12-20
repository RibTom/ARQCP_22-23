#include <stdio.h>
#include "asm.h"

short s1 = 20;
short s2 = 45;

int main() {
	printf("s1: %hd\n", s1);
	printf("s2: %hd\n", s2);
	printf("Resulting short: %hd\n", crossSumBytes());
}
