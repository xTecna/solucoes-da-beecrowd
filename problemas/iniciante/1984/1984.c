#include <string.h>
#include <stdio.h>

int main()
{
    int n;
    char numero[20];

    scanf("%s\n", &numero);

    n = strlen(numero);
    for (int i = 0; i < n / 2; ++i)
    {
        char tmp = numero[i];
        numero[i] = numero[n - i - 1];
        numero[n - i - 1] = tmp;
    }

    printf("%s\n", numero);

    return 0;
}