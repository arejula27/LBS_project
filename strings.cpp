#include <stdio.h>
#include <stdlib.h>
int main(int argc, const char *argv[])
{
    char bof1[] = "BBBB";
    char bof2[] = "AAAA";
    printf("%x  %x  %x %x\n", &bof2[0]);
    return 0;
}