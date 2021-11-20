#include <stdio.h>

int main(){
    int amostras[10001];
    int N, anterior, proximo, picos;

    while(scanf("%d", &N)){
        if(!N)  break;

        for(int i = 0; i < N; ++i){
            scanf("%d", &amostras[i]);
        }

        picos = 0;
        for(int i = 0; i < N; ++i){
            anterior = amostras[((i - 1) + N) % N];
            proximo = amostras[(i + 1) % N];

            if((amostras[i] < anterior && amostras[i] < proximo) || (amostras[i] > anterior && amostras[i] > proximo))  ++picos;
        }

        printf("%d\n", picos);
    }

    return 0;
}
