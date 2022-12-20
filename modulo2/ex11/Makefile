main: main.o asm.o
	gcc main.o asm.o -o main

main.o: main.c asm.h
	gcc -Wall -g -c main.c -o main.o

asm.o: asm.s
	gcc -Wall -g -c asm.s -o asm.o

run: main
	./main

clean:
	rm *.o main