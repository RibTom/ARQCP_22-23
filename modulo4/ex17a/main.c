#include <stdio.h>
#include "greater_date.h"

int main() {
	unsigned date1 = (2003 << 8)  | (12 <<24 ) |  20;
	unsigned date2 = (2022 << 8)  | (11 <<24 ) |  14;
	printf("greater_date(%d, %d) = %d\n", date1, date2, greater_date(date1, date2));
}
