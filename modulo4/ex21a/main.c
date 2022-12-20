#include <stdio.h>
#include "distance.h"

int main() {
	char str1[] = "restaurante";
	char str2[] = "emocionante";
	printf("string1: %s\n", str1);
	printf("string2: %s\n", str2);
	printf("Distance = %d\n", distance(str1, str2));
}
