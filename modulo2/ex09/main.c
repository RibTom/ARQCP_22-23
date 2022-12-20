#include <stdio.h>
#include "asm.h"
int A=0;
short B=0;
char C=0;
char D=0;
int main(void) {

printf("Valor A: ");
scanf("%d",&A);

printf("Valor B: ");
scanf("\n%hd",&B);

printf("Valor C: ");
scanf("\n%c",&C);

printf("Valor D: ");
scanf("\n%c",&D);

printf("sum_and_subtract = %ld:0x%lx\n", sum_and_subtract());
}