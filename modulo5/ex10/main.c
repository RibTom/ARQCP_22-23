#include <stdio.h>
#include "new_str.h"

int main(){
	char str[] = "ola";
	char* ptr = new_str(str);
	int i = 0;
	while (*(ptr+i) != '\0') {
		printf("%c", *(ptr+i));
		i++;
	}
	printf("\n");
}
