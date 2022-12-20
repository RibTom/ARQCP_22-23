#include <stdio.h>
#include "asm.h"
int main(){
	
int a=-1;
int b=0;
int pos=0;

printf("%d\n" , join_bits(a,b,pos));
printf("%d\n",1); 

a=0;
b=-1;
pos=31;
printf("%d\n" , join_bits(a,b,pos));
printf("%d\n",0);

}
