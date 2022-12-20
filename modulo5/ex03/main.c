#include <stdio.h>
#include "student.h"


int main(){
	Student s[5];
	char name[]="Tomas";
	char address[]="Porto";
	for(int i=0;i<5;i++){
		fill_student(&s[i],18,i+1,name,address);
		printf("%d, %s, %d, %s\n", s[i].number, s[i].name, s[i].age, s[i].address);
	}
}
