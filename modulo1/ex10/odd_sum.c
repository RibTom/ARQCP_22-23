int odd_sum(int *p){
	int n= *p;
	p++;
	int sum=0;
	for(int i=0; i<n;i++){ //Passes through n elemnts of the array
		if(*p%2 !=0){ //if in order to find odd numbers
			sum+=*p;
			}
		p++; //goes to next number
		}
	return sum;
}