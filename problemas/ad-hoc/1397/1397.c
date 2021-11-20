#include <stdio.h>

int main(){
    int N, A, B, jogador1, jogador2;

    while(scanf("%d", &N)){
        if(!N)  break;

        jogador1 = 0, jogador2 = 0;

        for(int i = 0; i < N; ++i){
            scanf("%d %d", &A, &B);

            if(A > B)       ++jogador1;
            else if(B > A)  ++jogador2;
        }

        printf("%d %d\n", jogador1, jogador2);
    }

    return 0;
}
