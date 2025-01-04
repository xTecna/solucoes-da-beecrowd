#include <stdio.h>

int main(){
    int A, B, C, X, Y, Z;

    scanf("%d %d %d\n", &A, &B, &C);
    scanf("%d %d %d\n", &X, &Y, &Z);

    printf("%d\n", (X / A) * (Y / B) * (Z / C));

    return 0;
}