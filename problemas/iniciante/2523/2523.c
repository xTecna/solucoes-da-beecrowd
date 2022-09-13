#include <stdio.h>

int main()
{
    int N, letra;
    char lampadas[27];

    while (scanf("%s\n", &lampadas) != EOF)
    {
        scanf("%d\n", &N);

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &letra);
            printf("%c", lampadas[letra - 1]);
        }
        scanf("\n");
        printf("\n");
    }

    return 0;
}