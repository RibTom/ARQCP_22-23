#include <stdio.h>
#include "asm.h"
int main(){

changes_vec((int[]){0,0xffffffff,0xff,0xff0fffff,0xff8fffff,0xff7f0fff,0x700000,0x800000},8);
}
