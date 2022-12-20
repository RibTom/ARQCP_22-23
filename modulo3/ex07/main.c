#include <stdio.h>
#include "asm.h"

char s[] = "SuriMap";
char* ptr1 = s;

int main() {
	printf("Encrypted string: %s\n", s);
	int n = decrypt();
	printf("Decrypted string: %s\n", s);
	printf("N changed chars: %d\n", n);
}
