#include <stdio.h>

int main() {
    int C, N;

    scanf("%d\n", &C);
    for(int i = 0; i < C; ++i){
        scanf("%d\n", &N);

        if(N > 8000){
            printf("Mais de 8000!\n");
        }else{
            printf("Inseto!\n");
        }
    }

    return 0;
}