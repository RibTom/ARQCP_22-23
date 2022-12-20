#include <stdio.h>
#include "changes.h"
int main(){
	int a=0xffffffff;
	int *ptr=&a;
	changes(ptr); 
	printf("%d\n", *ptr);
	printf("%d\n",0xff00ffff);
}
