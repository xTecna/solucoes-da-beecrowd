#include <stdio.h>

int main()
{
    int n;
    char grito[100000];

    scanf("%d\n", &n);

    for (int i = 0; i < n; ++i)
    {
        grito[i] = 'a';
    }
    grito[n] = '\0';

    printf("Ent%so eh N%st%sl!\n", grito, grito, grito);

    return 0;
}