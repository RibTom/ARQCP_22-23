#include <stdio.h>
#include "rotate_left.h"
#include "rotate_right.h"

int main() {
	int num = 5;
	int nbits = 2;
	printf("Left rotation of %d by %d: %d\n", num, nbits, rotate_left(num, nbits));
	printf("Right rotation of %d by %d: %d\n", num, nbits, rotate_right(num, nbits));
}
