#include <stdio.h>
#include "asm.h"
int length1,length2,height;
int main(void) {
printf("Valor length1: ");
scanf("%d",&length1);
printf("Valor length2: ");
scanf("%d",&length2);
printf("Valor height: ");
scanf("%d",&height);
printf("%d\n", getArea());
}