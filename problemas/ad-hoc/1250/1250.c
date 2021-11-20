#include <stdio.h>

int main(){
    char pulo;
    int N, T, atingido, tiros[50];

    scanf("%d", &N);

    for(int k = 0; k < N; ++k){
        scanf("%d", &T);

        for(int i = 0; i < T; ++i){
            scanf("%d", &tiros[i]);
        }
        scanf("\n", &pulo);

        atingido = 0;
        for(int i = 0; i < T; ++i){
            scanf("%c", &pulo);

            if((pulo == 'S' && tiros[i] < 3) || (pulo == 'J' && tiros[i] > 2)){
                ++atingido;
            }
        }

        printf("%d\n", atingido);
    }

    return 0;
}
