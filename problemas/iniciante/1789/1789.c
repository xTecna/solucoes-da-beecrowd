#include <stdio.h>

int main()
{
    int L, V, maior;

    while (scanf("%d", &L) != EOF)
    {
        scanf("%d", &maior);

        for (int i = 1; i < L; ++i)
        {
            scanf("%d", &V);

            if (V > maior)
            {
                maior = V;
            }
        }

        if (maior < 10)
        {
            printf("1\n");
        }
        else if (maior < 20)
        {
            printf("2\n");
        }
        else
        {
            printf("3\n");
        }
    }

    return 0;
}