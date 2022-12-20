int find_matrix(int **m, int y, int k, int num) {
	for (int i = 0; i < y; i++) {					//goes through the matrix lines
		for (int j = 0; j < k; j++) {				//goes through the matrix columns for that line
			if (*(*(m + i) + j) == num) return 1;	//compares each number with num
		}
	}
	return 0;
}
	
