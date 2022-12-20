#include <stdio.h>
#include "asm.h"
int main(){
int b=5;
int *bptr=&b;
printf("%d\n" , calc(1,bptr,2));
}