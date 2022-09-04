#include <string.h>
#include <stdio.h>

int main()
{
    char nome[501];

    gets(nome);
    printf("%s\n", strlen(nome) <= 80 ? "YES" : "NO");

    return 0;
}