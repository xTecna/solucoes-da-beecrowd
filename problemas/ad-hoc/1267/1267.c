#include <string.h>
#include <stdio.h>

int main(){
    int jantares[101];
    int N, D, x, resposta;

    while(scanf("%d %d", &N, &D)){
        if(!N && !D)    break;

        memset(jantares, 0, sizeof(jantares));

        for(int i = 0; i < D; ++i){
            for(int j = 0; j < N; ++j){
                scanf("%d", &x);

                jantares[j] += x;
            }
        }

        resposta = 0;
        for(int i = 0; i < N; ++i){
            if(jantares[i] == D){
                resposta = 1;
                break;
            }
        }

        printf("%s\n", resposta ? "yes" : "no");
    }

    return 0;
}
