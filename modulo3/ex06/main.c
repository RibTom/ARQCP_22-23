#include <stdio.h>
#include "asm.h"

char * ptr1;  
int main(void) {
char s[5];
scanf("%s",s);
ptr1=s;
printf("%d\n",encrypt());
}