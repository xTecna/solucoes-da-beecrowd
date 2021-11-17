#include <stdio.h>

void swap(int *a, int *b)
{
    int aux = *a;
    *a = *b;
    *b = aux;
}

int main()
{
    int a, b, c, A, B, C;

    scanf("%d %d %d", &A, &B, &C);
    a = A, b = B, c = C;

    if (b < a)
        swap(&a, &b);

    if (c < b)
    {
        swap(&b, &c);
        if (b < a)
            swap(&a, &b);
    }

    printf("%d\n%d\n%d\n\n%d\n%d\n%d\n", a, b, c, A, B, C);

    return 0;
}