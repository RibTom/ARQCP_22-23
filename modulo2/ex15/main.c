#include <stdio.h>
#include "asm.h"
int A,B,C,D;
int main(void) {
printf("Valor A: ");
scanf("%d",&A);
printf("Valor B: ");
scanf("%d",&B);
printf("Valor C: ");
scanf("%d",&C);
printf("Valor D: ");
scanf("%d",&D);
printf("%d\n", compute());
}