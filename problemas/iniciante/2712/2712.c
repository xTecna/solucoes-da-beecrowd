#include <string.h>
#include <stdio.h>
#include <ctype.h>

int valido(char *placa)
{
    if (strlen(placa) != 8)
    {
        return 0;
    }

    for (int i = 0; i < 3; ++i)
    {
        if (!isupper(placa[i]))
        {
            return 0;
        }
    }

    if (placa[3] != '-')
    {
        return 0;
    }

    for (int i = 4; i < 8; ++i)
    {
        if (!isdigit(placa[i]))
        {
            return 0;
        }
    }

    return 1;
}

char *diaDaSemana(char *placa)
{
    switch (digitoFinal)
    {
    case '1':
    case '2':
        return "MONDAY";
    case '3':
    case '4':
        return "TUESDAY";
    case '5':
    case '6':
        return "WEDNESDAY";
    case '7':
    case '8':
        return "THURSDAY";
    case '9':
    case '0':
        return "FRIDAY";
    }
}

int main()
{
    int N;
    char S[101];

    scanf("%d\n", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%[^\n]\n", &S);

        if (valido(S))
        {
            printf("%s\n", diaDaSemana(S));
        }
        else
        {
            printf("FAILURE\n");
        }
    }

    return 0;
}