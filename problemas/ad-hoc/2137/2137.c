#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int comp(const void* a, const void* b){
    return strcmp((char*)a, (char*)b);
}

int main(){
    int N;
    char livros[1001][5];

    while(scanf("%d\n", &N) != EOF){
        memset(livros, '\0', sizeof(livros));

        for(int i = 0; i < N; ++i){
            scanf("%s", &livros[i]);
        }

        qsort(livros, N, sizeof(char) * 5, comp);

        for(int i = 0; i < N; ++i){
            printf("%s\n", livros[i]);
        }
    }

    return 0;
}
