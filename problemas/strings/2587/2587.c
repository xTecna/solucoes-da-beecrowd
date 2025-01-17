#include <string.h>
#include <stdio.h>

int main()
{
    int C, pos1, pos2;
    char palavra1[20], palavra2[20], palavraAtual[20];

    scanf("%d\n", &C);
    for (int k = 0; k < C; ++k)
    {
        scanf("%s %s %s\n", palavra1, palavra2, palavraAtual);

        pos1 = -1;
        pos2 = -1;
        for (int i = 0; i < strlen(palavraAtual); ++i)
        {
            if (palavraAtual[i] == '_')
            {
                if (pos1 == -1)
                {
                    pos1 = i;
                }
                else
                {
                    pos2 = i;
                    break;
                }
            }
        }

        if (palavra1[pos1] == palavra2[pos2] || palavra1[pos2] == palavra2[pos1])
        {
            printf("Y\n");
        }
        else
        {
            printf("N\n");
        }
    }

    return 0;
}