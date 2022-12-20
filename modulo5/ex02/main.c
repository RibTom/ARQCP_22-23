#include <stdio.h>
#include <string.h>

int main( void ){

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
	
	//union union_u1 * ptr = &u;	//when altering a value of a union the other values change
	struct struct_s1 * ptr = &s;	//when altering a value of a struct the other values stay the same

	strcpy(ptr->vec, "arquitectura de computadores" );
	printf( "[1]=%s\n", ptr->vec );
	ptr->a = 123.5;
	printf( "[2]=%f\n", ptr->a );
	ptr->b = 2;
	printf( "[3]=%d\n", ptr->b );
	
	printf( "[1]=%s\n", ptr->vec );
	printf( "[2]=%f\n", ptr->a );
	printf( "[3]=%d\n", ptr->b );
	return 0;
}
