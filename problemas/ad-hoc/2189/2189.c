#include <stdio.h>

int main(){
    int n, numero;

    int teste = 1;
    while(1) {
        scanf("%d\n", &n);

        if (n == 0) {
            break;
        }

        int resposta = 0;
        for(int i = 1; i <= n; ++i) {
            scanf("%d", &numero);
            if (i == numero) {
                resposta = numero;
            }
        }

        printf("Teste %d\n%d\n\n", teste, resposta);
        teste += 1;
    }

    return 0;
}