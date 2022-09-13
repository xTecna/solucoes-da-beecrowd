#include <stdio.h>
#include <math.h>

void swap(int *a, int *b)
{
    int tmp = *a;
    *a = *b;
    *b = tmp;
}

int testaLado(int a, int b, int c)
{
    return abs(b - c) < a && a < b + c;
}

int triangulo(int a, int b, int c)
{
    return testaLado(a, b, c) && testaLado(b, a, c) && testaLado(c, a, b);
}

char *classificacao(int a, int b, int c)
{
    if (a == b && b == c)
    {
        return "Equilatero";
    }
    if (a == b || a == c || b == c)
    {
        return "Isoceles";
    }
    return "Escaleno";
}

int retangulo(int a, int b, int c)
{
    return a % 3 == 0 && b % 4 == 0 && c % 5 == 0;
}

int main()
{
    int A, B, C;

    scanf("%d %d %d\n", &A, &B, &C);

    if (A > B)
    {
        swap(&A, &B);
    }
    if (B > C)
    {
        swap(&B, &C);
        if (A > B)
        {
            swap(&A, &B);
        }
    }

    if (triangulo(A, B, C))
    {
        printf("Valido-%s\n", classificacao(A, B, C));
        printf("Retangulo: %c\n", retangulo(A, B, C) ? 'S' : 'N');
    }
    else
    {
        printf("Invalido\n");
    }

    return 0;
}