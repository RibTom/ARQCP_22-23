#include <stdio.h>

int where_is(char *str, char c, int *p) {
	int count = 0;
	int pos = 0;
	while (*str != '\0') {		//cycle through the characters of the string
		if (*str == c) {		//if the character matches it's position on the string is stored on the int array and adds 1 to the counter
			*p = pos;
			p++;
			count++;
		}
		str++;
		pos++;
	}
	p -= count;
	for (int i = 0; i < count; i++) {		//printing the resulting array
		printf("%d ", *p);
		p++;
	}
	printf("\n");
	return count;
}
