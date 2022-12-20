#include <stdlib.h>

char *new_str(char str[80]) {
	int i = 0;
	while (str[i] != '\0') {						//counts the size of the string
		i++;
	}
	char* ptr = (char*) calloc(i+1, sizeof(char));	//reserves a block of memory of at least i+1 bytes
	for (int j = 0; j < i; j++) {					//copies the string to the new memory block char by char
		*(ptr+j) = str[j];
	}
	*(ptr+i) = '\0';
	return ptr;										//returns the pointer to the memory block
}
