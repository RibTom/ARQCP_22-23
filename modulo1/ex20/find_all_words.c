#include <stdio.h>
#include "find_word.h"
void find_all_words(char* str, char* word, char** addrs) {
	int i = 0;
	while (*word !='\0') {	//counts word size
		word++;
		i++;
	}
	word -= i;
	while(*str!='\0'){	//Will look for words til end of the string
		*addrs=find_word(word,str);	
		addrs++;
		str=find_word(word,str)+i; //will continuosly shorten str size until reaching '\0' through find_word pointer
		
	}
}
