#include <stdio.h>
#include <string.h>

int main(void) {
    int N;
    int parcelas[3];
    char linha[15], parcelas_string[3][4];

    scanf("%d\n", &N);
    for (int k = 0; k < N; ++k) {
        scanf("%s\n", linha);

        strncpy(parcelas_string[0], linha + 2, 2);
        parcelas_string[0][2] = '\0';
        strncpy(parcelas_string[1], linha + 5, 3);
        parcelas_string[1][3] = '\0';
        strncpy(parcelas_string[2], linha + 11, 2);
        parcelas_string[2][2] = '\0';

        int resposta = 0;
        for (int i = 0; i < 3; ++i) {
            sscanf(parcelas_string[i], "%d", &parcelas[i]);
            resposta += parcelas[i];
        }

        printf("%d\n", resposta);
    }

    return 0;
}