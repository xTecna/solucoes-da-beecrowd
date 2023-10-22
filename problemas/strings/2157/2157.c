#include <math.h>
#include <stdio.h>

int main(void) {
    int i, j, k, C, B, E;
    char sequencia[200000];

    scanf("%d\n", &C);
    for (i = 0; i < C; ++i) {
        scanf("%d %d\n", &B, &E);

        int pos = 0;
        for (j = B; j <= E; ++j) {
            int numero = j;
            int digitos = floor(log10(numero)) + 1;
            for (k = digitos - 1; k > -1; --k) {
                sequencia[pos + k] = (numero % 10) + '0';
                numero /= 10;
            }
            pos += digitos;
        }
        for (j = 0; j < pos; ++j) {
            sequencia[2 * pos - j - 1] = sequencia[j];
        }
        sequencia[2 * pos] = '\0';

        printf("%s\n", sequencia);
    }

    return 0;
}