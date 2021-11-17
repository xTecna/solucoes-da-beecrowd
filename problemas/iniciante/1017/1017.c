#include <stdio.h>

int main()
{
    int tempo, velocidade, distancia;
    double litros;

    scanf("%d\n%d", &tempo, &velocidade);

    distancia = velocidade * tempo;
    litros = distancia / 12.0;

    printf("%.3lf\n", litros);

    return 0;
}