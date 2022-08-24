#include <stdio.h>

int fazTriangulo(int a, int b, int c)
{
    return (abs(b - c) < a && a < b + c && abs(a - c) < b && b < a + c && abs(a - b) < c && c < a + b);
}

int main()
{
    int A, B, C, D;

    scanf("%d %d %d %d", &A, &B, &C, &D);

    int resposta = fazTriangulo(A, B, C) || fazTriangulo(A, B, D) || fazTriangulo(A, C, D) || fazTriangulo(B, C, D);

    printf("%c\n", resposta ? 'S' : 'N');

    return 0;
}