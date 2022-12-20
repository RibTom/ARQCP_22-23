#include <stdio.h>
#include "print.h"

union union_u1{
char vec[32];
float a;
int b;
} u;

struct struct_s1{
char vec[32];
float a;
int b;
} s;

int main(){
	struct struct_s1 s;
	union union_u1 u;
	printf("%d\n f",sizeof(s));		//sizeof gets number of bits			
	printf("%ld\n",sizeof(u));
}
