#include <stdio.h>

int main()
{
    int N, I, identificador, j;

    while (scanf("%d %d", &N, &I) != EOF)
    {
        int gameplays = 0;
        for (int i = 0; i < N; ++i)
        {
            scanf("%d %d", &identificador, &j);

            if (identificador == I && j == 0)
            {
                ++gameplays;
            }
        }

        printf("%d\n", gameplays);
    }

    return 0;
}