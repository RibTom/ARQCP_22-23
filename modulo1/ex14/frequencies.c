 void frequencies(float *grades, int n, int *freq){ //function to fill "freq" with the absolute frequency of the integer part of the grades in "grades"
	for(int i=0;i<n;i++){ //passes through every grade in array grades
	*(freq+(int)*(grades+i))=*(freq+(int)*(grades+i))+1; //as it passes through the grades, it progressively adds 1 to the equivalent grade position in "freq" 
	}
}