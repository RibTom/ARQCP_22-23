int sum_even(int* p, int num) {
	int result = 0;
	for (int i = 0; i < num; i++) {		//cycle for to go through every element of the array
		int n = *(p+i);
		if (n%2 == 0) {		//verification that the number is even
			result += n;
		}
	}
	return result;
}
