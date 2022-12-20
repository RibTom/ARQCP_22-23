int distance(char *a, char *b) {
	int distance = 0;
	while (*a != 0) {				//cycles through the string a
		if (*b == 0) return -1;		//checks if the length of b is less than a
		if (*a != *b) distance++;	//compares the char from a with the one from b
		a++;
		b++;
	}
	if (*b != 0) return -1;			//checks if the length of b is greater than a
	return distance;
}
