#include <stdio.h>
#include <math.h>

int main()
{
    int T, PA, PB;
    double G1, G2;

    scanf("%d", &T);
    for (int i = 0; i < T; ++i)
    {
        scanf("%d %d %lf %lf", &PA, &PB, &G1, &G2);
        G1 /= 100;
        G2 /= 100;

        int anos;
        for (anos = 1; PA <= PB && anos < 101; ++anos)
        {
            PA += floor(PA * G1);
            PB += floor(PB * G2);
        }

        if (PA <= PB)
        {
            printf("Mais de 1 seculo.\n");
        }
        else
        {
            printf("%d anos.\n", anos - 1);
        }
    }

    return 0;
}