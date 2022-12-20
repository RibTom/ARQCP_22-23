#include <stdio.h>
#include "asm.h"
int main(){
int a=0;
int b=1;
int pos=0;

printf("%d\n" , mixed_sum(a,b,pos));
printf("%d\n",1); 

a=1;
b=0;
pos=0;
printf("%d\n" , mixed_sum(a,b,pos));
printf("%d\n",1);
}
