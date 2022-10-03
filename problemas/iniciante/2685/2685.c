#include <stdio.h>

int main()
{
    int M;

    while (scanf("%d", &M) != EOF)
    {
        M %= 360;

        if (M < 90)
        {
            printf("Bom Dia!!\n");
        }
        else if (M < 180)
        {
            printf("Boa Tarde!!\n");
        }
        else if (M < 270)
        {
            printf("Boa Noite!!\n");
        }
        else
        {
            printf("De Madrugada!!\n");
        }
    }

    return 0;
}