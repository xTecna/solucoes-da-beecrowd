#include <stdio.h>

int main()
{
    int n, t, v;

    scanf("%d\n", &n);

    int resposta = 0;
    for (int i = 0; i < n; ++i)
    {
        scanf("%d %d\n", &t, &v);
        resposta += t * v;
    }
    printf("%d\n", resposta);

    return 0;
}