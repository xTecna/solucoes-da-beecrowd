#include <stdio.h>
#include <math.h>

double dist(int x1, int y1, int x2, int y2)
{
    return sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
}

int main()
{
    int Xf, Yf, Xi, Yi, Vi, R1, R2;

    while (scanf("%d %d %d %d %d %d %d\n", &Xf, &Yf, &Xi, &Yi, &Vi, &R1, &R2) != EOF)
    {
        double distancia = dist(Xf, Yf, Xi, Yi);
        double distancia_percorrida = Vi * 1.5;

        if (distancia + distancia_percorrida <= R1 + R2)
        {
            printf("Y\n");
        }
        else
        {
            printf("N\n");
        }
    }

    return 0;
}