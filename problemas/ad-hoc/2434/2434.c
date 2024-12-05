#include <math.h>
#include <stdio.h>

int main(){
    int n, saldo, movimentacao;

    scanf("%d %d\n", &n, &saldo);

    int resposta = saldo;
    for(int i = 0; i < n; ++i){
        scanf("%d\n", &movimentacao);
        saldo += movimentacao;

        resposta = saldo < resposta ? saldo : resposta;
    }

    printf("%d\n", resposta);

    return 0;
}