#include <stdio.h>
#include "asm.h"

int * ptrvec;  
int num;
int main(void) {
num=5;
int vec[num];
for(int i=0;i<num;i++){
	scanf("%d",&vec[i]);
}
ptrvec=vec;
vec_add_two();
for(int i=0;i<num;i++){
	printf("Result: %d\n",vec[i]);
}
}