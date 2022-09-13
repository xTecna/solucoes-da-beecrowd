#include <stdlib.h>
#include <stdio.h>

int comp(const void *a, const void *b)
{
    if (*(double *)a > *(double *)b)
    {
        return 1;
    }
    if (*(double *)a < *(double *)b)
    {
        return -1;
    }
    return 0;
}

double notaFinal(double *notas, double dificuldade)
{
    qsort(notas, 7, sizeof(double), comp);

    double soma = 0.0;
    for (int i = 1; i < 6; ++i)
    {
        soma += notas[i];
    }

    return soma * dificuldade;
}

int main()
{
    int N;
    char nome[101];
    double dificuldade, notas[7];

    scanf("%d\n", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%s\n", &nome);
        scanf("%lf\n", &dificuldade);
        scanf("%lf %lf %lf %lf %lf %lf %lf\n", &notas[0], &notas[1], &notas[2], &notas[3], &notas[4], &notas[5], &notas[6]);

        printf("%s %.2lf\n", nome, notaFinal(notas, dificuldade));
    }

    return 0;
}