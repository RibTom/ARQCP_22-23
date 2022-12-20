int palindrome(char *str) {
	int count = 0;
	while (*(str+count) != '\0') count++;		//count the string size
	if (count == 0) return 0;
	int x = 0;
	int y = count-1;	
	while (y-x > 0) {
		while (!isalpha(*(str+x))) {		//cycle to get the next letter of the string
			x++;
			if (x == count) return 0;
		}
		while (!isalpha(*(str+y))) y--;		//cycle to get the next last letter of the string
		char cx = *(str+x);
		char cy = *(str+y);
		if (cx >= 65 && cx <= 90) cx += 32;		//conversion from uppercase to lowercase
		if (cy >= 65 && cy <= 90) cy += 32;		//conversion from uppercase to lowercase
		if (cx != cy) return 0;			//comparison of the two letters
		x++;
		y--;
	}
	return 1;
}
