# variaveis
INCLUDES = populate.h check.h inc_nsets.h
SOURCES = populate.c check.c inc_nsets.c main.c
OBJFILES = populate.o check.o inc_nsets.o main.o
EXEC = ex15

# Suffix rules
.SUFFIXES : .c .o

# How to build an object .o from a code file .c ; $< -- file name
.c.o:
	gcc -Wall -g -c $<
	
${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}
	
${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
