#include <stdio.h>
#include "asm.h"

void print_result(char op, int o1, int o2, int res)
{
printf("%d %c %d = %d\n", o1, op, o2, res);
}

int main() {
	int a = 10;
	int b = 5;
	printf("(%d - %d) - (%d * %d) = %d\n", a, b, a, b, calculate(a, b));
}
