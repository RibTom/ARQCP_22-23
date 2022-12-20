void add_byte(char x, int *vec1, int *vec2) {
	int n = *vec1;						//gets the size of vec1
	*vec2 = n;
	vec1++;
	vec2++;
	for (int i = 0; i < n; i++) {		//for each element of vec1 adds x to the 1st byte and copys to vec2
		char* byte = (char*) vec1;
		*byte = *byte + x;
		*vec2 = *vec1;
		vec1++;
		vec2++;
	}
}
