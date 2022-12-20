#include <stdio.h>
#include "find_all_words.h"
int main(){
	char* x[4];
	char x2[]="aolaholajolafola";
	find_all_words(x2,"ola",x);

	printf("%lu\n", &x2[1]);
	printf("%lu\n", &x2[5]);
	printf("%lu\n", &x2[9]);
	printf("%lu\n", &x2[13]);
	
	printf("\n");

	for(int i=0; i<4;i++){
		printf("%lu\n", x[i]);
	}
}