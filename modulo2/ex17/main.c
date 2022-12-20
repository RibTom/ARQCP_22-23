#include <stdio.h>
#include "asm.h"
int A,B;
int main(void) {
scanf("%d\n", &A);
scanf("%d\n", &B);
printf("%d\n", sum());
printf("%d\n", subtraction());
printf("%d\n", multiplication());
printf("%d\n", division());
printf("%d\n", modulus());
printf("%d\n", power2());
printf("%d\n", power3());
}