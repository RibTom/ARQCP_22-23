main: main.o distance.o
	gcc main.o distance.o -o main

main.o: main.c distance.h
	gcc -Wall -g -c main.c -o main.o

distance.o: distance.c
	gcc -Wall -g -c distance.c -o distance.o

run: main
	./main

clean:
	rm *.o main


