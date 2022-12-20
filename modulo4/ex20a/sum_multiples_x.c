
 int sum_multiples_x(char *vec, int x){
	x=x>>8;		//moves x bits 8 times to the right, placing the second byte first
	int y= 0b00000000000000000000000011111111;	//Mask to get x second byte value
	int sum=0;
	x=x&y;		//applies mask to find second byte value
	while(*vec!='\0'){		//while there are still elementes in vector
		if(*vec%x==0){		//if *vec is multiple of x, the *vec/x should have 0 remainder
			sum=sum+*vec;
		}
		vec++;		//cycles through array
	}
	return sum;
}
