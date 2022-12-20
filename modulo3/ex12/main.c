#include <stdio.h>
#include "asm.h"
int *ptrvec;
int num;

int main(){

num=5;
int vec[num];
for(int i=0;i<num;i++){
	scanf("%d",&vec[i]);
}
ptrvec=vec;
printf("Result: %d\n",vec_zero());

}