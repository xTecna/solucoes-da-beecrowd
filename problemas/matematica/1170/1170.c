#include <stdio.h>
#include <math.h>

int main()
{
    double C;
    int N, resposta;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%lf", &C);

        printf("%d dias\n", (int)ceil(log2(C)));
    }

    return 0;
}
