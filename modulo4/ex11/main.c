#include <stdio.h>
#include "asm.h"

int main() {
	int a = 1;
	int b = 2;
	short c = 3;
	char d = 4;
	printf("a = %d\n", a);
	printf("b = %d\n", b);
	printf("c = %hd\n", c);
	printf("d = %d\n", d);
	printf("Result: %d\n", call_proc(a, b, c, d));
}
