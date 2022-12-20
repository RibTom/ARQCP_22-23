typedef union {
int a;
char b;
short c;
long int d;
}unionB;

typedef struct {
short int a[3];
char b;
long long int c;
short d;
char e;
unionB ub;
}structA;

char return_unionB_b(structA **matrix, int i, int j);