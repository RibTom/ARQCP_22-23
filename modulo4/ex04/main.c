#include <stdio.h>
#include "asm.h"

int main(){
	int a=-2;
	int b=-1;
	int *ptr;
	printf("%d\n", sum_smaller(a,b,ptr));
	printf("%d\n", *ptr);
}
