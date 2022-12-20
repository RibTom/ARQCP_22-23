#include <stdio.h>

char* find_word(char* word, char* initial_addr) {
	int i = 0;
	while (*word != '\0') {			//count word size
		word++;
		i++;
	}
	word -= i;
	char w[i];
	for (int j = 0; j < i; j++) {			//copy the word to a new array lowercasing all the letters
		if (*word >= 65 && *word <= 90) w[j] = *word+32;
		else w[j] = *word;
		word++;
	}
	i = 0;
	while (*initial_addr != '\0') {			//count string size
		initial_addr++;
		i++;
	}
	initial_addr -= i;
	char s[i];
	for (int j = 0; j < i; j++) {			//copy the string to a new array lowercasing all the letters
		if (*initial_addr >= 65 && *initial_addr <= 90) s[j] = *initial_addr+32;
		else s[j] = *initial_addr;
		initial_addr++;
	}
	initial_addr -= i;
	if (sizeof(s) < sizeof(w) || sizeof(w) == 0) return NULL;		//return null if the string is shorter than the word or if the word is empty
	for (int j = 0; j <= sizeof(s)-sizeof(w); j++) {		//cycle through the string until matching the first letter
		if (s[j] == w[0]) {
			char* address = initial_addr+j;
			int k = 1;
			int boolean = 1;
			while (boolean == 1 && k < sizeof(w)) {			//cycle through the rest of the string to see if it matches with the rest of the word
				if (s[j+k] != w[k]) boolean = 0;
				k++;
			}
			if (boolean == 1) return address;
		}
	}
	return NULL;
}
