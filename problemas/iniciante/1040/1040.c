#include <stdio.h>

int main()
{
    double nota[4], exame, media;

    for (int i = 0; i < 4; ++i)
    {
        scanf("%lf", &nota[i]);
    }

    media = (2 * nota[0] + 3 * nota[1] + 4 * nota[2] + 1 * nota[3]) / 10.0;
    printf("Media: %.1lf\n", media);

    if (media >= 7.0)
    {
        printf("Aluno aprovado.\n");
    }
    else if (media < 5.0)
    {
        printf("Aluno reprovado.\n");
    }
    else
    {
        printf("Aluno em exame.\n");

        scanf("%lf", &exame);
        printf("Nota do exame: %.1lf\n", exame);

        media = (media + exame) / 2.0;

        if (media >= 5.0)
            printf("Aluno aprovado.\n");
        else
            printf("Aluno reprovado.\n");

        printf("Media final: %.1lf\n", media);
    }

    return 0;
}