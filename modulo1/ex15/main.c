#include  <stdio.h>
#include "populate.h"
#include "check.h"
#include "inc_nsets.h"

int main() {
	int vec_size = 100;
	int vec[vec_size]; 
	int limit = 20;
	populate(vec, vec_size, limit);
	for (int i = 0; i < vec_size-2; i++) {
		if (check(vec[i], vec[i+1], vec[i+2]) == 1) inc_nsets();
	}
	printf("Number of sets: %d\n", nsets);
}
