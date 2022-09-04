#include <stdio.h>

int diasAteMes[] = {0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335};

int diasAteData(int mes, int dia)
{
    return diasAteMes[mes - 1] + dia;
}

int main()
{
    int mes, dia;

    while (scanf("%d %d\n", &mes, &dia) != EOF)
    {
        int diasAteNatal = diasAteData(12, 25) - diasAteData(mes, dia);

        if (diasAteNatal < 0)
        {
            printf("Ja passou!\n");
        }
        else if (diasAteNatal == 0)
        {
            printf("E natal!\n");
        }
        else if (diasAteNatal == 1)
        {
            printf("E vespera de natal!\n");
        }
        else
        {
            printf("Faltam %d dias para o natal!\n", diasAteNatal);
        }
    }

    return 0;
}