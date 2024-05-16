#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>
using namespace std;

int main()
{
    char bof0[] = "abc";
    char bof1[] = "123";
    strcpy(bof1, "BBBAHIII");
    cout << bof1 << endl;
    cout << bof0 << endl;

    return 0;
}