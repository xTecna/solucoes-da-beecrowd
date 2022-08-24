#include <stdio.h>

int main()
{
    int n, m, aluno;
    double nota, maior;

    scanf("%d", &n);

    maior = 0.0;
    for (int i = 0; i < n; ++i)
    {
        scanf("%d %lf", &m, &nota);

        if (nota > maior)
        {
            maior = nota;
            aluno = m;
        }
    }

    if (maior < 8.0)
    {
        printf("Minimum note not reached\n");
    }
    else
    {
        printf("%d\n", aluno);
    }

    return 0;
}