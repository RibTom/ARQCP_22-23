#include <stdio.h>
char* where_exists(char* str1, char* str2){
	char* start; //variable will hold pointer to the beggining of the first occurence of str1 in str2
	char* firstL= str1; //variable to save str1 initial position
	while(*str2!='\0' && *str1!='\0'){ //if *str1 ever hits its final position, then the first occurence of str1 in str2 has been found | if *str2 ever hits its final position, then the word wasnt found
		if(*str2==*str1){ //if all the letters in the word are found sequentially, *str1 will be '\0'
			if(str1==firstL){ //When the first letter is found, start holds that position because str1 is always changing
				start=str2;
			}
			str2++;
			str1++;															
		}else{ //when letters are different, str1 is refreshed, but str2 moves on to the next letter
			str1=firstL; 
			str2++;
		}	
	}
	if(*str1!='\0' || *firstL==NULL){ // if by the end of the while str1 isnt '\0' then the word wasnt found
		return NULL;
	}
	return start;
}