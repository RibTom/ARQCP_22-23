#include <stdio.h>
#include "asm.h"

int main() {
	int a = 100;
	int left = 10;
	int right = 25;
	printf("activate_invert_bits(%d, %d, %d) = %d\n", a, left, right, activate_invert_bits(a, left, right));
}
