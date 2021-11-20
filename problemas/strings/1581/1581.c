#include <string.h>
#include <stdio.h>

int main(){
    int N, K, mesmoIdioma;
    char idioma[21], S[21];

    scanf("%d", &N);

    for(int k = 0; k < N; ++k){
        scanf("%d\n", &K);

        mesmoIdioma = 1;
        scanf("%s\n", &idioma);
        for(int i = 1; i < K; ++i){
            scanf("%s\n", &S);

            if(strcmp(idioma, S))   mesmoIdioma = 0;
        }

        if(mesmoIdioma) printf("%s\n", idioma);
        else            printf("ingles\n");
    }

    return 0;
}
