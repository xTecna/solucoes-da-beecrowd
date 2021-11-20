#include <string.h>
#include <stdio.h>

int main()
{
    char genero, linha[1000];
    int caso, tamanho_desejado, masculino, feminino, tamanho;

    caso = 0;
    while (scanf("%d\n", &tamanho_desejado) != EOF)
    {
        if (caso > 0)
            printf("\n");

        scanf("%[^\n]\n", &linha);

        masculino = feminino = 0;
        for (int i = 0; i < strlen(linha); i += 5)
        {
            tamanho = 10 * (linha[i] - '0') + (linha[i + 1] - '0');
            genero = linha[i + 3];

            if (tamanho == tamanho_desejado)
            {
                if (genero == 'F')
                    ++feminino;
                else
                    ++masculino;
            }
        }

        printf("Caso %d:\n", ++caso);
        printf("Pares Iguais: %d\nF: %d\nM: %d\n", feminino + masculino, feminino, masculino);
    }

    return 0;
}
