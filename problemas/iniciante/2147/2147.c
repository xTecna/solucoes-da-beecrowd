#include <string.h>
#include <stdio.h>

int main()
{
    int C;
    char galopeira[10001];

    scanf("%d\n", &C);
    for (int i = 0; i < C; ++i)
    {
        scanf("%s\n", &galopeira);
        printf("%.2f\n", 0.08 + 0.01 * (strlen(galopeira) - 8));
    }

    return 0;
}