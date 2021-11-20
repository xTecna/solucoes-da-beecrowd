#include <stdio.h>

int respostas[100001];

int max(int a, int b)
{
    return a > b ? a : b;
}

int H(int n)
{
    if (respostas[n] == -1)
    {
        if (n % 2)
            respostas[n] = max(n, H(3 * n + 1));
        else
            respostas[n] = max(n, H(n / 2));
    }

    return respostas[n];
}

int main()
{
    int n;

    respostas[0] = 1;
    respostas[1] = 1;
    for (int i = 2; i < 100001; ++i)
    {
        respostas[i] = -1;
    }

    while (scanf("%d", &n))
    {
        if (!n)
            break;

        printf("%d\n", H(n));
    }

    return 0;
}
