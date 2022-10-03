#include <stdio.h>

int tempoDecorrido(double angulo)
{
    return angulo * 240;
}

int converte(double angulo)
{
    return (tempoDecorrido(angulo) + tempoDecorrido(90)) % tempoDecorrido(360);
}

int main()
{
    double M;

    while (scanf("%lf", &M) != EOF)
    {
        if (M < 90.0 || M == 360.0)
        {
            printf("Bom Dia!!\n");
        }
        else if (M < 180.0)
        {
            printf("Boa Tarde!!\n");
        }
        else if (M < 270.0)
        {
            printf("Boa Noite!!\n");
        }
        else
        {
            printf("De Madrugada!!\n");
        }

        int tempo = converte(M);
        int horas = tempo / 3600;
        tempo %= 3600;
        int minutos = tempo / 60;
        int segundos = tempo % 60;

        printf("%02d:%02d:%02d\n", horas, minutos, segundos);
    }

    return 0;
}