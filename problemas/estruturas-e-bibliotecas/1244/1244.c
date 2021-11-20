#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int tam;
char palavras[100][100];

int comp(char *a, char *b)
{
    return strlen(b) - strlen(a);
}

void insertionSort()
{
    char aux[100];

    for (int i = 1; i < tam; ++i)
    {
        int j = i, k = j - 1;

        while (k > -1 && comp(palavras[j], palavras[k]) < 0)
        {
            strcpy(aux, palavras[j]);
            strcpy(palavras[j], palavras[k]);
            strcpy(palavras[k], aux);
            --j, --k;
        }
    }
}

int main()
{
    int N;
    char frase[10000], *ptr;

    scanf("%d\n", &N);

    for (int k = 0; k < N; ++k)
    {
        scanf("%[^\n]\n", &frase);

        tam = 0;
        ptr = strtok(frase, " ");
        while (ptr != NULL)
        {
            strcpy(palavras[tam++], ptr);
            ptr = strtok(NULL, " ");
        }

        insertionSort(&palavras, tam);

        printf("%s", palavras[0]);
        for (int i = 1; i < tam; ++i)
        {
            printf(" %s", palavras[i]);
        }
        printf("\n");
    }

    return 0;
}
