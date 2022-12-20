typedef struct{
	int size;
	long *l;
}stack;

void push(stack *st,long num);

long pop(stack *st);
