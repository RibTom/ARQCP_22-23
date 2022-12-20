#include <stdio.h>
#include "asm.h"
int main(){
int b=4294967295;
int *ptr=&b;
changes(ptr);
printf("%d\n" , *ptr);
}
