int rotate_right(int num, int nbits) {
	return (num >> nbits)|(num << (32 - nbits));	//shifts bits to the right and places the nbits that fell off on the first nbits of num
}
