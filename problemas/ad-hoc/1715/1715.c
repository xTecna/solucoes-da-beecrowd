#include <string.h>
#include <stdio.h>

int main(){
    int N, M, gols, resposta, jogadores[101];

    scanf("%d %d", &N, &M);

    memset(jogadores, 0, sizeof(jogadores));

    for(int i = 0; i < N; ++i){
        for(int j = 0; j < M; ++j){
            scanf("%d", &gols);

            if(gols > 0) jogadores[i] += 1;
        }
    }

    resposta = 0;
    for(int i = 0; i < N; ++i){
        if(jogadores[i] == M) ++resposta;
    }

    printf("%d\n", resposta);

    return 0;
}
