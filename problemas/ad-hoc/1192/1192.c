#include <stdio.h>
#include <ctype.h>

int main()
{
    char linha[4];
    int N, digito1, digito2;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%s", &linha);

        digito1 = linha[0] - '0';
        digito2 = linha[2] - '0';

        if (digito1 == digito2)
        {
            printf("%d\n", digito1 * digito2);
        }
        else if (isupper(linha[1]))
        {
            printf("%d\n", digito2 - digito1);
        }
        else
        {
            printf("%d\n", digito1 + digito2);
        }
    }

    return 0;
}
