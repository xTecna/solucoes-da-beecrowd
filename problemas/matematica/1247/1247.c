#include <stdio.h>
#include <math.h>

int main()
{
    int D, VF, VG;
    double distanciaGuarda, tempoFugitivo, tempoGuarda;

    while (scanf("%d %d %d", &D, &VF, &VG) != EOF)
    {
        tempoFugitivo = 12.0 / VF;
        distanciaGuarda = sqrt(144 + D * D);
        tempoGuarda = distanciaGuarda / VG;

        printf("%c\n", tempoFugitivo < tempoGuarda ? 'N' : 'S');
    }

    return 0;
}
