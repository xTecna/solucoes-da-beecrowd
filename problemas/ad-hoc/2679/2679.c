#include <stdio.h>

int main(){
    int X;

    scanf("%d", &X);

    printf("%d\n", X - (X % 2) + 2);

    return 0;
}
