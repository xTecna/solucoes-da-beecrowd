#include <limits.h>
#include <stdio.h>

int main()
{
    int i, N, maior, maior_pos;

    maior = INT_MIN;
    for (i = 1; i <= 100; ++i)
    {
        scanf("%d", &N);
        if (N > maior)
        {
            maior = N;
            maior_pos = i;
        }
    }

    printf("%d\n%d\n", maior, maior_pos);

    return 0;
}