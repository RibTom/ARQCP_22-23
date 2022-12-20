#include <stdio.h>
#include "reset_bit.h"
int main(){
	int b=-1;
	int *ptr=&b;
	printf("%d\n" , reset_bit(ptr,0));
	
}
