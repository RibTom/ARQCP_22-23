#include <stdio.h>

int sort_without_reps(int *src, int n, int *dest) {
	int count = 0;
	if (n > 0) {
		int x = 0;
		int y = 0;
		*dest = *src;
		x++;
		count++;
		for (int i = 1; i < n; i++) {		//passing the elements from src to dest without repeating
			if (*(src+x) != *(dest+y)) {
				y++;
				*(dest+y) = *(src+x);
				count++;
			}
			x++;
		}
	}
	for (int i = 0; i < count-1; i++) {			//selection sort (dest)
		for (int j = i+1; j < count; j++) {
			if (*(dest+i) > *(dest+j)) {
				int aux = *(dest+i);
				*(dest+i) = *(dest+j);
				*(dest+j) = aux;
			}
		}	
	}
	for (int i = 0; i < count; i++) {		//printing the resulting array (dest)
		printf("%d ", *dest);
		dest++;
	}
	return count;
}
