#include <stdlib.h>

void populate(int *vec , int num, int limit) {
	srand(getpid());
	int i = 0;
	while (i < num) {			//cycles through the entire array and assigns a random number, between 0 and the limit, to each position
		*vec = rand()%limit;
		vec++;
		i++;
	}
}
