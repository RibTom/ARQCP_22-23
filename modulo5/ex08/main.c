#include <stdio.h>
#include "s2.h"

int main( void ){
	s2 s2;
	char c[3] = {5,6,7};
	short w[3] = {1,2,3};
	int j = 4;
	fill_s2(&s2, w, j, c);
	for (int i = 0; i < 3; i++) {
		printf("%d ", s2.w[i]);
	}
	printf(", %d, ", s2.j);	
	for (int i = 0; i < 3; i++) {
		printf("%d ", s2.c[i]);
	}
	printf("\n");
}
