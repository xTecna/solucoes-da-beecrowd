#include <stdio.h>

int main()
{
    int N, A, B, encaixa;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &A, &B);

        encaixa = 1;
        while (A && B)
        {
            if (A % 10 != B % 10)
            {
                encaixa = 0;
                break;
            }

            A /= 10;
            B /= 10;
        }

        if (B)
            encaixa = 0;

        printf("%s\n", encaixa ? "encaixa" : "nao encaixa");
    }

    return 0;
}
