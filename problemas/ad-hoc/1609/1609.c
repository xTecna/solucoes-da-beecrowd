#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int comp(const void* a, const void* b){
    return *(int*)a - *(int*)b;
}

int main(){
    int T, N, resposta;
    int carneirinhos[10000];

    scanf("%d", &T);

    for(int i = 0; i < T; ++i){
        scanf("%d", &N);

        resposta = 1;
        memset(carneirinhos, 0, sizeof(carneirinhos));

        for(int j = 0; j < N; ++j){
            scanf("%d", &carneirinhos[j]);
        }

        qsort(carneirinhos, N, sizeof(int), comp);

        for(int j = 1; j < N; ++j){
            if(carneirinhos[j - 1] != carneirinhos[j]){
                ++resposta;
            }
        }

        printf("%d\n", resposta);
    }

    return 0;
}
