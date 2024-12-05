#include <stdio.h>

int main(){
    int N, atual;

    scanf("%d\n", &N);

    int resposta = 0;
    int anterior = -1;
    for(int i = 0; i < N; ++i){
        scanf("%d\n", &atual);

        if(atual != anterior){
            anterior = atual;
            ++resposta;
        }
    }

    printf("%d\n", resposta);

    return 0;
}