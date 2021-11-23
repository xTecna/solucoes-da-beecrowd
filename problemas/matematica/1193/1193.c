#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <ctype.h>

int binToDec(char *bin)
{
    int potencia = 1, resposta = 0;

    for (int i = strlen(bin) - 1; i > -1; --i)
    {
        resposta += potencia * (bin[i] - '0');
        potencia *= 2;
    }

    return resposta;
}

char *decToBin(int dec)
{
    int p = 0;
    char temp, *resposta = malloc(100 * sizeof(int));

    while (dec)
    {
        resposta[p++] = (dec % 2) + '0';
        dec /= 2;
    }
    resposta[p] = '\0';

    for (int i = 0; i < p / 2; ++i)
    {
        temp = resposta[i];
        resposta[i] = resposta[p - i - 1];
        resposta[p - i - 1] = temp;
    }

    return resposta;
}

int hexToDec(char *hex)
{
    int potencia = 1, resposta = 0;

    for (int i = strlen(hex) - 1; i > -1; --i)
    {
        if (isalpha(hex[i]))
        {
            resposta += potencia * (hex[i] - 'a' + 10);
        }
        else
        {
            resposta += potencia * (hex[i] - '0');
        }
        potencia *= 16;
    }

    return resposta;
}

char *decToHex(int dec)
{
    int p = 0;
    char temp, *resposta = malloc(100 * sizeof(int));

    while (dec)
    {
        if (dec % 16 > 9)
        {
            resposta[p++] = ((dec % 16) - 10) + 'a';
        }
        else
        {
            resposta[p++] = (dec % 16) + '0';
        }
        dec /= 16;
    }
    resposta[p] = '\0';

    for (int i = 0; i < p / 2; ++i)
    {
        temp = resposta[i];
        resposta[i] = resposta[p - i - 1];
        resposta[p - i - 1] = temp;
    }

    return resposta;
}

char *binToHex(char *bin)
{
    return decToHex(binToDec(bin));
}

char *hexToBin(char *hex)
{
    return decToBin(hexToDec(hex));
}

int main()
{
    int N, dec;
    char X[100], Y[5];

    scanf("%d\n", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%s %s\n", &X, &Y);

        printf("Case %d:\n", i + 1);
        if (strcmp(Y, "bin") == 0)
        {
            printf("%d dec\n", binToDec(X));
            printf("%s hex\n", binToHex(X));
        }
        else if (strcmp(Y, "dec") == 0)
        {
            sscanf(X, "%d", &dec);
            printf("%s hex\n", decToHex(dec));
            printf("%s bin\n", decToBin(dec));
        }
        else
        {
            printf("%d dec\n", hexToDec(X));
            printf("%s bin\n", hexToBin(X));
        }
        printf("\n");
    }

    return 0;
}
