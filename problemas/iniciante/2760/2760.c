#include <stdio.h>

int main()
{
    char nomes[3][201], n[3][11];

    for (int i = 0; i < 3; ++i)
    {
        scanf("%[^\n]\n", &nomes[i]);
    }

    printf("%s%s%s\n", nomes[0], nomes[1], nomes[2]);
    printf("%s%s%s\n", nomes[1], nomes[2], nomes[0]);
    printf("%s%s%s\n", nomes[2], nomes[0], nomes[1]);

    for (int i = 0; i < 3; ++i)
    {
        strncpy(n[i], nomes[i], 10);
        n[i][10] = '\0';
    }
    printf("%s%s%s\n", n[0], n[1], n[2]);

    return 0;
}