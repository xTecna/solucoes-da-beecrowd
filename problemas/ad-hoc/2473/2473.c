#include <string.h>
#include <stdio.h>

int main()
{
    int x, resposta;
    int dezenas[100];

    memset(dezenas, 0, sizeof(dezenas));

    for (int i = 0; i < 6; ++i)
    {
        scanf("%d", &x);
        dezenas[x] = 1;
    }

    resposta = 0;
    for (int i = 0; i < 6; ++i)
    {
        scanf("%d", &x);
        if (dezenas[x] == 1)
            ++resposta;
    }

    switch (resposta)
    {
    case 3:
        printf("terno\n");
        break;
    case 4:
        printf("quadra\n");
        break;
    case 5:
        printf("quina\n");
        break;
    case 6:
        printf("sena\n");
        break;
    default:
        printf("azar\n");
        break;
    }

    return 0;
}
