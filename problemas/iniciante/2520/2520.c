#include <stdio.h>
#include <math.h>

int distanciaManhattan(int x1, int y1, int x2, int y2)
{
    return abs(x1 - x2) + abs(y1 - y2);
}

int main()
{
    int N, M, numero, x1, y1, x2, y2;

    while (scanf("%d %d", &N, &M) != EOF)
    {
        for (int i = 0; i < N; ++i)
        {
            for (int j = 0; j < M; ++j)
            {
                scanf("%d", &numero);

                if (numero == 1)
                {
                    x1 = i;
                    y1 = j;
                }
                else if (numero == 2)
                {
                    x2 = i;
                    y2 = j;
                }
            }
        }

        printf("%d\n", distanciaManhattan(x1, y1, x2, y2));
    }

    return 0;
}