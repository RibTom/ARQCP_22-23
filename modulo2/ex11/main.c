#include <stdio.h>
#include "asm.h"
int op1, op2;
int main(){
op1=1;
op2=-1;
printf("%d\n", test_flags());
op1=2;
op2=78;
printf("%d\n", test_flags());
}