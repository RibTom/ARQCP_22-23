#include <stdio.h>
#include "asm.h"

short vec[5];
short vec2[5];
short * ptrsrc=vec;  
short * ptrdest=vec2;  
int num; 

int main() {
num=5;
for(int i=0;i<num;i++){
	scanf("%hd",&vec[i]);
}
printf("%d\n",sort_without_reps());
printf("%hn\n",vec2);
}
