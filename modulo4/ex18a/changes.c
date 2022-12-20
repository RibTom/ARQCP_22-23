
void changes(int *ptr){
	int y=*ptr;
	y=y>>8;		//shifts y 8 its to the right
	int x = 0b00000000000000000000000011111111;		//mask
	int o = 0b00000000111111110000000000000000;		//mask

	x=x&y;		//applies x mask to y, only first 8 bits remain unchanged
	
	if(x>15){		//if these 8 bits are greater than 15
		*ptr=*ptr^o;		//apply 0 mask with xor to *ptr, inverting 3rd byte
		}
}
