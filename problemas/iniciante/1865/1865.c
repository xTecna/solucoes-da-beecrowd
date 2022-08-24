#include <stdio.h>

int main()
{
    char nome[10];
    int N, forca;

    scanf("%d\n", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%s %d\n", &nome, &forca);

        printf("%c\n", strcmp(nome, "Thor") == 0 ? 'Y' : 'N');
    }

    return 0;
}