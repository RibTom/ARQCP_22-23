#include <stdio.h>
#include "group.h"

int main(){
	group g;
	g.n_students = 5;
	unsigned short s[5] = {32013,59793,2122,45787,61271};
	unsigned short* p = s;
	g.individual_grades = (p) ;
	printf("Approved semesters = %d\n", approved_semester(&g));
}
