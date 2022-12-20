main: main.o rotate_left.o rotate_right.o
	gcc main.o rotate_left.o rotate_right.o -o main

main.o: main.c rotate_left.h rotate_right.h
	gcc -Wall -g -c main.c -o main.o

rotate_left.o: rotate_left.c
	gcc -Wall -g -c rotate_left.c -o rotate_left.o

rotate_right.o: rotate_right.c
	gcc -Wall -g -c rotate_right.c -o rotate_right.o

run: main
	./main

clean:
	rm *.o main


