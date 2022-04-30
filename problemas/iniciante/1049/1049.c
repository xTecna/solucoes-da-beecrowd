#include <string.h>
#include <stdio.h>

int main()
{
    char caracteristicas[3][20];

    for (int i = 0; i < 3; ++i)
    {
        scanf("%s\n", &caracteristicas[i]);
    }

    if (strcmp(caracteristicas[0], "vertebrado") == 0)
    {
        if (strcmp(caracteristicas[1], "ave") == 0)
        {
            if (strcmp(caracteristicas[2], "carnivoro") == 0)
            {
                printf("aguia\n");
            }
            else if (strcmp(caracteristicas[2], "onivoro") == 0)
            {
                printf("pomba\n");
            }
        }
        else if (strcmp(caracteristicas[1], "mamifero") == 0)
        {
            if (strcmp(caracteristicas[2], "onivoro") == 0)
            {
                printf("homem\n");
            }
            else if (strcmp(caracteristicas[2], "herbivoro") == 0)
            {
                printf("vaca\n");
            }
        }
    }
    else if (strcmp(caracteristicas[0], "invertebrado") == 0)
    {
        if (strcmp(caracteristicas[1], "inseto") == 0)
        {
            if (strcmp(caracteristicas[2], "hematofago") == 0)
            {
                printf("pulga\n");
            }
            else if (strcmp(caracteristicas[2], "herbivoro") == 0)
            {
                printf("lagarta\n");
            }
        }
        else if (strcmp(caracteristicas[1], "anelideo") == 0)
        {
            if (strcmp(caracteristicas[2], "hematofago") == 0)
            {
                printf("sanguessuga\n");
            }
            else if (strcmp(caracteristicas[2], "onivoro") == 0)
            {
                printf("minhoca\n");
            }
        }
    }

    return 0;
}