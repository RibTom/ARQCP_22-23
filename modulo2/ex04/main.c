#include <stdio.h>
#include "asm.h"
extern long int op3;
extern long int op4;
int op1;int op2;
int main(void) {
printf("Valor op1: ");
scanf("%d",&op1);
printf("Valor op2: ");
scanf("%d",&op2);
printf("Valor op3: ");
scanf("%ld",&op3);
printf("Valor op4: ");
scanf("%ld",&op4);
printf("sum_v3 = %ld:0x%lx\n", sum_v3(),sum_v3());
}