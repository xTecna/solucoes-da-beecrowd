#include <string.h>
#include <stdio.h>

int main(){
    int participantes[100], problemas[100];
    int N, M, x, condicao1, condicao2, condicao3, condicao4;

    while(scanf("%d %d", &N, &M) != EOF){
        if(!N && !M)    break;

        memset(problemas, 0, sizeof(problemas));
        memset(participantes, 0, sizeof(participantes));

        for(int i = 0; i < N; ++i){
            for(int j = 0; j < M; ++j){
                scanf("%d", &x);

                participantes[i] += x;
                problemas[j] += x;
            }
        }

        condicao1 = condicao2 = condicao3 = condicao4 = 1;
        
        for(int i = 0; i < N; ++i){
            if(participantes[i] == M)   condicao1 = 0;
            if(participantes[i] == 0)   condicao4 = 0;
        }
        
        for(int i = 0; i < M; ++i){
            if(problemas[i] == 0)   condicao2 = 0;
            if(problemas[i] == N)   condicao3 = 0;
        }
        
        printf("%d\n", condicao1 + condicao2 + condicao3 + condicao4);
    }

    return 0;
}
