void compress_shorts(short* shorts, int n_shorts, int* integers){
	short *temp=(short *) integers;	   //casting integer into short in order to be able store shorts
	int i=0;
	while(i<n_shorts){   //passes through all shorts and adds them onto equivalent integer array
		*temp=*shorts;
		temp++;
		shorts++;	
		i++;	
	}
}