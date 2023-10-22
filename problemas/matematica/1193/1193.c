#include <ctype.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int valor(char simbolo) {
    if (isalpha(simbolo)) {
        return simbolo - 'a' + 10;
    } else {
        return simbolo - '0';
    }
}

char simbolo(int valor) {
    if (valor > 9) {
        return valor - 10 + 'a';
    } else {
        return valor + '0';
    }
}

int converteParaDecimal(char *numero, int base) {
    int potencia = 1, resposta = 0;

    for (int i = strlen(numero) - 1; i > -1; --i) {
        resposta += valor(numero[i]) * potencia;
        potencia *= base;
    }

    return resposta;
}

char *converteDeDecimal(int decimal, int base) {
    int posicao = 0;
    int digitos = floor(log(decimal) / log(base)) + 2;
    char *numero = (char *)malloc(digitos * sizeof(char));

    while (decimal > 0) {
        numero[posicao++] = simbolo(decimal % base);
        decimal /= base;
    }
    for (int i = 0; i < posicao / 2; ++i) {
        char temp = numero[i];
        numero[i] = numero[posicao - i - 1];
        numero[posicao - i - 1] = temp;
    }
    numero[posicao] = '\0';

    return numero;
}

int main(void) {
    int N;
    char numero[100], base[100];

    scanf("%d\n", &N);
    for (int k = 1; k <= N; ++k) {
        scanf("%s %s\n", numero, base);

        printf("Case %d:\n", k);
        if (strcmp(base, "bin") == 0) {
            int dec = converteParaDecimal(numero, 2);
            char *hex = converteDeDecimal(dec, 16);
            printf("%d dec\n", dec);
            printf("%s hex\n", hex);
            free(hex);
        } else if (strcmp(base, "dec") == 0) {
            int dec = converteParaDecimal(numero, 10);
            char *hex = converteDeDecimal(dec, 16);
            char *bin = converteDeDecimal(dec, 2);
            printf("%s hex\n", hex);
            printf("%s bin\n", bin);
            free(hex);
            free(bin);
        } else if (strcmp(base, "hex") == 0) {
            int dec = converteParaDecimal(numero, 16);
            char *bin = converteDeDecimal(dec, 2);
                printf("%d dec\n", dec);
                printf("%s bin\n", bin);
                free(bin);
        }
        printf("\n");
    }

    return 0;
}