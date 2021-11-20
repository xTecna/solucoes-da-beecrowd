#include <stdlib.h>
#include <stdio.h>

int main()
{
    long long int hashmat, oponente;

    while (scanf("%lld %lld", &hashmat, &oponente) != EOF)
    {
        printf("%lld\n", hashmat > oponente ? hashmat - oponente : oponente - hashmat);
    }

    return 0;
}
