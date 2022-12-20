#include <stdio.h>
#include "asm.h"

char s1[] = "Ola, tudo bem?";
char s2[];
char* ptr1 = s1;
char* ptr2 = s2;

int main() {
	printf("Original string: %s\n", s1);
	str_copy_porto2();
	printf("Copied string: %s\n", s2);
}
