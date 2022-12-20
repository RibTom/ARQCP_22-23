#include <stdio.h>
#include "asm.h"

int main() {
	int x = 2;
	printf("Cube of %d = %ld\n", x, cube(x));
}
