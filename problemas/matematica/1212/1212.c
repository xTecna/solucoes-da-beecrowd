#include <stdio.h>

int main()
{
    int a, b, carry, resposta;

    while (scanf("%d %d", &a, &b))
    {
        if (!a && !b)
            break;

        carry = 0;
        resposta = 0;
        while (a && b)
        {
            if (a % 10 + b % 10 + carry > 9)
            {
                carry = 1;
                ++resposta;
            }
            else
            {
                carry = 0;
            }

            a /= 10;
            b /= 10;
        }

        while (a)
        {
            if (a % 10 + carry > 9)
            {
                carry = 1;
                ++resposta;
            }
            else
            {
                carry = 0;
            }

            a /= 10;
        }

        while (b)
        {
            if (b % 10 + carry > 9)
            {
                carry = 1;
                ++resposta;
            }
            else
            {
                carry = 0;
            }

            b /= 10;
        }

        if (resposta == 0)
            printf("No carry operation.\n");
        else if (resposta == 1)
            printf("%d carry operation.\n", resposta);
        else
            printf("%d carry operations.\n", resposta);
    }

    return 0;
}
