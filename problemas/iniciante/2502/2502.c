#include <stdio.h>
#include <ctype.h>

int main()
{
    int C, N;
    char cifra1[21], cifra2[21], traducao[256];

    while (scanf("%d %d\n", &C, &N) != EOF)
    {
        for (int i = 32; i < 123; ++i)
        {
            traducao[i] = i;
        }

        scanf("%[^\n]\n", &cifra1);
        scanf("%[^\n]\n", &cifra2);

        for (int i = 0; i < C; ++i)
        {
            char maiuscula1 = cifra1[i], minuscula1 = isalpha(cifra1[i]) ? tolower(cifra1[i]) : cifra1[i];
            char maiuscula2 = cifra2[i], minuscula2 = isalpha(cifra2[i]) ? tolower(cifra2[i]) : cifra2[i];

            traducao[maiuscula1] = maiuscula2;
            traducao[minuscula1] = minuscula2;
            traducao[maiuscula2] = maiuscula1;
            traducao[minuscula2] = minuscula1;
        }

        for (int i = 0; i < N; ++i)
        {
            char letra;
            while (scanf("%c", &letra) != EOF)
            {
                if (letra == '\n')
                {
                    break;
                }

                printf("%c", traducao[letra]);
            }
            printf("\n");
        }
        printf("\n");
    }

    return 0;
}