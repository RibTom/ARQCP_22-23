#include <stdio.h>
#include "asm.h"

char * ptr1;  
char * ptr2;
int main(void) {
char s[5];
char s1[5];
scanf("%s",s);
ptr1=s;
ptr2=s1;
str_copy_porto();
printf("Result: %s\n",ptr2);	
}