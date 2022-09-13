#include <stdio.h>

int main()
{
    int C, X, Y;
    char musicas[11][20] = {"PROXYCITY", "P.Y.N.G.", "DNSUEY!", "SERVERS", "HOST!", "CRIPTONIZE", "OFFLINE DAY", "SALT", "ANSWER!", "RAR?", "WIFI ANTENNAS"};

    scanf("%d", &C);
    for (int i = 0; i < C; ++i)
    {
        scanf("%d %d", &X, &Y);
        printf("%s\n", musicas[X + Y]);
    }

    return 0;
}