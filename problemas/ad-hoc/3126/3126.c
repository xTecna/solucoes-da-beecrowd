#include <stdio.h>

int main(){
    int C, numero;

    scanf("%d\n", &C);

    int resposta = 0;
    for(int i = 0; i < C; ++i){
        scanf("%d", &numero);
        resposta += numero;
    }

    printf("%d\n", resposta);

    return 0;
}