#include <stdio.h>

int max(int a, int b)
{
    return a < b ? b : a;
}

int main()
{
    int hora, minuto;

    while (scanf("%d:%d\n", &hora, &minuto) != EOF)
    {
        int total = hora * 60 + minuto;
        printf("Atraso maximo: %d\n", max(0, total + 60 - 8 * 60));
    }

    return 0;
}