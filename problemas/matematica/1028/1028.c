#include <stdio.h>

int MDC(int a, int b)
{
    return (b == 0) ? a : MDC(b, a % b);
}

int main()
{
    int N, F1, F2;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &F1, &F2);
        printf("%d\n", MDC(F1, F2));
    }

    return 0;
}
