#include <stdio.h>

int main()
{
    int N, X, in;

    scanf("%d", &N);

    in = 0;
    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &X);

        if (10 <= X && X <= 20)
        {
            ++in;
        }
    }

    printf("%d in\n%d out\n", in, N - in);

    return 0;
}