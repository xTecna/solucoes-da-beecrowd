#include <stdio.h>

int min(int a, int b){
    return a < b ? a : b;
}

int max(int a, int b){
    return a > b ? a : b;
}

int main(){
    int N, resposta;
    int colunas[50001], esquerda[50001], direita[50001];

    scanf("%d", &N);
    for(int i = 0; i < N; ++i){
        scanf("%d", &colunas[i]);
    }

    esquerda[0] = 1;
    for(int i = 1; i < N; ++i){
        esquerda[i] = min(colunas[i], esquerda[i - 1] + 1);
    }

    direita[N - 1] = 1;
    for(int i = N - 2; i > -1; --i){
        direita[i] = min(colunas[i], direita[i + 1] + 1);
    }

    resposta = 0;
    for(int i = 0; i < N; ++i){
        resposta = max(resposta, min(esquerda[i], direita[i]));
    }

    printf("%d\n", resposta);

    return 0;
}
