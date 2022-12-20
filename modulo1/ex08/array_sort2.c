#include <stdio.h>
void array_sort2(int *vec, int n){ //function uses bubble sort in order to sort vec in ascending form
int temp;
int *vec2=vec;
for(int i=0;i<n-1;i++){ //loop until n-1 because the last number to be sorted will already be in place at the end of both for's
	for(int j=0;j<n-i-1;j++){ //after each cycle of the second for, i numbers from the array will already be sorted at the end of the array
		if(*vec>*(vec+1)){
			temp=*(vec+1); //temp variable in order to store *(vec+1) value which is lost in the the next line
			*(vec+1)=*vec;
			*vec=temp; //*vec and *(vec+1) switch places
			vec++;
			}
		}
	vec=vec2; //repeat process of second for, from the beginning of the array | The biggest numbers "float" to the top with each cycle of the second for
	}
for(int i=0;i<n;i++){
	printf("%d ",*(vec+i));
	}
}