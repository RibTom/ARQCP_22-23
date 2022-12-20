
int join_bits(int a, int b, int pos){

	int x=4294967295; // number that is only 1's in bits
	int y=0;	//number that is only 0's in bits
	
	for(int i=0;i<pos+1;i++){ //for to make mask for b
		x=x<<1;		//places 0's in first half of x
		
		y=y<<1;
		y=y|1;		//places 1's in first half of y
	}
	
	b=b&x;		//applies mask to latter half of b
	a=a&y;		//applies mask to first half of a
	b=b|a;		//joins a and b
	return b;	
}
