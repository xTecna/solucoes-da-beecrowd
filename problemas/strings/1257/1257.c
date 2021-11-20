#include <string.h>
#include <stdio.h>

int main(){
    int N, L, hash;
    char frase[51];

    scanf("%d", &N);
    for(int k = 0; k < N; ++k){
        hash = 0;
        scanf("%d\n", &L);

        for(int i = 0; i < L; ++i){
            scanf("%s\n", &frase);

            for(int j = 0; j < strlen(frase); ++j){
                hash += (frase[j] - 'A') + i + j;
            }
        }

        printf("%d\n", hash);
    }

    return 0;
}
