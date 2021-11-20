#include <string.h>
#include <stdio.h>

int main(){
    int frequencias[101];
    int K, N, P, resposta;

    while(scanf("%d %d", &N, &K)){
        if(!N && !K)    break;

        resposta = 0;
        memset(frequencias, 0, sizeof(frequencias));

        for(int i = 0; i < N; ++i){
            scanf("%d", &P);

            frequencias[P]++;
            if(frequencias[P] == K) ++resposta;
        }

        printf("%d\n", resposta);
    }

    return 0;
}
