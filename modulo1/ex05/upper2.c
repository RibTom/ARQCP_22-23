void upper2(char* str) {
	while (*str != '\0') {		//cycle to go through the characters of the string
		if (*str >= 97 && *str <= 122) {		//verification that the character is in lowercase
			*str -= 32;		//conversion of the character to uppercases
		}
		str++;
	}
}
