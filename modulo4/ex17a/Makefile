main: main.o greater_date.o
	gcc main.o greater_date.o -o main

main.o: main.c greater_date.h
	gcc -Wall -g -c main.c -o main.o

greater_date.o: greater_date.c
	gcc -Wall -g -c greater_date.c -o greater_date.o

run: main
	./main

clean:
	rm *.o main


