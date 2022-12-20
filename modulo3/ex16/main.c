#include <stdio.h>
#include "asm.h"
char *ptr1;
char *ptr2;
int num;
int main(){

num=5;

char vec[num];
char vec2[num];

scanf("%s",vec);

scanf("%s",vec2);

ptr1=vec;

ptr2=vec2;

printf("vec:%s\n", vec);
printf("vec2:%s\n", vec2);

swap();

printf("vec:%s\n", vec);
printf("vec2:%s\n", vec2);

printf("\n");
}