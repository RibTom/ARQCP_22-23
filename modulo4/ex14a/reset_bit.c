
int reset_bit(int *ptr, int pos){
	int aux=*ptr;
	int x =1;
	x=x<<pos;		//shifts x first bit to the left pos times
	aux=aux>>pos;		//shifts aux bits to the right pos times
	if((aux & 1)==1){	//1 ^ 1 =1  1 ^ 0 =0  if in order to find out what bit is in pos
		*ptr=*ptr^x;	//applies mask x in order to change bit in pos from 1 to 0
		return 1;
	}else{	
		return 0;
	}
}
