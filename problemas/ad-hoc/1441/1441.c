#include <stdio.h>

int main()
{
    int n, resposta;

    while (scanf("%d", &n))
    {
        if (!n)
            break;

        resposta = n;
        while (n > 1)
        {
            if (n % 2)
                n = 3 * n + 1;
            else
                n /= 2;
            resposta = n > resposta ? n : resposta;
        }

        printf("%d\n", resposta);
    }

    return 0;
}
