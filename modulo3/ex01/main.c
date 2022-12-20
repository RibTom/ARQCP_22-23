#include <stdio.h>
#include "asm.h"

char s[] = "9377tiratirametemete";
//char s[] = "937769427";
char* ptr1 = s;

int main() {
	printf("String: %s\n", s);
	printf("Result: %d\n", seven_count());	
}
