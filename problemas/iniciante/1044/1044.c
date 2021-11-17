#include <stdio.h>

void swap(int *a, int *b)
{
    int aux = *a;
    *a = *b;
    *b = aux;
}

int main()
{
    int A, B;

    scanf("%d %d", &A, &B);

    if (A < B)
        swap(&A, &B);

    if (A % B)
        printf("Nao sao Multiplos\n");
    else
        printf("Sao Multiplos\n");

    return 0;
}