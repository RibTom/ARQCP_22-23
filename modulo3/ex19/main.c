#include <stdio.h>
#include "asm.h"

char grades[] = {1,2,5,5,7,8,10,10,12,15,15,15,18,18,20,20,20,20};
int num = 18;
char* ptrgrades = grades;
int freq[21];
int* ptrfreq = freq;

int main() {
	printf("Grades: ");
	for (int i = 0; i < num; i++) {
		printf("%d ", grades[i]);
	}
	frequencies();
	printf("\nFrequencies:   ");
	for (int i = 0; i < 21; i++) {
		printf("%d ", freq[i]);
	}
	printf("\n");
}
