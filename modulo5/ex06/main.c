#include <stdio.h>
#include "student.h"

int main(){
	Student s[5];
	char name[]="Tomas";
	char address[]="Porto";
	for(int i=0;i<5;i++){
		fill_student(&s[i],18,i+1,name,address);
	}
	int grades[5] = {1,5,10,15,20};
	update_grades(&s[0], grades);
	int greater_grades[5] = {0};
	int x = locate_greater(&s[0], 10, greater_grades);
	printf("%d:\n", x);
	for (int i = 0; i < 5; i++) {
		if (greater_grades[i] != 0) printf("%d\n", greater_grades[i]);
	}
}
