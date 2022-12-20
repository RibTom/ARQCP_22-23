int rotate_left(int num, int nbits) {
	return (num << nbits)|(num >> (32 - nbits));	//shifts bits to the left and places the nbits that fell off on the last nbits of num
}
