void capitalize (char *str){
	if(*str >= 97 && *str <= 122){  //char interval 97-122 is for decapitalized letters
		*str=*str-32;		//char interval 65-90 is for capitalized letters (subtract 32 and you get equivalent letter, but capitalized)
	}
	str++;
	while(*str!='\0'){
		if(*str==32){  //32 is the char number for space, in order to capitalize only after finding a space
			str++; //position after the space = first letter
			if(*str >= 97 && *str <= 122){
				*str=*str-32;
			}
		}
		str++;
	}
}