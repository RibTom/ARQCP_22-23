
int count_bits_one(int x){
	int n=0;	//counter
	for(int i=0; i<32;i++){  	//cycles through all 32 bits
		if((x & 1)==1) n++;	//apllied mask 1 which turns all bits to 0 except the first one and compares to 1
		x=x>>1;		//shifts to the right 1 bit
	}
	return n;
}