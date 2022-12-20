#include <stdio.h>
#include "asm.h"

long *ptrvec;
int num;
long even;
int main(void) {
num=5;
long vec[num];
for(int i=0;i<num;i++){
	scanf("%ld",&vec[i]);
}
ptrvec=vec;
printf("Result: %ld\n",vec_sum_even());
}