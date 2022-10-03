#include <stdio.h>

int min(int r, int g, int b)
{
    if (r <= g && r <= b)
    {
        return r;
    }
    if (g <= b)
    {
        return g;
    }
    return b;
}

int mean(int r, int g, int b)
{
    return (r + g + b) / 3;
}

int max(int r, int g, int b)
{
    if (r >= g && r >= b)
    {
        return r;
    }
    if (g >= b)
    {
        return g;
    }
    return b;
}

int eye(int r, int g, int b)
{
    return 0.3 * r + 0.59 * g + 0.11 * b;
}

int main()
{
    int T, R, G, B;
    char conversao[10];

    while (scanf("%d\n", &T) != EOF)
    {
        for (int i = 1; i <= T; ++i)
        {
            scanf("%s\n", &conversao);
            scanf("%d %d %d\n", &R, &G, &B);

            printf("Caso #%d: ", i);
            if (strcmp(conversao, "eye") == 0)
            {
                printf("%d\n", eye(R, G, B));
            }
            else if (strcmp(conversao, "mean") == 0)
            {
                printf("%d\n", mean(R, G, B));
            }
            else if (strcmp(conversao, "min") == 0)
            {
                printf("%d\n", min(R, G, B));
            }
            else if (strcmp(conversao, "max") == 0)
            {
                printf("%d\n", max(R, G, B));
            }
        }
    }

    return 0;
}