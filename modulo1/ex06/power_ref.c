void power_ref(int* x, int y){ //function calculates x to the power of y
	int k=*x;
	if(y==0){ //if y=0 result is always 0
		*x=1;
	}
	if(y>0){ //if y>0 the loop multiplies *x value by its initial value, y times
		for(int i=1;i<y;i++){
			*x=*x*k;
		}
	}
	if(y<0){ //if y<0, the result is always <1, except when *x=1
		if(*x==1){
			*x=1;
		}else{
			*x=0;
		}
	}
}