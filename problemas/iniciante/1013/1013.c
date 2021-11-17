#include <stdio.h>
#include <stdlib.h>

int maior(int a, int b)
{
    return (a + b + abs(a - b)) / 2;
}

int main()
{
    int a, b, c, resposta;

    scanf("%d %d %d", &a, &b, &c);

    resposta = maior(a, maior(b, c));

    printf("%d eh o maior\n", resposta);

    return 0;
}