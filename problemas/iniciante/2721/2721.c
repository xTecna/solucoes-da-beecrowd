#include <stdio.h>

int main()
{
    int A, soma;
    char *renas[9] = {"Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"};

    soma = 0;
    for (int i = 0; i < 9; ++i)
    {
        scanf("%d", &A);
        soma += A;
    }

    printf("%s\n", renas[soma % 9]);

    return 0;
}