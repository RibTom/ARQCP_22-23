#include <stdio.h>
#include "asm.h"
int main(){
int b=-1;
int *ptr=&b;
printf("%d\n" , reset_2bits(ptr,0));
}
