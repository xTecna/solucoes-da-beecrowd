#include <string.h>
#include <stdio.h>

int main(){
    char linhas[50][51];
    int N, n, maior, first;

    first = 1;
    while(scanf("%d\n", &N)){
        if(!N)  break;

        if(first)   first = 0;
        else        printf("\n");

        maior = 0;
        for(int i = 0; i < N; ++i){
            scanf("%s\n", &linhas[i]);
            maior = maior < strlen(linhas[i]) ? strlen(linhas[i]) : maior;
        }

        for(int i = 0; i < N; ++i){
            n = strlen(linhas[i]);
            for(int j = 0; j < maior - n; ++j)  printf(" ");
            printf("%s\n", linhas[i]);
        }
    }

    return 0;
}
