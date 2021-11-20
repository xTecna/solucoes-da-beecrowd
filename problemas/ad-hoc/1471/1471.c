#include <string.h>
#include <stdio.h>

int main(){
    int N, R, mergulhador;
    int voluntarios[10001];

    while(scanf("%d %d", &N, &R) != EOF){
        memset(voluntarios, 0, sizeof(voluntarios));

        for(int i = 0; i < R; ++i){
            scanf("%d", &mergulhador);
            voluntarios[mergulhador] = 1;
        }

        if(N == R){
            printf("*\n");
        }else{
            for(int i = 1; i <= N; ++i){
                if(!voluntarios[i]) printf("%d ", i);
            }
            printf("\n");
        }
    }

    return 0;
}
