#include <stdio.h>
#include "student.h"

int main(){
	Student s[5];
	char name[]="Tomas";
	char address[]="Porto";
	for(int i=0;i<5;i++){
		fill_student(&s[i],18,i+1,name,address);
	}
	
	printf("%d, %s, %d, %s\n", s[0].number, s[0].name, s[0].age, s[0].address);
	update_address(&s[0], (char*)"Feira");
	printf("%d, %s, %d, %s\n", s[0].number, s[0].name, s[0].age, s[0].address);
}
