#include <stdio.h>
#include "activate_bits.h"

int main() {
	int a = 100;
	int left = 10;
	int right = 25;
	printf("activate_bits(%d, %d, %d) = %d\n", a, left, right, activate_bits(a, left, right));
}
