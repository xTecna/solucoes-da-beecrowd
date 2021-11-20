#include <stdio.h>

int main()
{
    int N, R, maria, joao;

    while (scanf("%d", &N))
    {
        if (!N)
            break;

        joao = 0;

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &R);

            joao += R;
        }

        maria = N - joao;

        printf("Mary won %d times and John won %d times\n", maria, joao);
    }

    return 0;
}
