void upper1(char *str){
	int i=0;
	while(*(str+i)!='\0'){ //Loop passes through all chars of the string
		if(*(str+i)>=97 && *(str+i)<=122){ //values between 97-122 assigned to lowercase letters
			*(str+i)=*(str+i)-32;    //-32 in order to turn in to upper case letters
		}
	i++;
	}
} 
