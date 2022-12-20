//Method to copy array
void copy_vec(int *vec1, int *vec2, int n){

for(int i=0;i<n;i++){  //Passes through all positions in both arrays, and copies vec1 values to vec2 one by one
	*vec2=*vec1;
	vec2++;
	vec1++;
}	
}