#include <stdio.h>
#include "functions.h"

int main(){
	Student s[5];
	char name[]="Tomas";
	char address[]="Porto";
	int grades[5]={1,1,1,1,1};
	for(int i=0;i<5;i++){
		fill_student(&s[i],18,i+1,name,address);
		for (int j = 0; j < 5; j++) {
			s[i].grades[j] = grades[j];
		}
	}
	int grades2[5]={3,5,3,4,3};
	for (int j = 0; j < 5; j++) {
			printf("%d ",s[0].grades[j]);
		}
	printf("\n");
	update_grades(&s[0], grades2);
	for (int j = 0; j < 5; j++) {
			printf("%d ",s[0].grades[j]);
		}
	printf("\n");
}
