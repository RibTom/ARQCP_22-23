int activate_bits(int a, int left, int right) {
	int maskL = 0;
	int maskR = 0;
	for (int i = 0; i <= left; i++) {	//creates a mask fully "activated" but the bits to the left of left
		maskL = maskL << 1;
		maskL++;
	}
	maskL = ~maskL;						//inverts the maskL so that only the bits to the left of left are "activated"
	for (int i = 0; i < right; i++) {	//creates a mask with only the bits to the right of right "activated"
		maskR = maskR << 1;
		maskR++;
	}
	return a | (maskL | maskR);			//combines both masks and applys them to a
}
