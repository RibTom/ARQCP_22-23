#include <stdio.h>
#include "asm.h"

int i, j, g, h, r;

int f(){
	if (i == j)
		h = i - j + 1;
	else
		h = i + j -1;
	return h;
}

int f2(){
if (i > j)
		i = i - 1;
	else
		j = j + 1;
	h = j * i;
	return h;
}

int f3(){
	if (i >= j) {
		h = i * j;
		g = i + 1;
	}
	else {
		h = i + j;
		g = i + j + 2;
	}
	r = g / h;
	return r;
}

int f4(){
	if (i + j < 10)
		h = 4 * i * i;
	else
		h = j * j / 3;
	return h;
}

void print() {
	int k = i;
	int l = j;
	printf("i: %d\n", i);
	printf("j: %d\n", j);
	printf("Functions in C:        %d, ", f());
	printf("%d, ", f2());
	i = k;
	j = l;
	printf("%d, %d\n", f3(), f4());
	printf("Functions in Assembly: %d, %d, %d, %d\n", func(), func2(), func3(), func4());

}

int main() {
	i = 10;
	j = 10;
	print();
	printf("\n");
	i = 5;
	j = 10;
	print();
	printf("\n");
	i = 10;
	j = 5;
	print();
	printf("\n");
	i = 2;
	j = 2;
	print();
}
