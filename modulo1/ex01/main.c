#include "print.h"

int main() {
	int x = 5;
	int* xPtr = &x;
	float y = *xPtr + 3;
	int vec[] = {10, 11, 12, 13};
	int* vecPtr = vec;
	
	print(x, xPtr, y, vecPtr);
}
