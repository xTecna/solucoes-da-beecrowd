#include <string.h>
#include <stdio.h>
#include <ctype.h>

int main()
{
    int N, T, U;
    char formula[51];
    char perigosos[51][51];

    scanf("%d\n", &N);
    for (int i = 0; i < N; ++i)
    {
        if (i > 0)
        {
            printf("\n");
        }

        scanf("%d\n", &T);
        for (int j = 0; j < T; ++j)
        {
            scanf("%s\n", &perigosos[j]);
        }

        scanf("%d\n", &U);
        for (int j = 0; j < U; ++j)
        {
            scanf("%s\n", &formula);

            int perigoso = 0;
            for (int k = 0; !perigoso && k < T; ++k)
            {
                char *pos = strstr(formula, perigosos[k]);
                while (pos != NULL)
                {
                    int frente = (pos - formula) + strlen(perigosos[k]);

                    if (frente < strlen(formula))
                    {
                        char daFrente = formula[frente - 1];
                        char maisNaFrente = formula[frente];

                        if ((isdigit(daFrente) && !isdigit(maisNaFrente)) || (isupper(daFrente) && isupper(maisNaFrente)) || (islower(frente) && isupper(maisNaFrente)))
                        {
                            perigoso = 1;
                            break;
                        }
                    }
                    else
                    {
                        perigoso = 1;
                        break;
                    }

                    pos = strstr(pos + 1, perigosos[k]);
                }
            }

            printf("%s\n", perigoso ? "Abortar" : "Prossiga");
        }
    }

    return 0;
}